<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="SRSOnline.Admin.AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administration</h1>
    <hr />
    <div class="col-md-6">
        <h3>Add Product:</h3>
        <table>
            <tr>
                <td>
                    <asp:Label ID="LabelAddCategory" runat="server">Category:</asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownAddCategory" CssClass="form-control" runat="server"
                        ItemType="SRSOnline.Models.Category"
                        SelectMethod="GetCategories" DataTextField="CategoryName"
                        DataValueField="CategoryID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelAddName" runat="server">Name:</asp:Label></td>
                <td>
                    <asp:TextBox ID="AddProductName" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" color="red" Text="* Product name required." ControlToValidate="AddProductName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelAddDescription" runat="server">Description:</asp:Label></td>
                <td>
                    <asp:TextBox ID="AddProductDescription" TextMode="multiline" CssClass="form-control" Columns="50" Rows="5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" color="red" runat="server" Text="* Description required." ControlToValidate="AddProductDescription" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelAddPrice" runat="server">Price:</asp:Label></td>
                <td>
                    <asp:TextBox ID="AddProductPrice" runat="server"  TextMode="Number" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" color="red" runat="server" Text="* Price required." ControlToValidate="AddProductPrice" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" color="red" runat="server" Text="* Must be a valid price without $." ControlToValidate="AddProductPrice" SetFocusOnError="True" Display="Dynamic" ValidationExpression="^[0-9]*(\.)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelAddImageFile" runat="server">Image File:</asp:Label></td>
                <td>
                    <asp:FileUpload ID="ProductImage" runat="server" class="file"  />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" color="red" runat="server" Text="* Image path required." ControlToValidate="ProductImage" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <p></p>
        <p></p>
        <asp:Button ID="AddProductButton" runat="server" Text="Add Product" CssClass="btn btn-primary" OnClick="AddProductButton_Click" CausesValidation="true" />
        <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
        <p></p>
        <h3>Remove Product:</h3>
        <table>
            <tr>
                <td>
                    <asp:Label ID="LabelRemoveProduct" runat="server">Product:</asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownRemoveProduct" runat="server" CssClass="form-control" ItemType="SRSOnline.Models.Product"
                        SelectMethod="GetProducts" AppendDataBoundItems="true"
                        DataTextField="ProductName" DataValueField="ProductID">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <p></p>
        <asp:Button ID="RemoveProductButton" runat="server" Text="Remove Product" CssClass="btn btn-danger btn-spacing" OnClick="RemoveProductButton_Click" CausesValidation="false" />
        <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>
    </div>
    <div class="col-md-6">
        <asp:ListView ID="productList" runat="server"
            DataKeyNames="ProductID" GroupItemCount="4"
            ItemType="SRSOnline.Models.Product" SelectMethod="GetProducts">
            <EmptyDataTemplate>
                <table>
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <ItemTemplate>
                <td runat="server">
                    <table>

                        <tr>
                            <td>
                                <a href="<%#: GetRouteUrl("ProductByNameRoute", new {productName = Item.ProductName}) %>">
                                    <%#:Item.ProductName%>
                                </a>
                                <br />
                                <span>
                                    <b>Price: </b><%#:String.Format("{0:c}", Item.UnitPrice)%>
                                </span>
                                <br />
                                

                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    </p>
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table style="width: 100%;">
                    <tbody>
                        <tr>
                            <td>
                                <table id="groupPlaceholderContainer" runat="server" style="width: 100%">
                                    <tr id="groupPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr></tr>
                    </tbody>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    </div>
</asp:Content>
