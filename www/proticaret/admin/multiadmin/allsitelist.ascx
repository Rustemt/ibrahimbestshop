<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="allsitelist.ascx.vb" Inherits=".allsitelist" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageAllSiteList">
    <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <div class="buttonGroup">
                <asp:HyperLink ID="Linkaddnewsite" runat="server" CssClass="btnDefault fancyContent" NavigateUrl="/admin/multiadmin/editsite.aspx?IND=0"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNewWebSite") %></asp:HyperLink>
                <asp:Button ID="Linkupdatesite" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,WebSiteInformationUpdate %>" />
            </div>
            <div class="dataTable">
                <asp:GridView ID="SitesGridView" runat="server" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" Visible="false" />

                        <asp:TemplateField HeaderText="<%$ Resources:admin,SiteName %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/multiadmin/editsite.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & ""%> '> <%#Eval("SiteName")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="ServerName" HeaderText="<%$ Resources:admin,SqlServerName %>" ReadOnly="True" SortExpression="ServerName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="DbName" Visible="true" HeaderText="<%$ Resources:admin,DatabaseName %>" SortExpression="DbName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="DbUserName" HeaderText="<%$ Resources:admin,SqlServerUser %>" SortExpression="DbUserName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="DbPass" HeaderText="<%$ Resources:admin,SqlServerPassword %>" SortExpression="DbPass" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                        <asp:CheckBoxField DataField="IsDefault" HeaderText="<%$ Resources:admin,IsDefault %>" SortExpression="IsDefault" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                        <asp:TemplateField HeaderText="<%$ Resources:admin,Edit %>" Visible="false">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/multiadmin/editsite.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & ""%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="False" CommandName="Delete" CssClass="btnIcon" Visible='<%# eVal("CanDelete")%>'><i class="fa fa-trash"></i></asp:LinkButton>
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
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
	$(function(){
	var kaldir = $(".aspNetDisabled");
	var kaldir = $(".fancyContent");
	$("a").removeClass(".aspNetDisabled");
});

</script>
