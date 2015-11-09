<%@ Control Language="vb" Inherits="ASPNetPortal.Documents" AutoEventWireup="false" Codebehind="documents.ascx.vb" EnableViewState="False" %>
<div id="documents" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
<div>
<asp:DataGrid ID="dlDocuments" runat="server" EnableViewState="False" AutoGenerateColumns="False" Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
<HeaderStyle CssClass="title" />
<FooterStyle CssClass="footer" />
<Columns>
<asp:TemplateColumn>
<HeaderTemplate><%=GetGlobalResourceObject("lang", "Header")%></HeaderTemplate>
<ItemTemplate>
<asp:HyperLink ID="editLink" runat="server" Visible="<%# IsEditable %>" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/EditDocs.aspx?ItemId=" &amp; DataBinder.Eval(Container.DataItem,"ItemId") &amp; "&mid=" &amp; ModuleId &amp; ""","""",""width=400,height=300,scrollbars=1,status=1,toolbar=0,resizable=1"")" %>' ImageUrl="/admin/images/edit.gif"> </asp:HyperLink>
<asp:HyperLink ID="docLink" Text='<%# DataBinder.Eval(Container.DataItem,"FileFriendlyName") %>' NavigateUrl='<%# GetBrowsePath(DataBinder.Eval(Container.DataItem,"FileNameUrl"), DataBinder.Eval(Container.DataItem,"ContentSize"), CInt(DataBinder.Eval(Container.DataItem,"ItemId"))) %>' Target="_new" runat="server" />
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn>
<HeaderTemplate><%=GetGlobalResourceObject("lang", "Editor")%></HeaderTemplate>
 <ItemTemplate><%# DataBinder.Eval(Container.DataItem,"CreatedByUser") %></ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn>
<HeaderTemplate><%=GetGlobalResourceObject("lang", "Subject")%></HeaderTemplate>
 <ItemTemplate><%#DataBinder.Eval(Container.DataItem, "Category")%></ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn>
<HeaderTemplate><%=GetGlobalResourceObject("lang", "LastUpdate")%></HeaderTemplate>
 <ItemTemplate><%#DataBinder.Eval(Container.DataItem, "CreatedDate")%></ItemTemplate>
</asp:TemplateColumn> 
</Columns>
</asp:DataGrid>
</div>
</div>
</div>