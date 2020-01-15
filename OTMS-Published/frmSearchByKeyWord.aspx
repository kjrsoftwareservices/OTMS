﻿<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmSearchByKeyWord.aspx.cs" Inherits="frmSearchByKeyWord" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" style="font-size: medium; color: #FF0000">
                <b style="color: #FF3300">Search By Key</b></td>
        </tr>
        <tr>
            <td align="center">
                Enter Only one word&nbsp;
                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtSearch" ErrorMessage="*"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSearch" class="btn btn-Primary" runat="server" Font-Bold="True" 
                    Text="Search"  onclick="btnSearch_Click" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" ForeColor="Black"  
                    HeaderStyle-ForeColor="White"  HeaderStyle-Height="50px" 
                    onrowcommand="GridView1_RowCommand" 
                    AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" 
                    PageSize="5" Height="16px" >
               
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
                    <asp:Label ID="tid" runat="server" Text='<%#Eval("TenderId") %>' Visible="false" ></asp:Label>  
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
                <%--<asp:CommandField ShowSelectButton="true" />--%>
                </Columns>
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                </asp:GridView>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
