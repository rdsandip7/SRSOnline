<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutError.aspx.cs" Inherits="SRSOnline.Checkout.CheckoutError" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1>Payment Unsuccessful</h1>
    <p></p>
	<table id="ErrorTable">
		<tr>
			<td class="field">Reason:&nbsp;</td>
			<td><%: Request.QueryString.Get("ErrorCode") %></td>
		</tr>
		<tr>
			<td class="field"></td>
			<td><%: Request.QueryString.Get("Desc") %></td>
		</tr>
		<tr>
			<td class="field"></td>
			<td><%: Request.QueryString.Get("Desc2") %></td>
		</tr>
	</table>
    <p></p>
    <p>Your cart has not been charged and your items are still in your cart.</p>
    <a href="<%: ResolveUrl("~/Checkout/CheckoutReview.aspx") %>" class="btn btn-primary">Try again</a>
</asp:Content>
