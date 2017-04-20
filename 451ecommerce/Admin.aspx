﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="_451ecommerce.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="content">
    
        <asp:GridView
        id="grdProducts"
        DataSourceID="product"
        DataKeyNames="product_id"
        AutoGenerateEditButton="true"
        AutoGenerateDeleteButton="true"
        AutoGenerateColumns="false"
        CssClass="customers" 
        Runat="server" CellPadding="1" CellSpacing="1">
        <Columns>
            <asp:BoundField
                DataField="product_id"
                ReadOnly="true"
                HeaderText="ID" />
            <asp:BoundField
                DataField="product_name"
                HeaderText="Name" />
            <asp:BoundField
                DataField="product_price"
                HeaderText="Price" />
            <asp:BoundField
                DataField="product_description"
                HeaderText="description" />
            <asp:BoundField
                DataField="product_rating"
                HeaderText="Rating" />
        </Columns>
        </asp:GridView>

         <fieldset>
            <legend>Add Product</legend>
            <asp:DetailsView
                id="dtlProduct"
                DataSourceID="product"
                DefaultMode="Insert"
                AutoGenerateInsertButton="true"
                AutoGenerateRows="false"
                Runat="server" CellPadding="1" CellSpacing="1">
                <Fields>
                    <asp:BoundField
                        DataField="product_id"
                        HeaderText="ID:" />
                    <asp:BoundField
                        DataField="product_name"
                        HeaderText="Name:" />
                    <asp:BoundField
                        DataField="product_price"
                        HeaderText="Price:" />
                    <asp:BoundField
                        DataField="product_description"
                        HeaderText="Description:" />
                    <asp:BoundField
                        DataField="product_rating"
                        HeaderText="Rating:" />
                </Fields>
            </asp:DetailsView>
        </fieldset>

        <asp:ObjectDataSource
            id="product"
            TypeName="_451ecommerce.BusinessLogicLayer.Product"
            SelectMethod="SelectAll"
            UpdateMethod="Update"
            InsertMethod="Insert"
            DeleteMethod="Delete"
            Runat="server" />
    </div>
</asp:Content>
