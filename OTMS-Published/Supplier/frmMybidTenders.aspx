<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmMybidTenders.aspx.cs" Inherits="Supplier_frmMybidTenders" %>--%>

<%--<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 769px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table><tr><td align="center" class="style1">
        <%--<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            Font-Bold="True" Font-Size="Large">Back</asp:LinkButton>--%>
        </td></tr></table>
    <div>
    
            Width="350px" />
        <%--<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
            AutoDataBind="True" Height="50px" 
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="~\Supplier\Reports\MyBidTenders.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="Label1" ConvertEmptyStringToNull="False" 
                        DefaultValue="" Name="@SupplierId" PropertyName="Text" ReportName="" />
                </Parameters>
            </Report>
        </CR:CrystalReportSource>--%>
        <br />
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
