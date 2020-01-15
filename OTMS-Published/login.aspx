<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<form id="form1" runat="server">--%>
    <br />
    <br />
    <table style="width: 100%">
        <tr>
            <td align="center">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Login" Width="356px"
                    Font-Bold="True">
                    <table style="width: 99%; height: 238px;" align="left">
                        <tr>
                            <td style="width: 41px">&nbsp;</td>
                            <td style="width: 106px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 41px">&nbsp;</td>
                            <td style="width: 106px; font-size: small">

                                <label for="txtLoginName">Login Name</label>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtLoginName" class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="txtLoginName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px">&nbsp;</td>
                            <td style="width: 106px; font-size: small; color: #000000">
                                <b>Password</b></td>
                            <td align="left">
                                <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px">&nbsp;</td>
                            <td style="width: 106px">&nbsp;</td>
                            <td align="left">
                                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px">&nbsp;</td>
                            <td style="width: 106px">&nbsp;</td>
                            <td align="left">
                                <%--<asp:CheckBox ID="CheckBox1" runat="server" Text="Remeber Me" />--%>
                                <label>
                                    <input type="checkbox" id="CheckBox1" runat="server">
                                    Remember Me
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px">&nbsp;</td>
                            <td style="width: 106px">&nbsp;</td>
                            <td align="left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 41px">&nbsp;</td>
                            <td style="width: 106px">&nbsp;</td>
                            <td align="left">
                                <asp:Button ID="btnLoginIn" runat="server" class="btn btn-primary" OnClick="btnLoginIn_Click"
                                    Text="Login" Font-Bold="True" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px">&nbsp;</td>
                            <td style="width: 106px">&nbsp;</td>
                            <td align="left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 41px">&nbsp;</td>
                            <td style="width: 106px">&nbsp;</td>
                            <td align="left">
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True"
                                    Font-Underline="True" ForeColor="#FF3300"
                                    NavigateUrl="~/frmUserRegistation.aspx" Visible="False">New user sing up</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px">&nbsp;</td>
                            <td style="width: 106px">&nbsp;</td>
                            <td align="left">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    <%-- </form>--%>
</asp:Content>

