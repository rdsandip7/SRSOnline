<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutReview.aspx.cs" Inherits="SRSOnline.Checkout.CheckoutReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="center-bl">
       
    
           <h3>  <asp:Label ID="LabelTotalText" runat="server"  Text="Total Order: "></asp:Label>
             <asp:Label ID="lblTotal" runat="server" EnableViewState="false"> </asp:Label>  </h3>
        
        <br />
        <label for="PaymentSystem_NameText">Name:</label>
        <div>
            <asp:TextBox ID="NameText" runat="server" placeholder="Arthur Anderson" CssClass="form-control" required /></div>
        <label for="PaymentSystem_NumberText">Card Number:</label>
        <div>
            <asp:TextBox ID="NumberText" runat="server" placeholder="4444333322221111" CssClass="form-control" required/></div>
        <label for="PaymentSystem_ExpiryText">Expiry:</label>
        <div>
            <asp:TextBox ID="ExpiryText" runat="server" TextMode="Month" CssClass="form-control" required /></div>
        <label for="PaymentSystem_CVCText">CVC:</label>
        <div>
            <asp:TextBox ID="CVCText" runat="server" placeholder="123" CssClass="form-control" required /></div>
    </div>
    <div class="center-bl">                                    
        <asp:Button ID="PaymentButton"  CssClass="btn btn-success btn-spacing" Text="Make payment" runat="server" OnClick="PaymentButton_Click"  />
    </div>
</asp:Content>
