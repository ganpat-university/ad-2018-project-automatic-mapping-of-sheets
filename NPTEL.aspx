<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NPTEL.aspx.cs" Inherits="ADPROJECT1.NPTEL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        h1{
            font-family:'Old English Text MT';
        }
        em{
            font-size: 32px;
        }
        div{
            font-weight: bold;
        }
        .bordereffect {
	        color: #1abc9c;
	        background-color: Transparent;
	        height: 50px;
	        width: 340px;
	        padding: 10px;
	        border: solid 2px #1abc9c;
	        font-size: 20px;
	        font-weight: lighter;
	        font-family: Consolas;
	        webkit-border-radius: 0px 0px 0px 0px;
	        -moz-border-radius: 0px 0px 0px 0px;
	        border-radius: 0px 0px 0px 0px;
        }

        .bordereffect:hover
        {
	        color: #89cff0;
	        border: solid 5px #89cff0;
	        cursor:pointer;
        }

        .bordereffect:focus
        {

        }
        .bg{
            background-image:linear-gradient(to bottom,#5c258d 20%,#4389a2 80%);
        }
    </style>
    <br /><br /><br /><br /><br /><br />
    <fieldset align="center" >
    <legend>
        <em>
            <b>
                NPTEL Exam Registration Form
            </b>
        </em>
    </legend>
        <form runat="server">
          <div>Enrollment no. : &nbsp;  &nbsp;  &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br /></div>
          <div> &nbsp; &nbsp; EmailId : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br /></div>
          <div>First Name : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br /></div>
          <div>Last Name : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox><br /><br /></div>
          <div>  <asp:TextBox ID="TextBox5" runat="server" Visible="false" value="5"></asp:TextBox></div>
          <div class="box"> 
              <div class="btn btn-one">
                  <span>
                      <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="bordereffect" OnCkick="ButtonClick" OnClick="Button1_Click"/> 
                  </span>
              </div>
          </div>
          </form>
    </fieldset>
</asp:Content>
