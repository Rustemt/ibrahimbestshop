<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="reportlist.ascx.vb"
    Inherits="ASPNetPortal.reportlist" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageMailReportList">
    <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="lblSort" runat="server" Visible="False" Text=""></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <div class="dataTable">
                <asp:GridView ID="SitesGridView" runat="server" GridLines="None" HeaderStyle-CssClass="title"
                    AutoGenerateColumns="False" DataKeyNames="id" AllowPaging="True" PageSize="20">
                    <Columns>
                        <asp:BoundField DataField="campaignID" HeaderText="IND" SortExpression="campaignID"
                            ReadOnly="True" Visible="false" />
                        <asp:BoundField DataField="campaignName" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:admin,CampainName %>" SortExpression="campaignName"
                            ReadOnly="True" />
                        <asp:BoundField DataField="mailCount" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,UserCount %>" ReadOnly="True" SortExpression="mailCount" />
                        <asp:BoundField DataField="sendDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,SentDate %>" ReadOnly="True"
                            SortExpression="sendDate" />
                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Action %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="lnkReport" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/mailadmin/report.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")  %> '><i class="fa fa-pie-chart"></i> </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <div class="dataCount">
                    <ul>
                        <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>:<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                        <li><%=GetGlobalResourceObject("admin", "TotalPage")%>:<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                        <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>:<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                    </ul>
                </div>
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
