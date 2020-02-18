<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ADproject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 >Result</h1>
    <div>Enrollment no. : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /></div>
    <div>First Name: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /></div>
    <div>Last Name: <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /></div>
    <div>Semester: <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /></div>
    <div>Subject1: <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /></div>
    <div>Subject2: <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br /></div>
    <div>Subject3: <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br /></div>
    <div><asp:Button ID="Button1" runat="server" Text="Button" /></div>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
       ConnectionString="<%$ ConnectionStrings:ADConnectionString %>" 
       SelectCommand="SELECT * FROM [reg]"></asp:SqlDataSource>
    
</asp:Content>
