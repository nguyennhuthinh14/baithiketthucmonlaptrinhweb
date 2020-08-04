<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Baithiketthucmon.Website.WebForm2" %>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TACGIA_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="300px" Width="956px">
            <Columns>
                <asp:BoundField DataField="TACGIA_ID" HeaderText="TACGIA_ID" ReadOnly="True" SortExpression="TACGIA_ID" />
                <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BaithiASP.NETConnectionString1 %>" DeleteCommand="DELETE FROM [TACGIA] WHERE [TACGIA_ID] = @TACGIA_ID" InsertCommand="INSERT INTO [TACGIA] ([TACGIA_ID], [TENTG], [EMAIL]) VALUES (@TACGIA_ID, @TENTG, @EMAIL)" ProviderName="<%$ ConnectionStrings:BaithiASP.NETConnectionString1.ProviderName %>" SelectCommand="SELECT [TACGIA_ID], [TENTG], [EMAIL] FROM [TACGIA]" UpdateCommand="UPDATE [TACGIA] SET [TENTG] = @TENTG, [EMAIL] = @EMAIL WHERE [TACGIA_ID] = @TACGIA_ID">
            <DeleteParameters>
                <asp:Parameter Name="TACGIA_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TACGIA_ID" Type="String" />
                <asp:Parameter Name="TENTG" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENTG" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="TACGIA_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </body>
    </head>
</html>
</asp:Content>
