<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmShowTenders.aspx.cs" Inherits="frmShowTenders" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form1" runat="server">--%>
    <table style="width: 100%">
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
                    
                    onrowcommand="GridView1_RowCommand" AllowPaging="True" 
                    onpageindexchanging="GridView1_PageIndexChanging" PageSize="5" 
                     HeaderStyle-BackColor="#1b1b1b" HeaderStyle-ForeColor="White" CssClass="table table-condensed table-hover"
                     AlternatingRowStyle-BackColor="#B2BEB5"
                     >
               
                    
               
                <Columns>
                
                <asp:TemplateField HeaderText="S No" HeaderStyle-ForeColor="White">
                
                   <ItemTemplate>
                       <%# Container.DataItemIndex + 1 %>
                     </ItemTemplate>

<HeaderStyle ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                <asp:BoundField HeaderText=" Expire Date " ItemStyle-Font-Bold="false" ItemStyle-ForeColor="Black" DataField="ExpireDate" 
                        HeaderStyle-ForeColor="White">
                
                
<HeaderStyle ForeColor="White"></HeaderStyle>
                    </asp:BoundField>
                
                
                <asp:TemplateField HeaderText="Title and TenderId" HeaderStyle-ForeColor="White">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("TenderId") %>' Visible="false"></asp:Label>
                    <br />
                    <asp:LinkButton ID="c1" runat="server" CommandName="c1" CommandArgument='<%#Eval("NotificationFile") %>' ForeColor="DeepPink">Download 
                    notification</asp:LinkButton>
                
                </ItemTemplate>

<HeaderStyle ForeColor="White"></HeaderStyle>
                </asp:TemplateField>
                
                <asp:BoundField HeaderText="Name of the Dept/Org" ItemStyle-Font-Bold="false" ItemStyle-ForeColor="Black" DataField="DeptName" 
                        HeaderStyle-ForeColor="White">
                
                
<HeaderStyle ForeColor="White"></HeaderStyle>
                    </asp:BoundField>
                
                
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

