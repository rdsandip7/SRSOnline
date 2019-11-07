using SRSOnline.BL;
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
            var paymentObj = Session["ActivePayment"];
            if (paymentObj != null)
            {
                var paymentAction = (PaymentAction)paymentObj;
                var result = paymentAction.GetResult();
                // deal with the result here
                ResultLabel.Text = result.TransactionResult.ToString() + ": recieptId" + result.ReceiptId.ToString();
            }
        }
        protected void Continue_Click(object sender, EventArgs e)
        {
            // Clear shopping cart.
            using (SRSOnline.BL.ShoppingCartActions usersShoppingCart =
                new SRSOnline.BL.ShoppingCartActions())
            {
                usersShoppingCart.EmptyCart();
            }
            Response.Redirect("~/Views/Default.aspx");
        }
    }
}