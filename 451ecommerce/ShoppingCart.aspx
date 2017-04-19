<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="_451ecommerce.Cart1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="gvShoppingCart" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="gvShoppingCart_RowCancelingEdit" OnRowDeleting="gvShoppingCart_RowDeleting" OnRowEditing="gvShoppingCart_RowEditing" OnRowUpdating="gvShoppingCart_RowUpdating">
        <Columns>
            <asp:BoundField DataField="product_name" HeaderText="Product Name" ReadOnly="True" />
            <asp:ImageField DataImageUrlField="product_image" DataImageUrlFormatString="&quot;~\Product_Images\{0}&quot;" HeaderText="Image" ReadOnly="True">
            </asp:ImageField>
            <asp:BoundField DataField="product_price" HeaderText="Price" />
            <asp:BoundField DataField="product_quantity" HeaderText="Quantity" />
            <asp:TemplateField HeaderText="Total">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Double.Parse(Eval("product_price").ToString())*Int32.Parse(Eval"product_quantity").ToString()) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
<asp:Label ID="lblGrandTotal" runat="server" Text="GrandTotal" Visible="False"></asp:Label>
</asp:Content>
