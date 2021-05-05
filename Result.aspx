<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="ADPROJECT1.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        h1{
            font-family: 'Old English Text MT';
        }
    </style>
    <center>
        <h1> 
            Student Database
        </h1>
    <form runat="server">   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Enrollnment" SortExpression="Enrollnment">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Enrollnment") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Enrollnment") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Firstname" SortExpression="Firstname">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Firstname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Firstname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Lastname" SortExpression="Lastname">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Lastname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Lastname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Semester" SortExpression="Semester">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Semester") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Semester") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DBMS" SortExpression="DBMS">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DBMS") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("DBMS") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DS" SortExpression="DS">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("DS") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("DS") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="AEM" SortExpression="AEM">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("AEM") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("AEM") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NPTEL" SortExpression="NPTEL">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("NPTEL") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("NPTEL") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Emailid" SortExpression="Emailid">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Emailid") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Emailid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="total" SortExpression="total">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("total") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("total") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADentryConnectionString %>" DeleteCommand="DELETE FROM [RegEntry] WHERE [ID] = @ID" InsertCommand="INSERT INTO [RegEntry] ([Enrollnment], [Firstname], [Lastname], [Semester], [DBMS], [DS], [AEM], [NPTEL], [Emailid], [total]) VALUES (@Enrollnment, @Firstname, @Lastname, @Semester, @DBMS, @DS, @AEM, @NPTEL, @Emailid, @total)" SelectCommand="SELECT * FROM [RegEntry]" UpdateCommand="UPDATE [RegEntry] SET [Enrollnment] = @Enrollnment, [Firstname] = @Firstname, [Lastname] = @Lastname, [Semester] = @Semester, [DBMS] = @DBMS, [DS] = @DS, [AEM] = @AEM, [NPTEL] = @NPTEL, [Emailid] = @Emailid, [total] = @total WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Enrollnment" Type="String" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Semester" Type="String" />
            <asp:Parameter Name="DBMS" Type="Int32" />
            <asp:Parameter Name="DS" Type="Int32" />
            <asp:Parameter Name="AEM" Type="Int32" />
            <asp:Parameter Name="NPTEL" Type="Int32" />
            <asp:Parameter Name="Emailid" Type="String" />
            <asp:Parameter Name="total" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Enrollnment" Type="String" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Semester" Type="String" />
            <asp:Parameter Name="DBMS" Type="Int32" />
            <asp:Parameter Name="DS" Type="Int32" />
            <asp:Parameter Name="AEM" Type="Int32" />
            <asp:Parameter Name="NPTEL" Type="Int32" />
            <asp:Parameter Name="Emailid" Type="String" />
            <asp:Parameter Name="total" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
        </form>
        </center>
</asp:Content>
