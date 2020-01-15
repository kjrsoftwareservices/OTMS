<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmUserRegistation.aspx.cs" Inherits="frmUserRegistation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- <form id="form1" runat="server">--%>
    
    <table style="width: 100%; height: 462px;">
        <tr>
            <td style="width: 64px">
                &nbsp;</td>
            <td>
            <br />
                <asp:Panel ID="Panel1" runat="server" Height="400px" 
                    GroupingText="Registration Form" Width="447px">
                    <table style="width: 104%; height: 381px;">
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                FirstName</td>
                            <td>
                                <asp:TextBox ID="txtFName" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtFName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px; height: 23px">
                                &nbsp;</td>
                            <td style="width: 162px; height: 23px">
                                LastName</td>
                            <td style="height: 23px">
                                <asp:TextBox ID="txtLName" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtFName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Gender</td>
                            <td>
                                <asp:RadioButton ID="rbtnMale" runat="server" Text="Male" GroupName="r" />
                                &nbsp;
                                <asp:RadioButton ID="rbtnFemale" runat="server" Text="Female" GroupName="r" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Required User Name</td>
                            <td>
                                <asp:TextBox ID="txtUserName" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtFName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Password</td>
                            <td>
                                <asp:TextBox ID="txtPassword" Class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtFName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Conform Password</td>
                            <td>
                                <asp:TextBox ID="txtCPassword" Class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtFName" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtPassword" ControlToValidate="txtCPassword" 
                                    ErrorMessage="pwd mismatched"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Phone</td>
                            <td>
                                <asp:TextBox ID="txtPhone" Class="form-control" runat="server"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ErrorMessage="10 digits only" ValidationGroup="\d{10)" 
                                    ControlToValidate="txtPhone"></asp:RegularExpressionValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Email</td>
                            <td>
                                <asp:TextBox ID="txtEmail" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtFName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="display:none;">
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Address</td>
                            <td>
                                <asp:TextBox Class="form-control" ID="txtAdress" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px; height: 29px">
                                </td>
                            <td style="width: 162px; height: 29px">
                                City</td>
                            <td style="height: 29px">
                                <asp:TextBox Class="form-control"  ID="txtCity" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtCity" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                State</td>
                            <td>
                                <asp:DropDownList ID="ddlState" Class="form-control" runat="server">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="ddlState" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px; height: 31px;">
                                </td>
                            <td style="width: 162px; height: 31px;">
                                </td>
                            <td style="height: 31px">
                                <asp:Button ID="btnAdd" runat="server" class="btn btn-Primary"  onclick="btnAdd_Click" 
                                    Text="Add"  Font-Bold="True" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnClear" class="btn btn-default" runat="server" onclick="btnClear_Click" Text="Clear" 
                                    ValidationGroup="g" Font-Bold="True" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 46px; height: 28px;">
                                </td>
                            <td style="width: 162px; height: 28px;">
                                </td>
                            <td style="height: 28px">
                                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#FF3399"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                     
                        
                        
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <%--</form>--%>
</asp:Content>

