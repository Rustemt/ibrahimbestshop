<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="supportlist.ascx.vb" Inherits=".supportlist" %>
<div id="statuslist" class="module">
    <div class="moduleTitle">
        Destek Sistemi
    </div>
    <div class="moduleContent moduleContentCol1">
            <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="button" NavigateUrl="/supportfree/newSupport.aspx">Destek Talebi Oluştur</asp:HyperLink>
            <div id="alert" runat="server" class="alert">
                <div class="title2">Destek talebi olusturmadan once <a href='/icerik/yardim.aspx' target='_blank'>Sıkca Sorulan Sorulari</a> ve <a href='/contact.aspx' target='_blank'>Bilgi Bankasini</a> okumanizi tavsiye ederiz</div>
                <asp:Label runat="server" ID="lblMessage"></asp:Label>
            </div>
		</div>
    <div class="dataTable">
        <table width="100%" cellpadding="0" cellspacing="0" border="0">
            <tr>
                <td id="middle_left" runat="server" valign="top"></td>
                <td id="middle_center" runat="server" valign="top">
                    <asp:DataGrid ID="stList" runat="server" CellSpacing="0" CellPadding="4" AutoGenerateColumns="false" Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                        <Columns>
                            <asp:BoundColumn HeaderText="Talep No" DataField="SupportId" />
                            <asp:TemplateColumn HeaderText="Talebi Açan">
                                <ItemTemplate>
                                    <%# Container.DataItem("UserMail") %>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Konu">
                                <ItemTemplate>
                                    <%# Container.DataItem("Title") %>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn HeaderText="Başlangıç Tarihi" DataField="StartDate" />
                            <asp:BoundColumn HeaderText="Kategori" DataField="SupportCategoryName" />
                            <asp:BoundColumn HeaderText="Durumu" DataField="SupportStatusName" />
                            <asp:BoundColumn HeaderText="Müşteri Temsilsici" DataField="assignedUserName" />
                            <asp:TemplateColumn HeaderText="Detay">
                                <ItemTemplate>
                                    <a class="button" href='<%# "javascript:popup(""/supportfree/supportDetail.aspx?SupportId=" & Container.DataItem("SupportId") & """)"%>'>Detay</a>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                </td>
                <td id="middle_right" runat="server" visible="false" valign="top"></td>
            </tr>
        </table>
    </div>
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=800,height=670,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
