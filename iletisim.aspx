<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/contactpage.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="contacttable">
        <tr>
            <td colspan="3">
                <center>
                <asp:Label ID="contactheader" runat="server" Text="İletişim" BorderStyle="Double" BorderColor="Turquoise" ></asp:Label>
            </center><br /><br /></td>
        </tr>
        <tr>
            <td class="fd">
                <asp:Label ID="Label2" runat="server" Text="Konu"></asp:Label>
            </td>
            <td class="assg">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="must" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="labelnamesurname" runat="server" Text="ad soyad"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxnamesurname" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxnamesurname" ErrorMessage="*" ValidationGroup="must" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="must" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="geçerli e mail giriniz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="must" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="mesaj"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox3" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ValidationGroup="must" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
            </td>
            <td class="auto-style2">
                <asp:Button ID="send" runat="server" Text="Gönder" ValidationGroup="must" OnClick="send_Click" />
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

