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
    public partial class CheckoutStart : System.Web.UI.Page
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
                    ShoppingCartTitle.InnerText = "Shopping Cart is Empty";
                    //UpdateBtn.Visible = false;
                }
            }

        }
        public List<CartItem> GetShoppingCartItems()
        {
            ShoppingCartActions actions = new ShoppingCartActions();
            return actions.GetCartItems();
        }

        protected void CheckoutConfirm_Click(object sender, EventArgs e)
        {
            Session["userCheckoutCompleted"] = "true";
            Response.Redirect("~/Checkout/CheckoutReview.aspx");
        }
    }
}
