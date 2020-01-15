<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmTenderWinners.aspx.cs" Inherits="Admin_frmTenderWinners" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<%--<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1 {
            width: 100%;
        }

        .style2 {
            color: #FF00FF;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="style1">
            <tr>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"
                        Style="font-weight: 700; font-size: large" ValidationGroup="back">Back</asp:LinkButton>
                    <br />
                    <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFDate">
                    </cc1:CalendarExtender>
                    <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtLDate">
                    </cc1:CalendarExtender>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style2">&nbsp;
                FirstDate&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="txtFDate" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="txtFDate" ErrorMessage="*"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server"
                        ControlToValidate="txtFDate" ErrorMessage="*" Operator="DataTypeCheck"
                        Type="Date"></asp:CompareValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <span class="style2">LastDate&nbsp;&nbsp; </span>
                    <asp:TextBox
                        ID="txtLDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="txtLDate" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server"
                        ControlToValidate="txtLDate" ErrorMessage="*" Operator="DataTypeCheck"
                        Type="Date"></asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator3" runat="server"
                        ControlToCompare="txtFDate" ControlToValidate="txtLDate"
                        ErrorMessage="Last date not  lessfirst Date" Operator="GreaterThanEqual"
                        Type="Date"></asp:CompareValidator>
                    <br />
                    <br />
                    <asp:Button ID="Button1" class="btn btn-Primary" runat="server" Text="Get Tender Winners"
                        Font-Bold="True" ForeColor="#993399" Height="36px" OnClick="Button1_Click"
                        Width="215px" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                   <%-- <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server"
                        AutoDataBind="True" Height="50px"
                        Width="350px" EnableDatabaseLogonPrompt="False"
                        EnableParameterPrompt="False" />
                     <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                    <Report FileName="~\Supplier\Reports\TenderWinners.rpt">
                        <Parameters>
                            <CR:ControlParameter ControlID="txtFDate" ConvertEmptyStringToNull="False" 
                                DefaultValue="" Name="@ODate" PropertyName="Text" ReportName="" />
                            <CR:ControlParameter ControlID="txtLDate" ConvertEmptyStringToNull="False" 
                                DefaultValue="" Name="@CDate" PropertyName="Text" ReportName="" />
                        </Parameters>
                    </Report>
                </CR:CrystalReportSource>--%>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
