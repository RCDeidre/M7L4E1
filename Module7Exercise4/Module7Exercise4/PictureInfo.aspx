<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PictureInfo.aspx.cs" Inherits="Module7Exercise4.PictureInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="gvPicture" runat="server">
        <Columns>
            <asp:ImageField DataImageUrlField="ImageUrl" HeaderText="Image" 
                ControlStyle-Width="200" ControlStyle-Height="200"></asp:ImageField>

        </Columns>
    </asp:GridView>
    </div>
        <br />
        <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
    </form>
</body>
</html>
