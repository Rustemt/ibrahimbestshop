<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="tesanbankinfo.aspx.vb" Inherits=".tesanbankinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
    <title></title>
</head>
<body>
    <form id="Form1" runat="server">
        <div id="module" class="module">
            <div id="module_content">
                <div id="module_title">
                    <span><span id="module_title_icon"></span>Banka Taksit Tanımları
                    </span>
                </div>
                <div>
                    <label>
                        <asp:Label ID="msg" runat="server" Visible="False"></asp:Label></label>
                    <label>
                        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="addbutton">Yeni Ekle</asp:HyperLink>
                        <asp:Button ID ="btnUpdateInstallment" Text="Taksitleri ve Oranları Çek" runat="server" CssClass="addbutton"/>
                    </label>
                    <asp:DataGrid ID="Datagrid1" runat="server" CellPadding="4" AutoGenerateColumns="False" CssClass="datalist">
                        <HeaderStyle CssClass="title" />
                        <Columns>
                            <asp:BoundColumn DataField="BankInfoId" HeaderText="ID">
                                <HeaderStyle Width="0px"></HeaderStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Taksit" HeaderText="Taksit"></asp:BoundColumn>
                            <asp:BoundColumn DataField="Description" HeaderText="Görünen Taksit"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="Oran(%)">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# FormatNumberEx(DataBinder.Eval(Container, "DataItem.Rate")) + " %"%>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Düzenle">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="editbutton" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/storeadmin/tesanbanks/edittesanbankinfo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "BankInfoId") & "&MID=" & BankId & ""","""",""width=450,height=500,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> '>
          Düzenle
                                    </asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Sil">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="deletebutton" Text="Sil"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                    <label>
                        <asp:Label ID="lblErr" runat="server"></asp:Label></label>
                    <asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="Kapat" CssClass="button"></asp:Button>
                </div>
            </div>
        </div>
    </form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
