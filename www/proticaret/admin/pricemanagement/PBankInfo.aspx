<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PBankInfo.aspx.vb" Inherits="ASPNetPortal.PBankInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="pagePopup">
        <div class="boxToggle">
            <div class="toggleTitle">
                <div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","BankInstallmentDefinitions") %></div>
            </div>
            <div class="toggleContent">
            	<div class="buttonGroup">
                	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                	<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
                </div>
                <div class="dataForm">
                	<div class="dataTable">
                    <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" HeaderStyle-CssClass="title" AutoGenerateColumns="False" PageSize="20" ShowFooter="True">
                        <Columns>
                            <asp:BoundColumn DataField="Ind" HeaderText="ID">
                                <HeaderStyle Width="0px"></HeaderStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Taksit" HeaderText="<%$ Resources:admin,Installment %>"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="<%$ Resources:admin,InstallmentRate %>">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# FormatCurDoviz(DataBinder.Eval(Container, "DataItem.Rate")) + " %"%>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Edit %>">
                                <ItemTemplate>
                                    <asp:HyperLink CssClass="btnIcon" ID="HyperLink1" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/pricemanagement/editpbankinfo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "Ind") & "&MID=" & 0 & ""","""",""width=350,height=250,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                                <ItemTemplate>
                                    <asp:LinkButton CssClass="button" ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                    </div>
                    <div class="buttonGroup">
                        <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblErr" runat="server"></asp:Label>
                        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="<%$ Resources:admin,Close %>" CssClass="btnDefault"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
