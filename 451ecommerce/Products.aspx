<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="_451ecommerce.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">>
<div>
    <asp:GridView runat="server" ID="ProductList" DataSourceID="getProducts" AutoGenerateColumns="false">
        <Columns>
            <%--<asp:BoundField DataField="product_description" HeaderText="Product"/>--%>
            <asp:HyperLinkField HeaderText="Product" DataTextField="product_name" DataNavigateUrlFields="product_id" DataNavigateUrlFormatString="Product_Details.aspx?product_id={0}"/>
            <asp:BoundField DataField="product_price" DataFormatString="{0:c}" HtmlEncode="false" HeaderText="Price"/>
            <%--<asp:BoundField DataField="img_src" />--%>
        </Columns>

    </asp:GridView>
</div>

    <asp:SqlDataSource ID="getProducts" runat="server" ConnectionString="<%$ ConnectionStrings:matterhorn %>"
        SelectCommand="SELECT product_id, product_name, product_price FROM product">
    </asp:SqlDataSource>
</asp:Content>