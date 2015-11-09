<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editoptlist.aspx.vb" Inherits="editoptlist" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Bölüm Ekle</title>
<link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
    	<div class="toggleTitle">
			<div class="titleText">Yeni Veri Ekle</div>
		</div>
		<div class="toggleContent">
            <div class="pageEditOptList">
                <label id="lblMessage" runat="server" />
                <asp:Label Text="" runat="server" ID="Label1" />
                <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblSort" runat="server" Visible="False" Text=""></asp:Label>
                <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                
                <div class="buttonGroup">
                    <asp:HyperLink ID="Linkaddnewvalue" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Yeni Özellik Verisi Ekle</asp:HyperLink>
                </div>
                <div class="dataTable">
                    <asp:GridView ID="GWOptList" runat="server" GridLines="None" HeaderStyle-CssClass="title" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True">
                        <Columns>
                        <asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" />
                        <asp:BoundField DataField="ServicesSubOpt" HeaderText="Veri Adı" ReadOnly="True" SortExpression="ServicesSubOpt" />
                        <asp:TemplateField HeaderText="Düzenle">
                            <ItemTemplate>
                                <asp:Literal ID="Literal1" runat="server" Text='<%# "Özellik " & DataBinder.Eval(Container.DataItem, "SubOptLevel") & ""%>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Düzenle">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/guaranty/editopt.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & ""","""",""width=650,height=250,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Sil">
                            <ItemTemplate>
                                <asp:LinkButton Enabled="<%# IsAllowedOnDemo() %>" ID="lnkbtnDelete" runat="server" CausesValidation="False" CommandName="Delete" CssClass="btnIcon" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');"><i class="fa fa-trash-o"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="dataCount">
                    <ul>
                        <li>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                        <li>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                        <li>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                    </ul>
                </div>
            </div>
        </div>
	</div>
</div>
</form>
</body>
</html>