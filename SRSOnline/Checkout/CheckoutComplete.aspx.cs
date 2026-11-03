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
    public partial class CheckoutComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

            var paymentAction = Session["ActivePayment"] as PaymentAction;
            var order = Session[CheckoutReview.PendingOrderKey] as Order;
            // Each payment is processed once; a refresh must not save the order again.
            Session.Remove("ActivePayment");
            Session.Remove(CheckoutReview.PendingOrderKey);

            if (paymentAction == null || order == null)
            {
                Response.Redirect("~/Views/ShoppingCart.aspx");
                return;
            }

            PaymentResult result;
            try
            {
                // will block until the payment system answers
                result = paymentAction.GetResult();
            }
            catch (Exception ex)
            {
                ExceptionUtility.LogException(ex, "CheckoutComplete.aspx");
                RedirectToError(TransactionResult.ConnectionFailure);
                return;
            }

            if (result.TransactionResult != TransactionResult.Approved)
            {
                RedirectToError(result.TransactionResult);
                return;
            }

            SaveOrder(order, result);
            ResultLabel.Text = String.Format("Receipt {0} - {1:c} paid. Order number {2}.",
                result.ReceiptId, result.Amount, order.OrderId);
        }

        // Store the order and its lines, then clear the cart that was paid for.
        private void SaveOrder(Order order, PaymentResult result)
        {
            using (ShoppingCartActions usersShoppingCart = new ShoppingCartActions())
            using (var db = new ProductContext())
            {
                order.PaymentTransactionId = result.ReceiptId.ToString();
                order.Total = result.Amount;
                order.OrderDetails = usersShoppingCart.GetCartItems().Select(item => new OrderDetail
                {
                    Username = order.Username,
                    ProductId = item.ProductId,
                    Quantity = item.Quantity,
                    UnitPrice = item.Product.UnitPrice
                }).ToList();

                db.Orders.Add(order);
                db.SaveChanges();

                usersShoppingCart.EmptyCart();
            }
        }

        private void RedirectToError(TransactionResult transactionResult)
        {
            string description;
            switch (transactionResult)
            {
                case TransactionResult.Declined:
                    description = "Your card was declined. Please use a different card.";
                    break;
                case TransactionResult.InvalidCard:
                    description = "The card details did not match. Check the name, number, expiry and CVC.";
                    break;
                case TransactionResult.InvalidExpiry:
                    description = "This card has expired.";
                    break;
                case TransactionResult.ConnectionFailure:
                    description = "We could not reach the payment system. Please try again.";
                    break;
                default:
                    description = "The payment could not be completed.";
                    break;
            }
            Response.Redirect("~/Checkout/CheckoutError.aspx?ErrorCode=" + HttpUtility.UrlEncode(transactionResult.ToString())
                + "&Desc=" + HttpUtility.UrlEncode(description));
        }

        protected void Continue_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Default.aspx");
        }
    }
}
