<%@ Page Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="frmChangePassword.aspx.cs" Inherits="Employee_frmChangePassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table style="width: 100%">
        <tr>
            <td style="width: 65px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 65px">&nbsp;</td>
            <td align="center">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 65px; height: 404px;"></td>
            <td style="height: 404px">
                <asp:Panel ID="Panel1" runat="server" Font-Size="Medium"
                    GroupingText="Change Password" Height="332px" Width="534px">
                    <table align="center" style="width: 97%; height: 280px; margin-left: 0px;">
                        <tr>
                            <td style="width: 64px; height: 24px;"></td>
                            <td align="center" colspan="2" style="height: 24px"></td>
                            <td style="height: 24px"></td>
                        </tr>
                        <tr>
                            <td style="height: 18px; width: 64px"></td>
                            <td align="left" style="height: 18px; width: 212px">Current Password</td>
                            <td align="left" style="height: 18px">
                                <asp:TextBox Class="form-control" ID="txtPwd" runat="server" Height="24px" TextMode="Password"
                                    Width="158px"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="txtPwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="height: 18px"></td>
                        </tr>
                        <tr>
                            <td style="height: 22px; width: 64px"></td>
                            <td align="left" style="height: 22px; width: 212px">New Password</td>
                            <td align="left" style="height: 22px">
                                <asp:TextBox Class="form-control" ID="txtNpwd" runat="server" Height="24px" TextMode="Password"
                                    Width="158px"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="txtNpwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="height: 22px"></td>
                        </tr>
                        <tr>
                            <td style="height: 14px; width: 64px"></td>
                            <td align="left" style="height: 14px; width: 212px">Confirm New Password</td>
                            <td align="left" style="height: 14px">
                                <asp:TextBox Class="form-control" ID="txtCNPwd" runat="server" Height="24px" TextMode="Password"
                                    Width="158px"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                    ControlToValidate="txtCNPwd" ErrorMessage="*"></asp:RequiredFieldValidator>

                            </td>
                            <td style="height: 14px"></td>
                        </tr>
                        <tr>
                            <td style="width: 64px; height: 14px;"></td>
                            <td style="width: 212px; height: 14px;"></td>
                            <td style="height: 14px">
                                <asp:CompareValidator ID="CompareValidator1" runat="server"
                                    ControlToCompare="txtNpwd" ControlToValidate="txtCNPwd"
                                    ErrorMessage="new pwd missmached"></asp:CompareValidator>
                            </td>
                            <td style="height: 14px"></td>
                        </tr>
                        <tr>
                            <td style="width: 64px; height: 68px;"></td>
                            <td style="width: 212px; height: 68px;text-align:right">
                                <asp:Button ID="btnSave" class="btn btn-primary" runat="server" Font-Bold="True"
                                    OnClick="btnSave_Click" Text="Save" Width="74px" />
                            </td>
                            <td align="left" style="height: 68px">&nbsp;
                                <asp:Button ID="btnCancel" class="btn btn-default" runat="server" Font-Bold="True" Text="Cancel"
                                    Width="74px" OnClick="btnCancel_Click" ValidationGroup="g" />
                            </td>
                            <td style="height: 68px"></td>
                        </tr>
                        <tr>
                            <td style="width: 64px">&nbsp;</td>
                            <td style="width: 212px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td style="height: 404px"></td>
        </tr>
        <tr>
            <td style="width: 65px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

