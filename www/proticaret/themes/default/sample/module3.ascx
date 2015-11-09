
<%@ Control Language="C#" AutoEventWireup="false" CodeFile="module3.ascx.cs" Inherits="ASPNetPortal.module3" %>

<div id="sample" class="module">
    <div id="module_content">
    <% if (HeaderVisible){  %>
    <div id="module_title">
        <span>
        <span id="module_title_icon"></span> <%=ModuleTitle%>
        <% if (IsEditable){  %>
        <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
        <% } %>
        </span>
    </div>
    <% } %>
    <div>
    <p> Örnek Ýçerik </p>
    <p>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </p>
    </div>
</div>
 