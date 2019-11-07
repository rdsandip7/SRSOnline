<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutComplete.aspx.cs" Inherits="SRSOnline.Checkout.CheckoutComplete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="center-bl">
        <h1>Checkout Complete</h1>
        <p></p>
        <h3>Payment Transaction ID:</h3>
        <asp:Label ID="ResultLabel" Text="" runat="server" />
        <p></p>
        <h3>Thank You!</h3>
        <p></p>
        <hr />
        <asp:Button ID="Continue" runat="server" Text="Continue Shopping" CssClass="btn btn-primary" OnClick="Continue_Click" />

    </div>


</asp:Content>
