<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataEntry.aspx.cs" Inherits="ADPROJECT1.DataEntry" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>
            Data Entry
        </title>
        <style>
            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                height: 33px;
                width: 100%;
                background-color: #696969;
                color: white;
                padding: 20px;
                text-align: center;
                font-size: 21px;
            }
            em{
            font-size: 34px;
            }
            div{
                font-weight: bold;
            }
            .back{
                width:100%;
	height:100vh;
	background-image: linear-gradient(27deg,#00203FFF 30%,#ADEFD1FF 70%);

            }
        </style>
    </head>
    <body class="back">
    <br/><br/><br/><br/>
    <fieldset align="center">
        <legend>
        <em>
            <b>
                Student Details
            </b>
        </em>
    </legend>
        <form id="form1" runat="server">
            <div>
                <div>Enrollment no. : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
                </div>
                <br/>
                <div>First Name : &nbsp; &nbsp; &nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
                </div>
                <br/>
                <div>Last Name : &nbsp;  &nbsp;  &nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
                </div>
                <br/>
                <div>Semester : &nbsp;  &nbsp;  &nbsp; &nbsp; &nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
                </div>
                <br/>
                <div>DBMS : &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp; &nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
                </div>
                <br/>
                <div>DS : &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
                </div>
                <br/>
                <div>AEM : &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp; <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
                </div>
                <br/>
                <div><asp:Button ID="Button1" runat="server" Text="Submit" /></div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADentryConnectionString %>" SelectCommand="SELECT * FROM [RegEntry]"></asp:SqlDataSource>
                </div>
        </form>
        </fieldset>
        <div class="footer">
            &copy; By Students of Semester 4-B Institute Of Computer Technology, Ganapt University
        </div>
    </body>
</html>
