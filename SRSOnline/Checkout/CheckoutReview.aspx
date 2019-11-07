<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutReview.aspx.cs" Inherits="SRSOnline.Checkout.CheckoutReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <<strong>
            <asp:Label ID="LabelTotalText" runat="server" Text="Order Total: "></asp:Label>
            <asp:Label ID="lblTotal" runat="server" EnableViewState="false"></asp:Label>
        </strong>
        <label for="PaymentSystem_NameText">Name:</label>
        <div>
            <asp:TextBox ID="NameText" runat="server" Text="Arthur Anderson" /></div>
        <label for="PaymentSystem_NumberText">Name:</label>
        <div>
            <asp:TextBox ID="NumberText" runat="server" Text="4444333322221111" /></div>
        <label for="PaymentSystem_ExpiryText">Expiry:</label>
        <div>
            <asp:TextBox ID="ExpiryText" runat="server" Text="2020-11" TextMode="Month" /></div>
        <label for="PaymentSystem_CVCText">Expiry:</label>
        <div>
            <asp:TextBox ID="CVCText" runat="server" Text="123" /></div>
    </div>
    <div>
        <asp:Button ID="PaymentButton" Text="Make payment" runat="server" OnClick="PaymentButton_Click" />
    </div>
</asp:Content>
