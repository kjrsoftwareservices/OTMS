<%@ Page Language="C#" MasterPageFile="~/Issuer/IssuerMasterPage.master" AutoEventWireup="true" CodeFile="frmUpdateProfile.aspx.cs" Inherits="Issuer_frmUpdateProfile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="height: 421px">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Update Profile" Height="411px" 
                    Width="522px" Font-Bold="False" Font-Size="Small">
                    <table class="style1">
                   
                        
                        <tr>
                            <td style="width: 72px; height: 25px;">
                                </td>
                            <td style="width: 93px; height: 25px;">
                                </td>
                            <td style="height: 25px; width: 347px;">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 72px; height: 32px;">
                                </td>
                            <td style="width: 93px; height: 32px; font-size: small;" align="right">
                                <span style="font-weight: normal">First Name:</span></td>
                            <td align="left" style="height: 32px; width: 347px;">
                                <asp:TextBox ID="txtfname" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtfname" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 72px; height: 33px;">
                                </td>
                            <td style="width: 93px; height: 33px; font-size: small;" align="right">
                                <span style="font-weight: normal">Last Name:</span></td>
                            <td align="left" style="height: 33px; font-weight: 700; width: 347px;">
                                <asp:TextBox Class="form-control" ID="txtlname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 72px; ">
                                </td>
                            <td style="width: 93px; font-size: small;" align="right">
                                <span style="font-weight: normal">Phone No:</span></td>
                            <td align="left" style="width: 347px">
                                <asp:TextBox ID="txtPhoneno" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtPhoneno" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtPhoneno" ErrorMessage="10 digits only" 
                                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                </td>
                        </tr>
                         <tr>
                            <td style="width: 72px; ">
                                </td>
                            <td style="width: 93px; font-size: small;" align="right">
                                <span style="font-weight: normal">Email:</span></td>
                            <td align="left" style="width: 347px">
                                <asp:TextBox ID="txtEmail" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="email formate missing" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 72px; height: 29px;">
                                </td>
                            <td style="width: 93px; height: 29px; font-size: small;" align="right">
                                <p>
                                    <span style="font-weight: normal">Address:</span></p>
                            </td>
                            <td align="left" style="height: 29px; width: 347px;">
                                <asp:TextBox ID="txtAddress" Class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 72px; height: 25px;">
                                </td>
                            <td style="width: 93px; height: 25px; font-size: small;" align="right">
                                <span style="font-weight: normal">City:</span></td>
                            <td align="left" style="width: 347px; height: 25px;">
                                <asp:TextBox ID="txtCity" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtCity" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 72px">
                                &nbsp;</td>
                            <td style="width: 93px; font-size: small;" align="right">
                                <span style="font-weight: normal">State:</span></td>
                            <td align="left" style="width: 347px">
                                <asp:TextBox ID="txtState" Class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                <asp:DropDownList ID="ddlState"  Visible="false" Class="form-control" runat="server" AutoPostBack="True" 
                                    Height="18px" onselectedindexchanged="ddlState_SelectedIndexChanged" 
                                    Width="148px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 72px">
                                &nbsp;</td>
                            <td style="width: 93px" align="right">
                                &nbsp;</td>
                            <td align="left" style="width: 347px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 72px">
                                &nbsp;</td>
                            <td style="width: 93px">
                                &nbsp;</td>
                            <td style="width: 347px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 72px">
                                &nbsp;</td>
                            <td style="width: 93px">
                                &nbsp;</td>
                            <td style="width: 347px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 72px">
                                &nbsp;</td>
                            <td style="width: 93px">
                                &nbsp;</td>
                            <td align="left" style="width: 347px">
                                <asp:Button ID="btnDelete" class="btn btn-Danger" runat="server" Font-Bold="True" 
                                    onclick="btnDelete_Click" Text="Update" Width="71px" />
                                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

