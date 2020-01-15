<%@ Page Language="C#" MasterPageFile="~/Supplier/SupplierMaster.master" AutoEventWireup="true" CodeFile="frmSearchByBitweenTwoDates.aspx.cs" Inherits="Supplier_frmSearchByBitweenTwoDates" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 106px;">
        <tr>
            <td style="height: 11px">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr><td align="center" style="font-size: medium; height: 13px;"><b style="color: #FF0000">Search 
            Tenders Between Two Dates</b></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
            <td style="height: 17px">
                 StartDate &nbsp;<asp:TextBox  AutoCompleteType="None" ID="txtStartD" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtStartD" ErrorMessage="*"></asp:RequiredFieldValidator>
                &nbsp;EndDate&nbsp;&nbsp;
                <asp:TextBox ID="txtEndD" AutoCompleteType="None" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtEndD" ErrorMessage="*"></asp:RequiredFieldValidator>
                <cc1:CalendarExtender  ID="CalendarExtender1" runat="server" TargetControlID="txtStartD">
                </cc1:CalendarExtender>
                <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtEndD">
                </cc1:CalendarExtender> 
                



            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" style="height: 11px">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="enter date" Type="Date" ControlToValidate="txtStartD" 
                    Operator="DataTypeCheck"></asp:CompareValidator>
                <asp:Button ID="btnSearch" class="btn btn-Primary" runat="server" Font-Bold="True"
                    Text="Search"  onclick="btnSearch_Click" />
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ErrorMessage="enter date" Type="Date" ControlToValidate="txtEndD" 
                    Operator="DataTypeCheck"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="height: 17px">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
       <tr>
       <td align="center"><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" ForeColor="Black"  
                    HeaderStyle-ForeColor="White"  HeaderStyle-Height="50px" 
                    onrowcommand="GridView1_RowCommand" 
                    onselectedindexchanging="GridView1_SelectedIndexChanging" 
                    AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" 
                    PageSize="5" Height="21px" >
               
                    <FooterStyle BackColor="#CCCCCC" />
                    <RowStyle BackColor="White" />
               
                <Columns>
                
                <asp:TemplateField HeaderText="S No" HeaderStyle-ForeColor="White" HeaderStyle-Width="70px">
                <ItemTemplate><%# Container.DataItemIndex + 1 %></ItemTemplate>
                   
<HeaderStyle ForeColor="White"></HeaderStyle>
                  
                </asp:TemplateField>
                
                
                <asp:BoundField HeaderText=" Expire Date " DataField="ExpireDate" 
                        HeaderStyle-ForeColor="White" HeaderStyle-Width="150px" >
                
                
<HeaderStyle ForeColor="White"></HeaderStyle>
                    </asp:BoundField>
                
                
                <asp:TemplateField HeaderText="Title and TenderId" HeaderStyle-ForeColor="White">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Title") %>'></asp:Label>  
                    <asp:Label ID="tid" runat="server" Text='<%#Eval("TenderId") %>' Visible="false"></asp:Label>  
                    <asp:LinkButton ID="DownLoad" runat="server" CommandName="c1" CommandArgument='<%#Eval("NotificationFile") %>' ForeColor="DeepPink">Download 
                    notification</asp:LinkButton>
                
                </ItemTemplate>

<ControlStyle Width="250px"></ControlStyle>

<HeaderStyle ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                
                <asp:BoundField HeaderText=" Dept/Org" DataField="DeptName" 
                        HeaderStyle-ForeColor="White">
<HeaderStyle ForeColor="White"></HeaderStyle>
                    </asp:BoundField>
                <asp:CommandField ShowSelectButton="true" />
                </Columns>
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                </asp:GridView></td>
       </tr>
        
    </table>
</asp:Content>

