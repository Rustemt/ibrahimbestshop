<%@ Control Language="vb" AutoEventWireup="false" Inherits="categorybrandsfilter" Codebehind="categorybrandsfilter.ascx.vb" %>
<div id="categorybrandsfilter" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title">
<span>
<span id="module_title_icon"></span>
<%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> 
</div>
<% end if %>
<div>
<asp:UpdatePanel ID="updCatMark" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
     <label>
     <asp:Label ID="lblCatFilt1" runat="server">Kategori :</asp:Label>
     <asp:DropDownList ID="ddlCategories" runat="server" AutoPostBack="True"></asp:DropDownList>
     &nbsp;&nbsp;<asp:Label ID="lblCatFilt2" runat="server">Marka :</asp:Label>
     <asp:DropDownList ID="ddlMarks" runat="server" AutoPostBack="True"></asp:DropDownList>
        </label>
    </ContentTemplate>
</asp:UpdatePanel>
</div>
</div>
</div>