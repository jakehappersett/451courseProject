<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="_451ecommerce.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">&nbsp;
    
<%--<asp:GridView runat="server" ID="ProductList" DataSourceID="getProducts" AutoGenerateColumns="false" CssClass="center">
        <Columns>
            <%--<asp:BoundField DataField="product_description" HeaderText="Product"/>
            <asp:HyperLinkField HeaderText="Product" DataTextField="product_name" DataNavigateUrlFields="product_id" DataNavigateUrlFormatString="Product_Details.aspx?product_id={0}"/>
            <asp:BoundField DataField="product_price" DataFormatString="{0:c}" HtmlEncode="false" HeaderText="Price"/>
            <%--<asp:BoundField DataField="product_image" />
        </Columns>

    </asp:GridView>--%>
    <div style="position:center;">
    <asp:DataList ID="dl_product" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl='<%#"Images/"+Eval("product_image") + ".JPG"%>' Height="120px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; padding:10px;">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; padding:10px;">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Product_Details.aspx?product_id=" + Eval("product_id") %>'>Click To Buy</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
        </div>


    <asp:SqlDataSource ID="getProducts" runat="server" ConnectionString="<%$ ConnectionStrings:matterhorn %>"
        SelectCommand="SELECT product_id, product_name, product_price FROM product">
    </asp:SqlDataSource>
</asp:Content>