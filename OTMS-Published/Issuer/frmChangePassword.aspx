<%@ Page Language="C#" MasterPageFile="~/Issuer/IssuerMasterPage.master" AutoEventWireup="true" CodeFile="frmChangePassword.aspx.cs" Inherits="Issuer_frmChangePassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width: 100%">
        <tr>
            <td style="width: 65px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 65px">
                &nbsp;</td>
            <td align="center">
                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 65px; height: 404px;">
                </td>
            <td style="height: 404px">
                <asp:Panel ID="Panel1" runat="server" Font-Size="Medium" 
                    GroupingText="Change Password" Height="332px" Width="534px">
                    <table align="center" style="width: 95%; height: 286px; margin-left: 0px;">
                        <tr>
                            <td style="width: 64px">
                                &nbsp;</td>
                            <td align="center" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 26px; width: 64px">
                            </td>
                            <td align="left" style="height: 26px; width: 212px;padding-bottom:10px;">
                                Current Password</td>
                            <td align="left" style="height: 26px">
                                <asp:TextBox ID="txtPwd" Class="form-control" runat="server" Height="24px" TextMode="Password" 
                                    Width="158px"></asp:TextBox>
                             
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtPwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="height: 26px">
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 2px; width: 64px">
                            </td>
                            <td align="left" style="height: 2px; width: 212px;padding-bottom:10px;">
                                New Password</td>
                            <td align="left" style="height: 2px">
                                <asp:TextBox ID="txtNpwd" Class="form-control" runat="server" Height="24px" TextMode="Password" 
                                    Width="158px"></asp:TextBox>
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtNpwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="height: 2px">
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 29px; width: 64px">
                            </td>
                            <td align="left" style="height: 29px; width: 212px;padding-bottom:10px;">
                                Confirm New Password</td>
                            <td align="left" style="height: 29px">
                                <asp:TextBox ID="txtCNPwd" Class="form-control" runat="server" Height="24px" TextMode="Password" 
                                    Width="158px"></asp:TextBox>
                               
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtCNPwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                               
                            </td>
                            <td style="height: 29px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 64px; height: 24px;">
                                </td>
                            <td style="width: 212px; height: 24px;">
                                </td>
                            <td style="height: 24px">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtNpwd" ControlToValidate="txtCNPwd" 
                                    ErrorMessage="new pwd missmached"></asp:CompareValidator>
                            </td>
                            <td style="height: 24px">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 64px; height: 78px;">
                            </td>
                            <td style="width: 212px; height: 78px;text-align:right">
                                
                                <asp:Button ID="btnSave" class="btn btn-Primary" runat="server" Font-Bold="True" 
                                    onclick="btnSave_Click" Text="Save" Width="74px" />
                            </td>
                            <td align="left" style="height: 78px">
                                &nbsp;
                                <asp:Button ID="btnCancel" class="btn btn-default" runat="server" Font-Bold="True" Text="Cancel" 
                                    Width="74px" onclick="btnCancel_Click" ValidationGroup="g" />
                            </td>
                            <td style="height: 78px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 64px">
                                &nbsp;</td>
                            <td style="width: 212px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                </td>
            <td style="height: 404px">
                </td>
        </tr>
        <tr>
            <td style="width: 65px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

