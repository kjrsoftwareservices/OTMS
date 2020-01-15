<%@ Page Language="C#" MasterPageFile="~/Supplier/SupplierMaster.master" AutoEventWireup="true" CodeFile="frmSTenders.aspx.cs" Inherits="Supplier_frmSTenders" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <%--<form id="form1" runat="server">--%>
 <br />
    <table style="width: 100%">
    <tr><td align="center">
        <asp:Label ID="Label2" runat="server" Text="All Tenders" Font-Bold="True" 
            Font-Size="Large" ForeColor="Red"></asp:Label></td></tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" ForeColor="Black"  
                    HeaderStyle-ForeColor="White"  HeaderStyle-Height="50px" 
                    onrowcommand="GridView1_RowCommand" 
                    onselectedindexchanging="GridView1_SelectedIndexChanging" 
                    AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" 
                    PageSize="7" Height="16px" >
               
                    <FooterStyle BackColor="#CCCCCC" />
                    <RowStyle BackColor="White" />
               
                <Columns>
                
                <asp:TemplateField HeaderText="S No" HeaderStyle-ForeColor="White" HeaderStyle-Width="70px">
                <ItemTemplate><%# Container.DataItemIndex + 1 %></ItemTemplate>
                   
<HeaderStyle ForeColor="White"></HeaderStyle>
                   
                </asp:TemplateField>
                
                
                <asp:BoundField HeaderText=" Expire Date " DataField="ExpireDate" 
                        HeaderStyle-ForeColor="White" HeaderStyle-Width="150px">
                
                
<HeaderStyle ForeColor="White"></HeaderStyle>
                    </asp:BoundField>
                
                
                <asp:TemplateField HeaderText="Title and TenderId" HeaderStyle-ForeColor="White" ControlStyle-Width="250px">
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
                </asp:GridView>
            </td>
        </tr>
    </table>
   <%-- </form>--%>
</asp:Content>

