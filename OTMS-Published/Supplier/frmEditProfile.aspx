<%@ Page Language="C#" MasterPageFile="~/Supplier/SupplierMaster.master" AutoEventWireup="true" CodeFile="frmEditProfile.aspx.cs" Inherits="Supplier_frmEditProfile" Title="Untitled Page" %>

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
                            <td style="width: 124px; height: 6px;">
                                </td>
                            <td style="width: 122px; height: 6px;">
                                </td>
                            <td align="left" style="height: 6px; width: 366px;">
                                </td>
                        </tr>
                        
                        <tr>
                            <td style="width: 124px; height: 25px;">
                                </td>
                            <td style="width: 122px; height: 25px;">
                                </td>
                            <td style="height: 25px; width: 366px;">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 124px; height: 32px;">
                                </td>
                            <td style="width: 122px; height: 32px;" align="right">
                                <span style="font-weight: normal">First Name:</span></td>
                            <td align="left" style="height: 32px; width: 366px;">
                                <asp:TextBox Class="form-control" ID="txtfname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtfname" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 124px; height: 33px;">
                                </td>
                            <td style="width: 122px; height: 33px;" align="right">
                                <span style="font-weight: normal">Last Name:</span></td>
                            <td align="left" style="height: 33px; font-weight: 700; width: 366px;">
                                <asp:TextBox  Class="form-control" ID="txtlname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 124px; ">
                                </td>
                            <td style="width: 122px; " align="right">
                                <span style="font-weight: normal">Phone No:</span></td>
                            <td align="left" style="width: 366px">
                                <asp:TextBox Class="form-control" ID="txtPhoneno" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtPhoneno" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtPhoneno" ErrorMessage="10 digits only" 
                                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                </td>
                        </tr>
                         <tr>
                            <td style="width: 124px; ">
                                </td>
                            <td style="width: 122px; " align="right">
                                <span style="font-weight: normal">Email:</span></td>
                            <td align="left" style="width: 366px">
                                <asp:TextBox Class="form-control" ID="txtEmail" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="email formate missing" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 124px; height: 29px;">
                                </td>
                            <td style="width: 122px; height: 29px;" align="right">
                                <p>
                                    <span style="font-weight: normal">Address:</span></p>
                            </td>
                            <td align="left" style="height: 29px; width: 366px;">
                                <asp:TextBox Class="form-control" ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 124px; height: 25px;">
                                </td>
                            <td style="width: 122px; height: 25px;" align="right">
                                <span style="font-weight: normal">City:</span></td>
                            <td align="left" style="width: 366px; height: 25px;">
                                <asp:TextBox Class="form-control" ID="txtCity" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtCity" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 124px">
                                &nbsp;</td>
                            <td style="width: 122px" align="right">
                                <span style="font-weight: normal">State:</span></td>
                            <td align="left" style="width: 366px">
                                <asp:TextBox Class="form-control" ID="txtState" runat="server" ReadOnly="True"></asp:TextBox>
                                &nbsp;
                                <asp:DropDownList Class="form-control" ID="ddlState" runat="server" AutoPostBack="True" 
                                     onselectedindexchanged="ddlState_SelectedIndexChanged" 
                                    >
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 124px">
                                &nbsp;</td>
                            <td style="width: 122px" align="right">
                                &nbsp;</td>
                            <td align="left" style="width: 366px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 124px">
                                &nbsp;</td>
                            <td style="width: 122px">
                                &nbsp;</td>
                            <td style="width: 366px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 124px">
                                </td>
                            <td style="width: 122px">
                                </td>
                            <td style="width: 366px">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 124px">
                                &nbsp;</td>
                            <td style="width: 122px">
                                &nbsp;</td>
                            <td align="left" style="width: 366px">
                                <asp:Button ID="btnDelete" class="btn btn-danger" runat="server" Font-Bold="True" 
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

