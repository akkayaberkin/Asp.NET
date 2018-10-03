<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rez.aspx.cs" Inherits="rez" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 192px;
        }
        .auto-style2 {
            width: 340px;
        }
        .auto-style3 {
            width: 192px;
            height: 29px;
        }
        .auto-style4 {
            width: 340px;
            height: 29px;
        }
        .auto-style5 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table">
        <tr>
            <td class="age1">&nbsp;</td>
            <td class="aug2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="s1">İsim Soyisim&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="aee2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="must"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="e1">Telefon Numarası&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="ee2">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="must"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="ad3">TC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td class="ae4">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ValidationGroup="must"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="asd">&nbsp;</td>
            <td class="asd">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="ads">&nbsp;</td>
            <td class="sdsd">
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>

