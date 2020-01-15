<%@ Page Language="C#" MasterPageFile="~/Supplier/SupplierMaster.master" AutoEventWireup="true" CodeFile="frmChangePassword.aspx.cs" Inherits="Supplier_frmChangePassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 65px">
                &nbsp;</td>
            <td style="width: 526px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 65px">
                &nbsp;</td>
            <td align="center" style="width: 526px">
                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 65px; height: 402px;">
                </td>
            <td style="height: 402px; width: 526px;">
                <asp:Panel ID="Panel1" runat="server" Font-Size="Medium" 
                    GroupingText="Change Password" Height="332px" Width="541px">
                    <table align="center" style="width: 95%; height: 303px; margin-left: 0px;">
                        
                        <tr>
                            <td style="height: 15px; width: 64px">
                            </td>
                            <td align="left" style="height: 15px; width: 212px">
                                Current Password</td>
                            <td align="left" style="height: 15px">
                                <asp:TextBox ID="txtPwd" Class="form-control" runat="server" Height="24px" TextMode="Password" 
                                    Width="158px"></asp:TextBox>
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtPwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="height: 15px" align="left">
                                </td>
                            <td style="height: 15px">
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 9px; width: 64px">
                            </td>
                            <td align="left" style="height: 9px; width: 212px">
                                New Password</td>
                            <td align="left" style="height: 9px">
                                <asp:TextBox ID="txtNpwd" Class="form-control" runat="server" Height="24px" TextMode="Password" 
                                    Width="158px"></asp:TextBox>
                               
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtNpwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="height: 9px" align="left">
                                </td>
                            <td style="height: 9px">
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 1px; width: 64px">
                            </td>
                            <td align="left" style="height: 1px; width: 212px">
                                Confirm New Password</td>
                            <td align="left" style="height: 1px">
                                <asp:TextBox ID="txtCNPwd" Class="form-control" runat="server" Height="24px" TextMode="Password" 
                                    Width="158px"></asp:TextBox>
                              
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtCNPwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                                
                            </td>
                            <td style="height: 1px" align="left">
                                </td>
                            <td style="height: 1px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 64px; height: 25px;">
                                </td>
                            <td style="width: 212px; height: 25px;">
                                </td>
                            <td style="height: 25px">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtNpwd" ControlToValidate="txtCNPwd" 
                                    ErrorMessage="new pwd missmached"></asp:CompareValidator>
                            </td>
                            <td style="height: 25px">
                                </td>
                            <td style="height: 25px">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 64px; height: 64px;">
                            </td>
                            <td style="width: 212px; height: 64px;text-align:right">
                                
                                <asp:Button ID="btnSave" class="btn btn-Primary" runat="server" Font-Bold="True" 
                                    onclick="btnSave_Click" Text="Save" Width="74px" />
                            </td>
                            <td  style="height: 64px">
                                &nbsp;
                                <asp:Button ID="btnCancel" runat="server"   class="btn btn-default" Font-Bold="True" Text="Cancel" 
                                    Width="74px" onclick="btnCancel_Click" ValidationGroup="g" />
                            </td>
                            <td style="height: 64px" align="left">
                                </td>
                            <td style="height: 64px">
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
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                </td>
            <td style="height: 402px">
                </td>
        </tr>
        <tr>
            <td style="width: 65px">
                &nbsp;</td>
            <td style="width: 526px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

