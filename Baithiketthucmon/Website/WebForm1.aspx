<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Baithiketthucmon.Website.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
<html>
    <head>
        <title>Báo | About</title>
        <meta name="description" content="This is the description">
        <link rel="stylesheet" href="styles.css" />
        <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
        <body>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TIN_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="410px" Width="898px">
            <Columns>
                <asp:BoundField DataField="TIN_ID" HeaderText="TIN_ID" ReadOnly="True" SortExpression="TIN_ID" />
                <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
                <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
                <asp:BoundField DataField="TACGIA_ID" HeaderText="TACGIA_ID" SortExpression="TACGIA_ID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BaithiASP.NETConnectionString1 %>" DeleteCommand="DELETE FROM [TINTUC] WHERE [TIN_ID] = @TIN_ID" InsertCommand="INSERT INTO [TINTUC] ([TIN_ID], [NOIDUNG], [NGAYGUI], [TACGIA_ID]) VALUES (@TIN_ID, @NOIDUNG, @NGAYGUI, @TACGIA_ID)" ProviderName="<%$ ConnectionStrings:BaithiASP.NETConnectionString1.ProviderName %>" SelectCommand="SELECT [TIN_ID], [NOIDUNG], [NGAYGUI], [TACGIA_ID] FROM [TINTUC]" UpdateCommand="UPDATE [TINTUC] SET [NOIDUNG] = @NOIDUNG, [NGAYGUI] = @NGAYGUI, [TACGIA_ID] = @TACGIA_ID WHERE [TIN_ID] = @TIN_ID">
            <DeleteParameters>
                <asp:Parameter Name="TIN_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TIN_ID" Type="String" />
                <asp:Parameter Name="NOIDUNG" Type="String" />
                <asp:Parameter Name="NGAYGUI" Type="DateTime" />
                <asp:Parameter Name="TACGIA_ID" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NOIDUNG" Type="String" />
                <asp:Parameter Name="NGAYGUI" Type="DateTime" />
                <asp:Parameter Name="TACGIA_ID" Type="String" />
                <asp:Parameter Name="TIN_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </body>
    </head>
</html>
</asp:Content>
