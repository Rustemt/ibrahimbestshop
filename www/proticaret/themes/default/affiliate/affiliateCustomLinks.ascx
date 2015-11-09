<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateCustomLinks" Codebehind="AffiliateCustomLinks.ascx.vb" %>
<div id="affiliatecustomlinks" class="module">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
    <div>
 
 <label><%=GetGlobalResourceObject("lang", "AffiliateMsg3")%></label>

<label><%=GetGlobalResourceObject("lang", "AffliateLinkTitle")%></label>
<asp:TextBox ID="txtsite" runat="server"></asp:TextBox>
<label><%=GetGlobalResourceObject("lang", "AffiliatePageUrl")%></label>
<asp:TextBox ID="txtLink" runat="server"></asp:TextBox>

<asp:Button ID="btnmakelink" runat="server" CssClass="button" Text="<%$ Resources:lang, AffiliateCreateLink%>" />
<label><asp:Label ID="lblMsg" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "AffiliateMsg4")%></asp:Label></label>

<label>
<asp:Label ID="lblNewlink" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "AffiliateCreatedLink")%></asp:Label>
<asp:Label ID="lblnewlinktext" runat="server"  Visible="False"></asp:Label>
</label>

<label>  
  
<asp:Label ID="lblNewlink2" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "AffiliateLinkToUse")%></asp:Label>
<asp:TextBox ID="lblnewlinktext2" runat="server" Visible="False" ></asp:TextBox>
</label>

</div>
</div>
</div>
