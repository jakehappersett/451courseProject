<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="_451ecommerce.About" %>

<%--<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Bikes</h3>
    <br />
    <h4>(Bike product)</h4>
    <p>(description)</p>
    <br />
    <h4>(Bike product #2)</h4>
    <p>(description)</p>
    <br />
    <h4>(Bike Product #3)</h4>
    <p>(description)</p>
    <br />
    <br />
    <h3>Lights</h3>
    <br />
    <h4>(Light product)</h4>
    <p>(description)</p>
    <br />
    <h4>(Light product #2)</h4>
    <p>(description)</p>
    <br />
    <h4>(Light product #3)</h4>
    <p>(description)</p>
    <br />
    <br />
    <h3>Helmets</h3>
    <br />
    <h4>(Helmet product)</h4>
    <p>(description)</p>
    <br />
    <h4>(Helmet product #2)</h4>
    <p>(description)</p>
    <br />
    <h4>(Helmet product #3)</h4>
    <p>(description)</p>

    <asp:SqlDataSource 
        ID="matterhorn" 
        runat="server"
        SelectCommand="SELECT * from Products"
        ConnectionString="<%$ ConnectionStrings:matterhorn %>">
    </asp:SqlDataSource>


</asp:Content>--%>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">>
    <asp:GridView runat="server" ID="ProductList" DataSourceID="getProducts" AutoGenerateColumns="false">
        <Columns>
            <%--<asp:BoundField DataField="product_description" HeaderText="Product"/>--%>
            <asp:HyperLinkField HeaderText="Product" DataTextField="product_name" DataNavigateUrlFields="product_id" DataNavigateUrlFormatString="Product_Details.aspx?product_id={0}"/>
            <asp:BoundField DataField="product_price" DataFormatString="{0:c}" HtmlEncode="false" HeaderText="Price"/>
            <%--<asp:BoundField DataField="img_src" />--%>
        </Columns>

    </asp:GridView>

    <asp:SqlDataSource ID="getProducts" runat="server" ConnectionString="<%$ ConnectionStrings:matterhorn %>"
        SelectCommand="SELECT product_id, product_name, product_price FROM product"></asp:SqlDataSource>
        <%--SelectCommand="SELECT Product_id,Product_Desc,Price FROM Product"></asp:SqlDataSource>--%>
</asp:Content>