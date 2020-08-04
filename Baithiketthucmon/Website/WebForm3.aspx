<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Baithiketthucmon.Website.WebForm3" %>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CHUDE_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="316px" Width="944px">
            <Columns>
                <asp:BoundField DataField="CHUDE_ID" HeaderText="CHUDE_ID" ReadOnly="True" SortExpression="CHUDE_ID" />
                <asp:BoundField DataField="TENCD" HeaderText="TENCD" SortExpression="TENCD" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BaithiASP.NETConnectionString1 %>" DeleteCommand="DELETE FROM [CHUDE] WHERE [CHUDE_ID] = @CHUDE_ID" InsertCommand="INSERT INTO [CHUDE] ([CHUDE_ID], [TENCD]) VALUES (@CHUDE_ID, @TENCD)" ProviderName="<%$ ConnectionStrings:BaithiASP.NETConnectionString1.ProviderName %>" SelectCommand="SELECT [CHUDE_ID], [TENCD] FROM [CHUDE]" UpdateCommand="UPDATE [CHUDE] SET [TENCD] = @TENCD WHERE [CHUDE_ID] = @CHUDE_ID">
            <DeleteParameters>
                <asp:Parameter Name="CHUDE_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CHUDE_ID" Type="String" />
                <asp:Parameter Name="TENCD" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENCD" Type="String" />
                <asp:Parameter Name="CHUDE_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </body>
    </head>
</html>
</asp:Content>
