<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ADproject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h1> NPTEL Exam Registration Form</h1>
      <div>Enrollment no.:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /></div>
      <div>  EmailId:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /></div>
      <div>  First Name:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /></div>
      <div>  Last Name:<asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox><br /></div>
      <div>  <asp:TextBox ID="TextBox5" runat="server" Visible="false" value="5"></asp:TextBox></div>
       <div> <asp:Button ID="Button1" runat="server" Text="Button" /> </div>
</asp:Content>
