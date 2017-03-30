<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product_Details.aspx.cs" Inherits="_451ecommerce.Product_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:GridView
        ID="ProductDetails"
        DataSourceID="matterhorn"
        AutoGenerateColumns="false"
        runat="server">
        <Columns>
            <asp:BoundField
                DataField="product_name"
                HeaderText="Product" />
            <asp:BoundField
                DataField="product_price"
                HeaderText="Price"
                HtmlEncode="false"
                DataFormatString="{0:c}" />
            <asp:BoundField
                DataField="product_description"
                HeaderText="Description" />
            <asp:ImageField
                AccessibleHeaderText="ProductImage"
                DataImageUrlField="product_image">
            </asp:ImageField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource
        ID="srcDetails"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:matterhorn %>"
        SelectCommand="SELECT product_name,product_price,product_description,product_image FROM products WHERE product_id=@product_id">
        <SelectParameters>
            <asp:QueryStringParameter Name="product_id"
                QueryStringField="product_id" />
        </SelectParameters>
    </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
