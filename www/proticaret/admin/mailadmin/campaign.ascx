<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="campaign.ascx.vb" Inherits="ASPNetPortal.campaign" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageMailCampaign">
    <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="alert alert-info" id="alert2" runat="server" visible="False">
                <asp:Label ID="lblmsg" runat="server"></asp:Label></div>
            <asp:Label ID="msg" runat="server"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False" Text=""></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <div class="buttonGroup">
                <asp:HyperLink ID="addNewCampaign" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNewCampaign") %></asp:HyperLink>
            </div>
            <div class="dataTable">
                <asp:GridView ID="SitesGridView" runat="server" GridLines="None" HeaderStyle-CssClass="title" AutoGenerateColumns="False" DataKeyNames="id,campaignState" AllowPaging="True" PageSize="20" ShowHeaderWhenEmpty="true" >
                    <Columns>
                        <asp:BoundField DataField="campaignID" HeaderText="IND" SortExpression="campaignID" ReadOnly="True" Visible="false" />
                        <asp:BoundField DataField="campaignName" HeaderText="<%$ Resources:admin,CampainName %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" SortExpression="campaignName" ReadOnly="True" />
                        <asp:BoundField DataField="mailCount" HeaderText="<%$ Resources:admin,UserCount %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Right" ReadOnly="True" SortExpression="mailCount" />
                        <asp:BoundField DataField="sendCount" HeaderText="<%$ Resources:admin,SentCount %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Right" ReadOnly="True" SortExpression="sendCount" />
                        <asp:BoundField DataField="sendDate" HeaderText="<%$ Resources:admin,SentDate %>" ReadOnly="True" SortExpression="sendDate" />
                        <%--<asp:BoundField DataField="openedMail" Visible="true" HeaderText="Açılan(Tekil)" SortExpression="openedMail" />
			<asp:BoundField DataField="clickedLink" HeaderText="Tıklama(Tekil)" ReadOnly="True" SortExpression="clickedLink" />--%>
                        <asp:BoundField DataField="campaignState" HeaderText="<%$ Resources:admin,Status %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ReadOnly="True" SortExpression="campaignState" />
                        <asp:TemplateField HeaderText="<%$ Resources:admin,BulkMailSent %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="lnkRapor" runat="Server" CssClass="btnIcon fancyContent" Visible="false" NavigateUrl='<%# "/admin/mailadmin/report.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '> <i class="fa fa-pie-chart"></i> </asp:HyperLink>
                                <asp:HyperLink ID="lnkGonder" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/mailadmin/sendMail.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '><i class="fa fa-envelope-o"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="<%$ Resources:admin,CopyClone %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="lnkClone" runat="Server" Visible="false" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/mailadmin/EditCampaign.aspx?Cl=1&IND=" & DataBinder.Eval(Container.DataItem, "id")%> '><i class="fa fa-copy"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="<%$ Resources:admin,Edit %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="lnkEdit" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/mailadmin/EditCampaign.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton Enabled="<%# IsAllowedOnDemo() %>" ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon" Text="Sil" OnClientClick="return confirm('Kampanyayi Silmek İstediğinizden Emin misiniz?');"><i class="fa fa-trash-o"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>:<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalPage")%>:<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>:<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
<%--<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>--%>
