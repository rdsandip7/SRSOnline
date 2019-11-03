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
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="aa-product-area">
                            <div class="aa-product-inner">
                                <!-- start prduct navigation -->
                                <ul class="nav nav-tabs aa-products-tab">
                                    <li class="active"><a href="#men" data-toggle="tab">Our Best Selling Products</a></li>

                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <!-- Start men product category -->
                                    <div class="tab-pane fade in active" id="men">
                                        <ul class="aa-product-catg">


                                            <!-- start single product item -->
                                            <li>
                                                <figure>

                                                    <asp:HyperLink CssClass="aa-product-img" ID="HyperLink2" NavigateUrl="/Views/ProductDetails.aspx" runat="server">

                                                        <asp:Image ID="Image6" runat="server" src="/img/polo-shirt-1.png" alt="polo shirt img" />
                                                    </asp:HyperLink>

                                                    <a class="aa-add-card-btn" href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                    <figcaption>
                                                        <h4 class="aa-product-title"><a href="#">Polo T-Shirt</a></h4>
                                                        <span class="aa-product-price">$45.50</span><span class="aa-product-price"><del>$65.50</del></span>
                                                    </figcaption>
                                                </figure>
                                                <div class="aa-product-hvr-content">
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                                </div>
                                                <!-- product badge -->
                                                <span class="aa-badge aa-sale" href="#">SALE!</span>
                                            </li>



                                            <!-- start single product item -->
                                            <li>
                                                <figure>
                                                    <asp:HyperLink CssClass="aa-product-img" ID="HyperLink3" runat="server">

                                                        <asp:Image ID="Image7" runat="server" src="/img/polo-shirt-5.png" alt="polo shirt img" />
                                                    </asp:HyperLink>
                                                    <a class="aa-add-card-btn" href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                    <figcaption>
                                                        <h4 class="aa-product-title"><a href="#">T-Shirt</a></h4>
                                                        <span class="aa-product-price">$45.50</span>
                                                    </figcaption>
                                                </figure>
                                                <div class="aa-product-hvr-content">
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                                </div>
                                                <!-- product badge -->
                                                <span class="aa-badge aa-sold-out" href="#">Sold Out!</span>
                                            </li>


                                            <!-- start single product item -->
                                            <li>
                                                <figure>
                                                    <asp:HyperLink CssClass="aa-product-img" ID="HyperLink4" runat="server">
                                                        <asp:Image ID="Image8" runat="server" src="/img/polo-shirt-4.png" alt="polo shirt img" />
                                                    </asp:HyperLink>
                                                    <a class="aa-add-card-btn" href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                    <figcaption>
                                                        <h4 class="aa-product-title"><a href="#">Polo T-Shirt</a></h4>
                                                        <span class="aa-product-price">$45.50</span><span class="aa-product-price"><del>$65.50</del></span>
                                                    </figcaption>
                                                </figure>
                                                <div class="aa-product-hvr-content">
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                                </div>
                                            </li>



                                            <!-- start single product item -->
                                            <li>
                                                <figure>
                                                    <asp:HyperLink CssClass="aa-product-img" ID="HyperLink5" runat="server">

                                                        <asp:Image ID="Image9" runat="server" src="/img/t-shirt-1.png" alt="polo shirt img" />
                                                    </asp:HyperLink>
                                                    <a class="aa-add-card-btn" href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                    <figcaption>
                                                        <h4 class="aa-product-title"><a href="#">Polo T-Shirt</a></h4>
                                                        <span class="aa-product-price">$45.50</span><span class="aa-product-price"><del>$65.50</del></span>
                                                    </figcaption>
                                                </figure>
                                                <div class="aa-product-hvr-content">
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                                </div>
                                                <!-- product badge -->
                                                <span class="aa-badge aa-hot" href="#">HOT!</span>
                                            </li>



                                            <!-- start single product item -->
                                            <li>
                                                <figure>
                                                    <asp:HyperLink CssClass="aa-product-img" ID="HyperLink6" runat="server">
                                                        <asp:Image ID="Image10" runat="server" src="/img/polo-shirt-1.png" alt="polo shirt img" />
                                                    </asp:HyperLink>

                                                    <a class="aa-add-card-btn" href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                    <figcaption>
                                                        <h4 class="aa-product-title"><a href="#">T-Shirt</a></h4>
                                                        <span class="aa-product-price">$45.50</span>
                                                    </figcaption>
                                                </figure>
                                                <div class="aa-product-hvr-content">
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                                </div>
                                            </li>


                                            <!-- start single product item -->
                                            <li>
                                                <figure>

                                                    <asp:HyperLink CssClass="aa-product-img" ID="HyperLink7" runat="server">
                                                        <asp:Image ID="Image11" runat="server" src="/img/t-shirt-1.png" alt="polo shirt img" />
                                                    </asp:HyperLink>
                                                    <a class="aa-add-card-btn" href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                    <figcaption>
                                                        <h4 class="aa-product-title"><a href="#">Polo T-Shirt</a></h4>
                                                        <span class="aa-product-price">$45.50</span><span class="aa-product-price"><del>$65.50</del></span>
                                                    </figcaption>
                                                </figure>
                                                <div class="aa-product-hvr-content">
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                                </div>
                                            </li>


                                            <!-- start single product item -->
                                            <li>
                                                <figure>
                                                    <asp:HyperLink CssClass="aa-product-img" ID="HyperLink8" runat="server">

                                                        <asp:Image ID="Image12" runat="server" src="/img/polo-shirt-5.png" alt="polo shirt img" />

                                                    </asp:HyperLink>
                                                    <a class="aa-add-card-btn" href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                    <figcaption>
                                                        <h4 class="aa-product-title"><a href="#">Polo T-Shirt</a></h4>
                                                        <span class="aa-product-price">$45.50</span><span class="aa-product-price"><del>$65.50</del></span>
                                                    </figcaption>
                                                </figure>
                                                <div class="aa-product-hvr-content">
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                                </div>
                                                <!-- product badge -->
                                                <span class="aa-badge aa-sale" href="#">SALE!</span>
                                            </li>



                                            <!-- start single product item -->
                                            <li>
                                                <figure>
                                                    <asp:HyperLink CssClass="aa-product-img" ID="HyperLink9" runat="server">

                                                        <asp:Image ID="Image13" runat="server" src="/img/polo-shirt-1.png" alt="polo shirt img" />
                                                    </asp:HyperLink>

                                                    <a class="aa-add-card-btn" onclick="tocart_clicked" href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                    <figcaption>
                                                        <h4 class="aa-product-title"><a href="#">T-Shirt</a></h4>
                                                        <span class="aa-product-price">$45.50</span>
                                                    </figcaption>
                                                </figure>
                                                <div class="aa-product-hvr-content">
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                                </div>
                                                <!-- product badge -->
                                                <span class="aa-badge aa-sold-out" href="#">Sold Out!</span>
                                            </li>
                                        </ul>

                                        <%--Contact Us Call to Actions--%>
                                        <asp:HyperLink CssClass="aa-browse-btn" NavigateUrl="~/Views/ContactUs.aspx" ID="HyperLink1" runat="server">Contact Us<span class="fa fa-long-arrow-right"/></asp:HyperLink>

                                    </div>
                                    <!-- / men product category --> 

                                </div>
                                <!-- quick view modal -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- / Products section -->
</asp:Content>