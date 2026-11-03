using SRSOnline.BL;
using SRSOnline.DAL;
using SRSOnline.Models;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SRSOnline.Checkout
{
    public partial class CheckoutReview : System.Web.UI.Page
    {
        public const string PendingOrderKey = "PendingOrder";

        protected void Page_Load(object sender, EventArgs e)
        {
            using (ShoppingCartActions usersShoppingCart = new ShoppingCartActions())
            {
                decimal cartTotal = 0;
                cartTotal = usersShoppingCart.GetTotal();
                if (cartTotal > 0)
                {
                    // Display Total.
                    lblTotal.Text = String.Format("{0:c}", cartTotal);
                }
                else
                {
                    LabelTotalText.Text = "Your shopping cart is empty.";
                    lblTotal.Text = "";
                    PaymentButton.Visible = false;
                }
            }

            if (!IsPostBack && string.IsNullOrEmpty(EmailText.Text))
            {
                // Logins use the email address as the user name.
                EmailText.Text = User.Identity.Name;
            }
        }

        protected void PaymentButton_Click(object sender, EventArgs e)
        {
            var errors = new List<string>();

            decimal amount;
            using (ShoppingCartActions usersShoppingCart = new ShoppingCartActions())
            {
                // Charge the real cart total, not the formatted label text.
                amount = usersShoppingCart.GetTotal();
            }
            if (amount <= 0)
            {
                errors.Add("Your shopping cart is empty.");
            }

            string cardNumber = Regex.Replace(NumberText.Text, @"[\s-]", "");
            if (!Regex.IsMatch(cardNumber, @"^\d{13,19}$"))
            {
                errors.Add("Card number must be 13 to 19 digits.");
            }

            int cvc;
            if (!Regex.IsMatch(CVCText.Text.Trim(), @"^\d{3,4}$") || !int.TryParse(CVCText.Text.Trim(), out cvc))
            {
                cvc = 0;
                errors.Add("CVC must be 3 or 4 digits.");
            }

            DateTime expiry;
            // "yyyy-MM" comes from the month picker; the others cover browsers that show a plain text box.
            string[] expiryFormats = { "yyyy-MM", "MM/yy", "MM/yyyy", "M/yy", "M/yyyy" };
            if (!DateTime.TryParseExact(ExpiryText.Text.Trim(), expiryFormats, CultureInfo.InvariantCulture, DateTimeStyles.None, out expiry))
            {
                errors.Add("Expiry must be a month and year.");
            }

            if (string.IsNullOrWhiteSpace(NameText.Text))
            {
                errors.Add("Name on card is required.");
            }

            var order = new Order
            {
                OrderDate = DateTime.Now,
                Username = User.Identity.Name,
                FirstName = FirstNameText.Text.Trim(),
                LastName = LastNameText.Text.Trim(),
                Address = AddressText.Text.Trim(),
                City = CityText.Text.Trim(),
                State = StateText.Text.Trim(),
                PostalCode = PostalCodeText.Text.Trim(),
                Country = CountryText.Text.Trim(),
                Phone = PhoneText.Text.Trim(),
                Email = EmailText.Text.Trim(),
                Total = amount
            };
            var validationResults = new List<System.ComponentModel.DataAnnotations.ValidationResult>();
            System.ComponentModel.DataAnnotations.Validator.TryValidateObject(
                order, new System.ComponentModel.DataAnnotations.ValidationContext(order), validationResults, true);
            errors.AddRange(validationResults.Select(r => r.ErrorMessage));

            if (errors.Count > 0)
            {
                ErrorLabel.Text = string.Join("<br />", errors.Select(error => HttpUtility.HtmlEncode(error)));
                return;
            }

            PaymentRequest paymentRequest = new PaymentRequest();
            paymentRequest.Amount = amount;
            paymentRequest.CardName = NameText.Text.Trim();
            paymentRequest.CardNumber = cardNumber;
            paymentRequest.CVC = cvc;
            paymentRequest.Description = "SRSOnline order for " + User.Identity.Name;
            paymentRequest.Expiry = expiry;
            PaymentAction payment = new PaymentAction(paymentRequest);
            payment.StartPayment();
            Session["ActivePayment"] = payment;
            Session[PendingOrderKey] = order;
            Response.Redirect("~/Checkout/CheckoutComplete.aspx");
        }
    }
}
