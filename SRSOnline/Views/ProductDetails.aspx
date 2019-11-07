<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="SRSOnline.Views.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="productDetail" runat="server"
        ItemType="SRSOnline.Models.Product" SelectMethod="GetProduct"
        RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.ProductName %></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                        <img src="/img/<%#:Item.ImagePath %>"
                            style="border: solid; height: 300px" alt="<%#:Item.ProductName %>" />
                    </td>
                    <td>&nbsp;</td>
                    <td style="vertical-align: top; text-align: left;">
                        <b>Description:</b><br />
                        <%#:Item.Description %>
                        <br />
                        <span><b>Price:</b>&nbsp;<%#: String.Format("{0:c}",  Item.UnitPrice) %></span>
                        <br />
                        <span><b>Product Number:</b>&nbsp;<%#:Item.ProductID
                        %></span>
                        <br />
                        <a href="/Views/AddToCart.aspx?productID=<%#:Item.ProductID %>">
                            <span class="ProductListItem">
                                <span class="btn btn-success">Add To Cart</span>
                            </span>
                        </a>
                        <br />
                    </td>
                    
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
