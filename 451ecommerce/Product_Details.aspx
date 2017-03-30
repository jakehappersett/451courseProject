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
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource
        ID="matterhorn"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:matterhorn %>"
        SelectCommand="SELECT * FROM products">
    </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
