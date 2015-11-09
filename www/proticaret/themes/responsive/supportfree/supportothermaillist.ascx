<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="supportothermaillist.ascx.vb" Inherits=".supportothermaillist" %>
<div id="statuslist" class="module">
    <div class="moduleTitle">
        Yeni Bilgi Talebi          
    </div>
    
    <div class="moduleContent moduleContentCol1">
    	<div class="moduleContentCol1">
        	<div id="alert" runat="server" class="title2"><asp:Label runat="server" ID="lblMessage"></asp:Label></div>
        	<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="button" NavigateUrl="/supportfree/newothermail.aspx">Bilgi Talebi Oluştur</asp:HyperLink>
        </div>
        
        <div class="dataTable">
            <table>
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
                                        <a class="button" href='<%# "javascript:popup(""/supportfree/supportmaildetail.aspx?SupportId=" & Container.DataItem("SupportId") & """)"%>'>Detay</a>
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
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=800,height=670,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
