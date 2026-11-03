<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutReview.aspx.cs" Inherits="SRSOnline.Checkout.CheckoutReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="center-bl">


           <h3>  <asp:Label ID="LabelTotalText" runat="server"  Text="Total Order: "></asp:Label>
             <asp:Label ID="lblTotal" runat="server" EnableViewState="false"> </asp:Label>  </h3>

        <asp:Label ID="ErrorLabel" runat="server" CssClass="text-danger" EnableViewState="false" />

        <h4>Shipping Details</h4>
        <label for="MainContent_FirstNameText">First Name:</label>
        <div>
            <asp:TextBox ID="FirstNameText" runat="server" MaxLength="160" CssClass="form-control" required /></div>
        <label for="MainContent_LastNameText">Last Name:</label>
        <div>
            <asp:TextBox ID="LastNameText" runat="server" MaxLength="160" CssClass="form-control" required /></div>
        <label for="MainContent_AddressText">Address:</label>
        <div>
            <asp:TextBox ID="AddressText" runat="server" MaxLength="70" CssClass="form-control" required /></div>
        <label for="MainContent_CityText">City:</label>
        <div>
            <asp:TextBox ID="CityText" runat="server" MaxLength="40" CssClass="form-control" required /></div>
        <label for="MainContent_StateText">State:</label>
        <div>
            <asp:TextBox ID="StateText" runat="server" MaxLength="40" CssClass="form-control" required /></div>
        <label for="MainContent_PostalCodeText">Postal Code:</label>
        <div>
            <asp:TextBox ID="PostalCodeText" runat="server" MaxLength="10" CssClass="form-control" required /></div>
        <label for="MainContent_CountryText">Country:</label>
        <div>
            <asp:TextBox ID="CountryText" runat="server" MaxLength="40" CssClass="form-control" required /></div>
        <label for="MainContent_PhoneText">Phone:</label>
        <div>
            <asp:TextBox ID="PhoneText" runat="server" MaxLength="24" TextMode="Phone" CssClass="form-control" /></div>
        <label for="MainContent_EmailText">Email:</label>
        <div>
            <asp:TextBox ID="EmailText" runat="server" TextMode="Email" CssClass="form-control" required /></div>

        <h4>Card Details</h4>
        <label for="MainContent_NameText">Name on Card:</label>
        <div>
            <asp:TextBox ID="NameText" runat="server" placeholder="Arthur Anderson" CssClass="form-control" required /></div>
        <label for="MainContent_NumberText">Card Number:</label>
        <div>
            <asp:TextBox ID="NumberText" runat="server" placeholder="4444333322221111" MaxLength="19" CssClass="form-control" required/></div>
        <label for="MainContent_ExpiryText">Expiry:</label>
        <div>
            <asp:TextBox ID="ExpiryText" runat="server" TextMode="Month" CssClass="form-control" required /></div>
        <label for="MainContent_CVCText">CVC:</label>
        <div>
            <asp:TextBox ID="CVCText" runat="server" placeholder="123" MaxLength="4" CssClass="form-control" required /></div>
    </div>
    <div class="center-bl">
        <asp:Button ID="PaymentButton"  CssClass="btn btn-success btn-spacing" Text="Make payment" runat="server" OnClick="PaymentButton_Click"  />
    </div>
</asp:Content>
