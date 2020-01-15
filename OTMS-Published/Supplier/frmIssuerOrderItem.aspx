<%@ Page Language="C#" MasterPageFile="~/Supplier/SupplierMaster.master" AutoEventWireup="true" CodeFile="frmIssuerOrderItem.aspx.cs" Inherits="Issuer_frmIssuerOrderItem" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <%--<form id="form1" runat="server">--%>
   <table style="width: 100%">
        <tr>
            <td style="width: 34px">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" GroupingText="OderItem Details" 
                    Width="495px" Height="460px" Font-Bold="True" Font-Size="Large">
                    <table style="width: 86%; height: 438px;">
                        <tr>
                            <td>
                                <asp:Panel ID="Panel2" runat="server" Height="177px" Width="442px" 
                                    GroupingText="Item Details" Font-Size="Small">
                                    <table style="width: 100%">
                                        
                                        <tr>
                                            <td style="width: 97px">
                                                &nbsp;</td>
                                            <td style="width: 130px">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px">
                                                &nbsp;</td>
                                            <td style="width: 130px">
                                                Title</td>
                                            <td>
                                                <asp:Label ID="lblTitle" runat="server" Font-Bold="True" ForeColor="#CC0066" 
                                                    Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px; height: 18px;">
                                                </td>
                                            <td style="height: 18px; width: 130px">
                                                Organigation</td>
                                            <td style="height: 18px">
                                                <asp:Label ID="lblOrganigation" runat="server" Font-Bold="True" 
                                                    ForeColor="#CC0066" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px">
                                                &nbsp;</td>
                                            <td style="width: 130px">
                                                Opening Date</td>
                                            <td>
                                                <asp:Label ID="lblOpenDate" runat="server" Font-Bold="True" ForeColor="#CC0066" 
                                                    Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px">
                                                &nbsp;</td>
                                            <td style="width: 130px">
                                                Expire Date</td>
                                            <td>
                                                <asp:Label ID="lblExpDate" runat="server" Font-Bold="True" 
                                                    ForeColor="#CC0066" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px">
                                                &nbsp;</td>
                                            <td style="width: 130px">
                                                Result Date</td>
                                            <td>
                                                <asp:Label ID="lblResultDate" runat="server" Font-Bold="True" 
                                                    ForeColor="#CC0066" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px">
                                                &nbsp;</td>
                                            <td style="width: 130px">
                                                Minimum Cost</td>
                                            <td>
                                                <asp:Label ID="lblMinCost" runat="server" Font-Bold="True" ForeColor="#CC0066" 
                                                    Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px; height: 18px;">
                                                </td>
                                            <td style="width: 130px; height: 18px;">
                                                </td>
                                            <td style="height: 18px">
                                                </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 106px">
                                <asp:Panel ID="Panel3" runat="server" Height="154px" 
                                    GroupingText="Supplier Details" Font-Size="Small">
                                     <table style="width: 100%; height: 85px;">
                                        
                                        <tr>
                                            <td style="width: 97px">
                                                &nbsp;</td>
                                            <td style="width: 130px">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px">
                                                &nbsp;</td>
                                            <td style="width: 130px">
                                                Name</td>
                                            <td>
                                                <asp:Label ID="lblName" runat="server" Font-Bold="True" ForeColor="#CC0066" 
                                                    Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px; height: 18px;">
                                                </td>
                                            <td style="height: 18px; width: 130px">
                                                Phone NO</td>
                                            <td style="height: 18px">
                                                <asp:Label ID="lblPhone" runat="server" Font-Bold="True" 
                                                    ForeColor="#CC0066" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px">
                                                &nbsp;</td>
                                            <td style="width: 130px">
                                                Mail Address</td>
                                            <td>
                                                <asp:Label ID="lblMail" runat="server" Font-Bold="True" ForeColor="#CC0066" 
                                                    Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px">
                                                &nbsp;</td>
                                            <td style="width: 130px">
                                                Address</td>
                                            <td>
                                                <asp:Label ID="lblAddress" runat="server" Font-Bold="True" 
                                                    ForeColor="#CC0066" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px; height: 8px;">
                                                </td>
                                            <td style="width: 130px; height: 8px;">
                                                City</td>
                                            <td style="height: 8px">
                                                <asp:Label ID="lblCity" runat="server" Font-Bold="True" 
                                                    ForeColor="#CC0066" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 97px; height: 25px;">
                                                </td>
                                            <td style="width: 130px; height: 25px;">
                                                State</td>
                                            <td style="height: 25px">
                                                <asp:Label ID="lblState" runat="server" Font-Bold="True" ForeColor="#CC0066" 
                                                    Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 30px">
                                <asp:Panel ID="Panel4" runat="server" Height="74px" GroupingText="Cost Details" 
                                    Width="445px" Font-Size="Small">
                                    <table style="width: 100%; height: 38px;">
                                        <tr>
                                            <td style="width: 59px; height: 19px;">
                                            </td>
                                            <td style="width: 187px; height: 19px;">
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                    ForeColor="#FF5050" Text="Enter Your Bid Cost"></asp:Label>
                                            </td>
                                            <td style="height: 19px">
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                Rs/-<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 59px; height: 14px;">
                                            </td>
                                            <td style="width: 187px; height: 14px;">
                                                &nbsp;</td>
                                            <td style="height: 14px">
                                                <asp:Button ID="Button1" class="btn btn-Primary"  runat="server" Font-Bold="True" Font-Size="Medium" 
                                                    Height="22px" onclick="Button1_Click" Text="Submit" Width="123px" />
                                            </td>
                                        </tr>
                                        
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr><td align="center">
                            <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="#FF5050"></asp:Label>
                            </td></tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <%--</form>--%>
</asp:Content>

