<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editofferoptlists.aspx.vb" Inherits="offer.editofferoptlists" %>

<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Bölüm Ekle</title>

</head>
<body>
    <form id="form1" runat="server">
        <div id="module" class="pagePopup">
            <div class="boxToggle" runat="server">
                <div class="toggleTitle">
                    <div class="titleText">Özellik Veri Ekleme</div>
                </div>

                <div class="toggleContent">
                    <div class="dataForm">
                        <div class="btnGroup">
                            <asp:HyperLink ID="Linkaddnewvalue" runat="server" CssClass="btnDefault"><i class="fa fa-plus"></i> Yeni Özellik Ekle</asp:HyperLink>
                            <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
                            <br />
                        </div>
                        <div class="dataTable">
                        	<div class="row">
                                <div class="colOne">
                                <asp:GridView ID="GWOptList" DataKeyNames="id" runat="server" GridLines="None" AutoGenerateColumns="False" EnableModelValidation="True" HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left">
                                    <HeaderStyle CssClass="title" />
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" />
                                        <asp:BoundField DataField="ServicesSubOpt" HeaderText="Veri Adı" ReadOnly="True" SortExpression="ServicesSubOpt" />
    
                                        <asp:TemplateField HeaderText="Düzenle">
                                            <ItemTemplate>
                                                <asp:Literal ID="Literal1" runat="server" Text='<%# "Özellik " & DataBinder.Eval(Container.DataItem, "SubOptLevel") & ""%>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                        <asp:TemplateField HeaderText="Düzenle" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/offer/editopt.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '> <i class="fa fa-pencil"></i> </asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
    
                                        <asp:TemplateField HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                                            <ItemTemplate>
                                                <asp:LinkButton Enabled="<%# IsAllowedOnDemo() %>" ID="lnkbtnDelete" runat="server"
                                                    CausesValidation="False" CommandName="Delete" CssClass="btnIcon" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                </div>
                                <div class="colOne">
                                <div class="dataCount">
                                	<ul>
                                    	<li>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                                        <li>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                                        <li>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                                    </ul>
                                </div>
                                    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lblSort" runat="server" Visible="False" Text=""></asp:Label>
                                    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <asp:Label Text="" runat="server" ID="Label1" />
    </form>
</body>
</html>

<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
