<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="offercontrollist.ascx.vb" Inherits="offercontrollist" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageOfferControlList">
    <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <div class="buttonGroup">
                <asp:HyperLink ID="Linkaddnewservicesopt" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Form Kontrol Ekle</asp:HyperLink>
            </div>
            <div class="dataTable">
                <asp:GridView ID="gwServicesFormOptList" runat="server" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left">
                    <Columns>
                        <asp:BoundField DataField="ServicesFormID" HeaderText="IND" Visible="false"></asp:BoundField>
                        <asp:TemplateField HeaderText="Özellik Adı">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink1" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/offer/editofferopt.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ServicesFormID")%>'> <%# DataBinder.Eval(Container.DataItem, "ServicesFormName")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 1">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink1" Visible='<%# eval("Opt1Status") %>' runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/offer/editofferoptlists.aspx?SID=1"%>'> <%# DataBinder.Eval(Container.DataItem, "ServicesOpt1")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 2">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink2" Visible='<%# Eval("Opt2Status")%>' runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/offer/editofferoptlists.aspx?SID=2"%> '> <%# DataBinder.Eval(Container.DataItem, "ServicesOpt2")%> </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 3">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink3" Visible='<%# Eval("Opt3Status")%>' runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/offer/editofferoptlists.aspx?SID=3"%> '> <%# DataBinder.Eval(Container.DataItem, "ServicesOpt3")%> </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 4">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink4" Visible='<%# Eval("Opt4Status")%>' runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/offer/editofferoptlists.aspx?SID=4"%> '> <%# DataBinder.Eval(Container.DataItem, "ServicesOpt4")%> </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 5">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink5" Visible='<%# Eval("Opt5Status")%>' runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/offer/editofferoptlists.aspx?SID=5"%> '> <%# DataBinder.Eval(Container.DataItem, "ServicesOpt5")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 6">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink6" Visible='<%# Eval("Opt6Status")%>' runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/offer/editofferoptlists.aspx?SID=6"%> '> <%# DataBinder.Eval(Container.DataItem, "ServicesOpt6")%> </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 7">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink7" Visible='<%# Eval("Opt7Status")%>' runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/offer/editofferoptlists.aspx?SID=7"%> '> <%# DataBinder.Eval(Container.DataItem, "ServicesOpt7")%> </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 8">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink8" Visible='<%# Eval("Opt8Status")%>' runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/offer/editofferoptlists.aspx?SID=8"%> '> <%# DataBinder.Eval(Container.DataItem, "ServicesOpt8")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 9">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink9" Visible='<%# Eval("Opt9Status")%>' runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/offer/editofferoptlists.aspx?SID=9"%> '> <%# DataBinder.Eval(Container.DataItem, "ServicesOpt9")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 10">
                            <ItemTemplate>

                                <asp:HyperLink ID="Hyperlink10" Visible='<%# Eval("Opt10Status")%>' runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/offer/editofferoptlists.aspx?SID=10"%> '> <%# DataBinder.Eval(Container.DataItem, "ServicesOpt10")%> </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 11">
                            <ItemTemplate>
                                <%# DataBinder.Eval(Container.DataItem, "ServicesOpt11")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 12">
                            <ItemTemplate>
                                <%# DataBinder.Eval(Container.DataItem, "ServicesOpt12")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 13">
                            <ItemTemplate>
                                <%# DataBinder.Eval(Container.DataItem, "ServicesOpt13")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 14">
                            <ItemTemplate>
                                <%# DataBinder.Eval(Container.DataItem, "ServicesOpt14")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 15">
                            <ItemTemplate>
                                <%# DataBinder.Eval(Container.DataItem, "ServicesOpt15")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 16">
                            <ItemTemplate>
                                <%# DataBinder.Eval(Container.DataItem, "ServicesOpt16")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 17">
                            <ItemTemplate>
                                <%# DataBinder.Eval(Container.DataItem, "ServicesOpt17")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 18">
                            <ItemTemplate>
                                <%# DataBinder.Eval(Container.DataItem, "ServicesOpt18")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 19">
                            <ItemTemplate>
                                <%# DataBinder.Eval(Container.DataItem, "ServicesOpt19")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Özellik 20">
                            <ItemTemplate>
                                <%# DataBinder.Eval(Container.DataItem, "ServicesOpt20")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Düzenle" Visible="false" >
                            <ItemTemplate>
                                <asp:HyperLink runat="Server" CssClass="btnIcon fancyContent" ToolTip="Özellik Düzenle" NavigateUrl='<%# "/admin/offer/editofferopt.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ServicesFormID")%>'><i class="fa fa-pencil"></i> </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sil">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnDelete" runat="server" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i> </asp:LinkButton>
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
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
