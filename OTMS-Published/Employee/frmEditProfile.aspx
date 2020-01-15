<%@ Page Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="frmEditProfile.aspx.cs" Inherits="Employee_frmEditProfile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
       
        <tr>
            <td align="center" >
                <asp:Panel ID="Panel1" runat="server" GroupingText="Update Profile"  
                    Width="522px">
                    <table class="style1">                    
                       
                       
                         
                        <tr>
                            <td style="width: 124px; height: 32px;">
                                </td>
                            <td style="width: 122px; height: 32px;" align="right">
                                First Name:</td>
                            <td align="left" style="height: 32px; width: 366px;">
                                <asp:TextBox ID="txtfname" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtfname" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 124px; height: 33px;">
                                </td>
                            <td style="width: 122px; height: 33px;" align="right">
                                Last Name:</td>
                            <td align="left" style="height: 33px; font-weight: 700; width: 366px;">
                                <asp:TextBox ID="txtlname" Class="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr> <td colspan="3">&nbsp;</td></tr>
                        <tr>
                            <td style="width: 124px; height: 32px;">
                                </td>
                            <td style="width: 122px; height: 32px;" align="right">
                                Dept Name:</td>
                            <td align="left" style="height: 32px; width: 366px;">
                                <asp:TextBox ID="txtDeptName" Class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr> <td colspan="3">&nbsp;</td></tr>
                        <tr>
                            <td style="width: 124px; height: 24px;">
                                </td>
                            <td style="width: 122px; height: 24px;" align="right">
                                Phone No:</td>
                            <td align="left" style="width: 366px; height: 24px;">
                                <asp:TextBox ID="txtPhoneno" Class="form-control" runat="server"></asp:TextBox>
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
                                Email:</td>
                            <td align="left" style="width: 366px">
                                <asp:TextBox ID="txtEmail" Class="form-control" runat="server"></asp:TextBox>
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
                                    Address:</p>
                            </td>
                            <td align="left" style="height: 29px; width: 366px;">
                                <asp:TextBox ID="txtAddress" Class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 124px; height: 25px;">
                                </td>
                            <td style="width: 122px; height: 25px;" align="right">
                                City:</td>
                            <td align="left" style="width: 366px; height: 25px;">
                                <asp:TextBox ID="txtCity" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtCity" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 124px">
                                &nbsp;</td>
                            <td style="width: 122px" align="right">
                                State:</td>
                            <td align="left" style="width: 366px">
                                <asp:TextBox ID="txtState" Class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                <asp:DropDownList ID="ddlState" Visible="false" Class="form-control" runat="server" AutoPostBack="True" 
                                    Height="18px" onselectedindexchanged="ddlState_SelectedIndexChanged" 
                                    Width="148px">
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

