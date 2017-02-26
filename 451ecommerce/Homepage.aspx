<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="_451ecommerce._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Wheelie Great Bikes</h1>
        <p class="lead">We sell the best bikes there are</p>
        <p><a href="/About" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Product Page</h2>
            <p>
                Wheelie Great Bikes offers a variety of general &amp; specialized biking equipment and accessories.</p>
            <p>
                <a class="btn btn-default" href="/Products">Products</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Are You New? </h2>
            <h2>Sign up/Log In</h2>
            <p>
                To shop with us, we will require your name, mailing address, and payment informaton.
            </p>
            <p>
                <a class="btn btn-default" href="Account/Login">Login </a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Customer Support</h2>
            <p>
                Have any questions about our site? Look here for our contact information.</p>
            <p>
                <a class="btn btn-default" href="/Contact">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
