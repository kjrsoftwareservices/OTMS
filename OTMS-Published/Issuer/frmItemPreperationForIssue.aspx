<%@ Page Language="C#" MasterPageFile="~/Issuer/IssuerMasterPage.master" AutoEventWireup="true" CodeFile="frmItemPreperationForIssue.aspx.cs" Inherits="Issuer_frmItemPreperationForIssue" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form1" runat="server">--%>
  
                <asp:Panel ID="Panel1" runat="server" GroupingText="Item Issue" 
                    Width="494px" Font-Bold="True" Font-Size="Medium">
                    <table style="width: 100%;padding:30px;">
                        <tr>
                            <td>
                                <asp:DropDownList ID="ddlDeptName" Class="form-control" runat="server" 
                                    AutoPostBack="True" onselectedindexchanged="ddlDeptName_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    AllowPaging="True" onselectedindexchanging="GridView1_SelectedIndexChanging" 
                                    PageSize="3" onpageindexchanging="GridView1_PageIndexChanging" HeaderStyle-BackColor="#1b1b1b" HeaderStyle-ForeColor="White" CssClass="table table-condensed table-hover"
                     AlternatingRowStyle-BackColor="#B2BEB5" 
                                    Font-Size="Small">
                                    
                                <Columns>
                                <asp:TemplateField HeaderText="S No" HeaderStyle-ForeColor="White">
                                <ItemTemplate>
                                    <asp:Label ID="itemid" runat="server" Text='<%#Eval("ItemId") %>' Visible="false"></asp:Label>
                                    <%--<asp:Label ID="deptid" runat="server" Text='<%#Eval("DeptId") %>'></asp:Label>--%>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                </ItemTemplate>
                                    <HeaderStyle ForeColor="White" />
                                </asp:TemplateField>
                               <%-- <asp:BoundField HeaderText="ItemId" DataField="ItemId" HeaderStyle-ForeColor="White" />--%>
                                <asp:BoundField HeaderText="ItemName" DataField="ItemName" 
                                        HeaderStyle-ForeColor="White">
                                    <HeaderStyle ForeColor="White" />
                                    </asp:BoundField>
                                <asp:BoundField HeaderText="DeptName" DataField="DeptName" 
                                        HeaderStyle-ForeColor="White">
                                    <HeaderStyle ForeColor="White" />
                                    </asp:BoundField>
                                <asp:CommandField HeaderText="select" ShowSelectButton="true" 
                                        HeaderStyle-ForeColor="White">
                                
                                
                                    <HeaderStyle ForeColor="White" />
                                    </asp:CommandField>
                                
                                
                                </Columns>
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr><td>
                            <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                        
                        </td></tr>
                        
                    </table>
                </asp:Panel>
            
    
            <asp:Panel ID="Panel2" runat="server" GroupingText="Item Details" Width="548px" Height="100%" style="padding-top:10px;" 
                 Font-Bold="True">
                <table style="width: 99%;">
                    
                    <tr>
                        <td style="width: 54px">
                            &nbsp;</td>
                        <td align="left" style="width: 187px">
                            ItemName</td>
                        <td align="left">
                            <asp:TextBox ID="txtItemName" Class="form-control" runat="server" Width="236px" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"> &nbsp;

                        </td>
                    </tr>
                    <tr>
                        <td style="width: 54px">
                            &nbsp;</td>
                        <td align="left" style="width: 187px">
                            DeptId</td>
                        <td align="left">
                            <asp:TextBox ID="txtDeptId" Class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="3"> &nbsp;

                        </td>
                    </tr>
                    <tr>
                        <td style="width: 54px">
                            &nbsp;</td>
                        <td align="left" style="width: 187px">
                            Tender Title</td>
                        <td align="left">
                            <asp:TextBox ID="txtTenderTitel" Class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtTenderTitel" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 54px; height: 25px;">
                            </td>
                        <td align="left" style="width: 187px; height: 25px;">
                            Description</td>
                        <td align="left" style="height: 25px">
                            <asp:TextBox ID="txtDescription" Class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtDescription" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 54px">
                            &nbsp;</td>
                        <td align="left" style="width: 187px">
                            Opening Date</td>
                        <td align="left">
                            <asp:TextBox ID="txtOpeningDate" Class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtOpeningDate" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtOpeningDate">
                            </cc1:CalendarExtender>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToValidate="txtOpeningDate" ErrorMessage="*" Type="Date" 
                                Operator="DataTypeCheck"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 54px">
                            &nbsp;</td>
                        <td align="left" style="width: 187px">
                            Expire Date</td>
                        <td align="left">
                            <asp:TextBox ID="txtCloseD" Class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtCloseD" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtCloseD">
                            </cc1:CalendarExtender>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                ControlToValidate="txtCloseD" ErrorMessage="*" Type="Date" 
                                Operator="DataTypeCheck"></asp:CompareValidator>
                            <asp:CompareValidator ID="CompareValidator5" runat="server" 
                                ControlToCompare="txtOpeningDate" ControlToValidate="txtCloseD" 
                                ErrorMessage="Edate not &lt; Odate" Operator="GreaterThanEqual" Type="Date"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 54px">
                            &nbsp;</td>
                        <td align="left" style="width: 187px">
                            Result announce Date</td>
                        <td align="left">
                            <asp:TextBox ID="txtResultD" Class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtResultD" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <cc1:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txtResultD">
                            </cc1:CalendarExtender>
                            <asp:CompareValidator ID="CompareValidator3" runat="server" 
                                ControlToValidate="txtResultD" ErrorMessage="*" Operator="DataTypeCheck" 
                                Type="Date"></asp:CompareValidator>
                            <asp:CompareValidator ID="CompareValidator6" runat="server" 
                                ControlToCompare="txtCloseD" ControlToValidate="txtResultD" 
                                ErrorMessage="Rdate not &lt; Edate" Operator="GreaterThanEqual" Type="Date"></asp:CompareValidator>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 54px">
                            &nbsp;</td>
                        <td align="left" style="width: 187px">
                            Tender Minimum Cost</td>
                        <td align="left">
                            <asp:TextBox ID="txtCost" Class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtCost" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="*" 
                                Type="Currency" ControlToValidate="txtCost" Operator="DataTypeCheck"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 54px">
                            &nbsp;</td>
                        <td align="left" style="width: 187px">
                            Tender Notification File</td>
                        <td align="left">
                            &nbsp;
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="FileUpload1" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 54px; height: 38px;">
                            &nbsp;</td>
                        <td style="width: 187px; height: 38px;">
                            <asp:Button ID="btnSubmit" class="btn btn-Primary" runat="server" Text="Submit" 
                                onclick="btnSubmit_Click" Font-Bold="True" />
                        </td>
                        <td align="left" style="height: 38px">
                            <asp:Button ID="btnClear" class="btn btn-default" runat="server" Height="26px" Text="Clear" 
                                Width="65px" onclick="btnClear_Click" Font-Bold="True" />
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    
                    </tr>
                   
                    
                   
                </table>
                
            </asp:Panel>
           
  <%--  </form>--%>
</asp:Content>

