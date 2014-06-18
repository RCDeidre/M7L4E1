<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Module7Exercise4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/><br/>
    <div style="text-align:center;font-size:xx-large"> Welcome to my Picture Page!<br /><br /></div>

     <div style="text-align:center"> </div>
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">

<asp:DataList ID="DataListPictures" runat="server" RepeatColumns="3" >
    <ItemTemplate>
 
        <div style="padding:15px,15px,15px,15px">

            <a href='<%# Eval("PictureID","PictureInfo.aspx?pictureID={0}") %>'>
            <asp:Image id="Image1" runat="server" ImageUrl='<%# Eval("ImageUrl") %>'  style="width:50px;height:50px"/>
            </a>
            <br/>
            <b>Name:</b> <%#Eval("Name") %>
            <br/>
            <b>Description:</b> <%#Eval("Description") %>
            <br/><br/>
           
        </div>
        
   </ItemTemplate>
</asp:DataList>
        </asp:Panel>
</asp:Content>
