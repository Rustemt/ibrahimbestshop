<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="carihesapextrelogo.ascx.vb" Inherits="ASPNetPortal.carihesapextrelogo" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<script type="text/javascript" language="javascript">
    function CallPrint(strid) {
        var prtContent = document.getElementById(strid);
        var WinPrint = window.open('', '', 'letf=0,top=0,width=700,height=600,toolbar=0,scrollbars=0,status=0');
        WinPrint.document.write(prtContent.innerHTML);
        WinPrint.document.close();
        WinPrint.focus();
        WinPrint.print();
        WinPrint.close();
        prtContent.innerHTML = strOldOne;
    }
</script>

<div id="extre" class="module">

    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span>
                <span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div class="module">
            <asp:Label ID="lblName" runat="server" Visible="false"></asp:Label>
            <b>
                <asp:Label ID="Label3" runat="server">Tarih </asp:Label></b>
            <ew:CalendarPopup ID="Tarih1" runat="server" Width="80px" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">>" DisableTextBoxEntry="False"></ew:CalendarPopup>
            <ew:CalendarPopup ID="Tarih2" runat="server" Width="80px" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<<" DisableTextBoxEntry="False"></ew:CalendarPopup>
            <asp:LinkButton ID="lnkShow" runat="server" CssClass="button">Göster</asp:LinkButton>
            <br />
            <br />
            <div id="divPrint">
                <asp:DataGrid ID="DgList" runat="server" CssClass="datalist" Width="900px" ShowFooter="True" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundColumn DataField="BelgeNo" HeaderStyle-Font-Bold="true" HeaderText="Belge No"></asp:BoundColumn>
                        <asp:BoundColumn DataField="BelgeTuru" HeaderText="Belge T&#252;r&#252;" HeaderStyle-Font-Bold="true"></asp:BoundColumn>
                        <asp:BoundColumn DataField="TARIH" HeaderText="Tarih" DataFormatString="{0:dd/MM/yyyy}" HeaderStyle-Font-Bold="true"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Bor&#231;" HeaderStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Right">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# FormatCurDoviz(DataBinder.Eval(Container, "DataItem.Borc")) %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Alacak" HeaderStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Right">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# FormatCurDoviz(DataBinder.Eval(Container, "DataItem.Alacak")) %>'
                                    ID="Label1">
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Bakiye" HeaderStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Right">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# FormatCurDoviz(DataBinder.Eval(Container, "DataItem.Bakiye")) %>'
                                    ID="Label2">
                                </asp:Label>
                            </ItemTemplate>
                            <FooterStyle Wrap="False"></FooterStyle>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
            </div>
        </div>
        <asp:HyperLink ID="Print" runat="server" CssClass="button" ToolTip="Yazdır" NavigateUrl="javascript:CallPrint('divPrint');">Yazdır</asp:HyperLink>
    </div>

</div>
