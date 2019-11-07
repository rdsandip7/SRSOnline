using SRSOnline.BL;
using SRSOnline.DAL;
using SRSOnline.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SRSOnline.Checkout
{
    public partial class CheckoutReview : System.Web.UI.Page
    {
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
                    LabelTotalText.Text = "";
                    lblTotal.Text = "";
                    
                    //UpdateBtn.Visible = false;
                }
            }
        }

        protected void PaymentButton_Click(object sender, EventArgs e)
        {
            PaymentRequest paymentRequest = new PaymentRequest();
            decimal amount;
            decimal.TryParse(lblTotal.Text, out amount);
            int cvc;
            int.TryParse(CVCText.Text, out cvc);
            paymentRequest.Amount = amount;
            paymentRequest.CardName = NameText.Text;
            paymentRequest.CardNumber = NumberText.Text;
            paymentRequest.CVC = cvc;
            paymentRequest.Description = "Test payment";
            paymentRequest.Expiry = DateTime.Parse(ExpiryText.Text);
            PaymentAction payment = new PaymentAction(paymentRequest);
            payment.StartPayment();
            Session["ActivePayment"] = payment;
            Response.Redirect("~/Checkout/CheckoutComplete.aspx");


        }
    }
}