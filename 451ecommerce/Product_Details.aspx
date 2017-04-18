<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product_Details.aspx.cs" Inherits="_451ecommerce.Product_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="center">
    <asp:GridView
     ID="ProductDetailsView"
     DataSourceID="ProductView"
     AutoGenerateColumns="False"
     runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
       
     <Columns>
         <asp:BoundField DataField="product_name" HeaderText="Name"/>
         <asp:BoundField DataField="product_description" HeaderText="Description"/>
         <asp:BoundField DataField="product_price" DataFormatString="{0:c}" HtmlEncode="false" HeaderText="Price"/>
         <asp:ImageField AccessibleHeaderText="product_image" ></asp:ImageField>
     </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
    </div>
<asp:SqlDataSource ID="ProductView"
     ConnectionString="<%$ ConnectionStrings:matterhorn %>"
     SelectCommand="SELECT product_name,product_price,product_description FROM product WHERE product_id=@product_id"
     runat="server">
     <SelectParameters>
         <asp:QueryStringParameter Name="product_id"
              QueryStringField="product_id" />
     </SelectParameters>
</asp:SqlDataSource>

</asp:Content>
