<%@ Page Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="frmItemAproveForIssuer.aspx.cs" Inherits="Employee_frmItemAproveForIssuer" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form1" runat="server">--%>
    <br />
    <br />
    <table><tr><td align="center" style="width: 573px; height: 36px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onrowcommand="GridView1_RowCommand" 
            GridLines="Horizontal" 
            HeaderStyle-Height="50px" CssClass="table table-condensed table-hover" PageSize="10"  
            HeaderStyle-BackColor="#1b1b1b" HeaderStyle-ForeColor="White"
                     AlternatingRowStyle-BackColor="#B2BEB5">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <Columns>
        <asp:BoundField HeaderText="    Item Name   " DataField="ItemName"  
                HeaderStyle-ForeColor="White" >
<HeaderStyle ForeColor="White"></HeaderStyle>
            </asp:BoundField>
        <asp:BoundField HeaderText="Deptartment Name" DataField="DeptName" 
                HeaderStyle-ForeColor="White" >
<HeaderStyle ForeColor="White"></HeaderStyle>
            </asp:BoundField>
        <asp:BoundField HeaderText="Approved Status"  DataField="EmpCheckStatus" 
                HeaderStyle-ForeColor="White">
<HeaderStyle ForeColor="White"></HeaderStyle>
            </asp:BoundField>
        <asp:TemplateField>
        <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>
            <asp:Button ID="Button1" runat="server" Text="Approve" class="btn btn-Warning" CommandName="c1" CommandArgument='<%#Eval("ItemId") %>'/></ItemTemplate>
        </asp:TemplateField>
        </Columns>
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right"  />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" 
                Height="50px" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
        
        </td></tr><tr><td align="center"">
            <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label>
            </td></tr></table>
    <%--</form>--%>
</asp:Content>

