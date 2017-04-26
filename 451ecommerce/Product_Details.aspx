<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product_Details.aspx.cs" Inherits="_451ecommerce.Product_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <%-- <asp:GridView
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
</asp:GridView>--%>

     <div >
     <asp:DataList ID="dl_prod" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both" >
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <ItemStyle BackColor="White" />
         <ItemTemplate>
             <table style="width:101%; align-content:center; ">
                 <tr>
                     <td rowspan="2" style="width: 263px">
                         <asp:Image ID="Image2" runat="server" ImageUrl='<%# "Images/"+Eval("product_image") + ".JPG" %>' Height="250px" Width="100%" />
                     </td>
                     <td style="padding:10px; font-size:large;">
                         <asp:Label ID="Label1" runat="server" BorderStyle="None" Height="50%" Text='<%# Eval("product_name") %>' Width="50%"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td style="padding:10px;">Price :
                         <asp:Label ID="Label2" runat="server" Text='<%# Eval("product_price") %>'></asp:Label>
                     </td>
                 </tr>
             </table>
         </ItemTemplate>
         <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
     </asp:DataList>
    &nbsp;<asp:Button ID="btnAddToCart" runat="server" OnClick="btnAddToCart_Click" Text="Add To Cart" />
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
