<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SRSOnline.Views.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <!-- catg header banner section -->
    <section id="aa-catg-head-banner">
        <img src="/img/fashion-header-bg-8.jpg" alt="fashion img">
        <div class="aa-catg-head-banner-area">
            <div class="container">
                <div class="aa-catg-head-banner-content">
                    <h2>Contact</h2>
                    <ol class="breadcrumb">
                        <li>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Views/Default.aspx" runat="server">Home</asp:HyperLink></li>
                        <li class="active">Contact</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- / catg header banner section -->
    <!-- start contact section -->
    <section id="aa-contact">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-contact-area">
                        <div class="aa-contact-top">
                            <h2>We are wating to assist you..</h2>
                            <p>Any problem you have we can assist you. Just visit to our store today or fill the form below</p>
                        </div>
                        <!-- contact map -->
                        <div class="aa-contact-map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3332.5716700758385!2d151.3738747151968!3d-33.356138380801035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b72cc7f8482de0f%3A0xd985581fe2c40bbc!2sOurimbah%20Campus!5e0!3m2!1sen!2sau!4v1567992524890!5m2!1sen!2sau" width="100%" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>

                        </div>
                        <!-- Contact address -->
                        <div class="aa-contact-address">
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="aa-contact-address-left">
                                       
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Name" class="form-control"></asp:TextBox>

                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:TextBox ID="TextBox2" runat="server" type="email" placeholder="Email" class="form-control"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Subject" class="form-control"></asp:TextBox>

                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <input type="text" placeholder="Company" class="form-control">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox4" runat="server" class="form-control" Rows="3" placeholder="Message"></asp:TextBox>

                                            </div>
                                            <asp:Button ID="Button1" runat="server" class="aa-secondary-btn" Text="Send" />

                                        
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="aa-contact-address-right">
                                        <address>
                                            <asp:Label ID="Label1" runat="server" Text="SRS Online Store"></asp:Label>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum modi dolor facilis! Nihil error, eius.</p>
                                            <p><span class="fa fa-home"></span>Q-10, Loop Rd & The Boulevarde, Ourimbah NSW 2258</p>
                                            <p><span class="fa fa-phone"></span>+61 02123456</p>
                                            <p><span class="fa fa-envelope"></span>Email: info@srsonlinestore.com.au</p>
                                        </address>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
