<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SRSOnline.Views._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Start slider -->
    <section id="aa-slider">
        <div class="aa-slider-area">
            <div id="sequence" class="seq">
                <div class="seq-screen">
                    <ul class="seq-canvas">
                        <!-- single slide item -->
                        <li>
                            <div class="seq-model">
                                <asp:Image ID="Image1" runat="server" src="/img/1.jpg" alt="Men slide img" />
                            </div>

                            <div class="seq-title">
                                <span data-seq>Save Up to 75% Off</span>
                                <h2 data-seq>Men Collection</h2>
                                <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>

                                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>

                            </div>
                        </li>
                        <!-- single slide item -->
                        <li>
                            <div class="seq-model">

                                <asp:Image ID="Image2" runat="server" src="/img/2.jpg" alt="Wristwatch slide img" />

                            </div>
                            <div class="seq-title">
                                <span data-seq>Save Up to 40% Off</span>
                                <h2 data-seq>Wristwatch Collection</h2>
                                <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                            </div>
                        </li>
                        <!-- single slide item -->
                        <li>
                            <div class="seq-model">

                                <asp:Image ID="Image3" runat="server" src="/img/3.jpg" alt="Women Jeans slide img" />

                            </div>
                            <div class="seq-title">
                                <span data-seq>Save Up to 75% Off</span>
                                <h2 data-seq>Jeans Collection</h2>
                                <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                            </div>
                        </li>
                        <!-- single slide item -->
                        <li>
                            <div class="seq-model">

                                <asp:Image ID="Image4" runat="server" src="/img/4.jpg" alt="Shoes slide img" />


                            </div>
                            <div class="seq-title">
                                <span data-seq>Save Up to 75% Off</span>
                                <h2 data-seq>Exclusive Shoes</h2>
                                <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                            </div>
                        </li>
                        <!-- single slide item -->
                        <li>
                            <div class="seq-model">

                                <asp:Image ID="Image5" runat="server" data-seq src="/img/5.jpg" alt="Male Female slide img" />

                            </div>
                            <div class="seq-title">
                                <span data-seq>Save Up to 50% Off</span>
                                <h2 data-seq>Best Collection</h2>
                                <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- slider navigation btn -->
                <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
                    <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a>
                    <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a>
                </fieldset>
            </div>
        </div>
    </section>
    <!-- / slider -->




    <!-- Products section -->
    <section id="aa-product">
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
                                <a href="/Views/ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                    <image src='/img/<%#:Item.ImagePath%>'
                                        width="100" height="75" border="1" />
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="/Views/ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                    <%#:Item.ProductName%>
                                </a>
                                <br />
                                <span>
                                    <b>Price: </b><%#:String.Format("{0:c}", Item.UnitPrice)%>
                                </span>
                                <br />
                                <a href="/Views/AddToCart.aspx?productID=<%#:Item.ProductID %>">
                                    <span class="ProductListItem">
                                        <b>Add To Cart<b>
                                    </span>
                                </a>
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


        <%--Contact Us Call to Actions--%>
        <asp:HyperLink CssClass="aa-browse-btn" NavigateUrl="~/Views/Contact.aspx" ID="HyperLink1" runat="server">Contact Us<span class="fa fa-long-arrow-right"/></asp:HyperLink>


    </section>
    <!-- / Products section -->
</asp:Content>
