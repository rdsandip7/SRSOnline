<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutStart.aspx.cs" Inherits="SRSOnline.Checkout.CheckoutStart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="ShoppingCartTitle" runat="server" class="ContentHead">
        <h1>Shopping Cart Review</h1>
    </div>
    <div class="col-md-12">
        <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4"
            ItemType="SRSOnline.Models.CartItem" SelectMethod="GetShoppingCartItems"
            CssClass="table table-striped table-bordered">
            <Columns>

                <asp:BoundField DataField="ProductID" HeaderText="ID" SortExpression="ProductID" Visible="false" />
                <asp:BoundField DataField="Product.ProductName" HeaderText="Name" />
                <asp:BoundField DataField="Product.UnitPrice" HeaderText="Price (each)" DataFormatString="{0:c}" />
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:TextBox ID="PurchaseQuantity" Width="40" runat="server" Text="<%#: Item.Quantity %>"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Item Total">
                    <ItemTemplate>
                        <%#: String.Format("{0:c}", ((Convert.ToDouble(Item.Quantity)) *  Convert.ToDouble(Item.Product.UnitPrice)))%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Remove Item">
                    <ItemTemplate>
                        <asp:CheckBox ID="Remove" runat="server"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <div>
            <p></p>
            <strong>
                <asp:Label ID="LabelTotalText" runat="server" Text="Order Total: "></asp:Label>
                <asp:Label ID="lblTotal" runat="server" EnableViewState="false"></asp:Label>
            </strong>
        </div>
        <br />
    </div>
    <div class="col-md-12">
        
                        <h3>Shipping Address:</h3>

        <br />

        <asp:Label ID="FirstName" runat="server" Text="FirstName"></asp:Label>

        <asp:TextBox ID ="TBFirstName" runat="server" CssClass="form-control" required></asp:TextBox>
        
        <asp:Label ID="LastName" runat="server" Text="LastName" ></asp:Label>
        <asp:TextBox ID="TBLastName" runat="server" CssClass="form-control"  required></asp:TextBox>

        <asp:Label ID="Phone" runat="server" Text="Phone"></asp:Label>
        <asp:TextBox ID="TBPhone" runat="server" CssClass="form-control" required></asp:TextBox>

        
        <asp:Label ID="Address" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="TBAddress" runat="server" CssClass="form-control" required></asp:TextBox>
        <br />
        <asp:Label ID="City" runat="server" Text="City"></asp:Label>
        <asp:TextBox ID="TBCity" runat="server" CssClass="form-control" required></asp:TextBox>

        <asp:Label ID="State" runat="server" Text="State"></asp:Label>
        <asp:TextBox ID="TBState" runat="server" CssClass="form-control" required></asp:TextBox>

        <asp:Label ID="PostalCode" runat="server" Text="PostalCode"></asp:Label>
        <asp:TextBox ID="TBPostalCode" runat="server" CssClass="form-control" required></asp:TextBox>
        
        <br />
        <asp:Button ID="CheckoutConfirm" runat="server" CssClass="btn btn-success btn-spacing" Text="Complete Order" OnClick="CheckoutConfirm_Click" />

    </div>
</asp:Content>
