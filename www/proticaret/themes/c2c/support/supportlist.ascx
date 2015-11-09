<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="supportlist.ascx.vb" Inherits=".supportlist" %>
<div id="statuslist" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle"><%=ModuleTitle%></div>
    <% end if %>    
    <div class="moduleContent moduleContentCol1 clearFix">
        <table width="100%" cellpadding="0" cellspacing="0" border="0">
            <tr>
                <td id="middle_left" runat="server" valign="top"></td>
                <td id="middle_center" runat="server" valign="top">
                    <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="button" NavigateUrl="/support/newSupport.aspx">Destek Talebi Oluştur</asp:HyperLink>
                    <br />
                    <br />
                    <div id="alert" runat="server" class="alert title4">
                    	<asp:Label runat="server" ID="lblMessage"></asp:Label>
                    </div>
        			<div class="dataTable">
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
                                        <a class="button" href='<%# "javascript:popup(""/support/supportDetail.aspx?SupportId=" & Container.dataitem("SupportId") & """)" %>'>Detay</a>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                        </asp:DataGrid>
                    </div>
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
