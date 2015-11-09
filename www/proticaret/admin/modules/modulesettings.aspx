<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.ModuleSettingsPage" Codebehind="ModuleSettings.aspx.vb" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Modul Ayarlarý</title>
</head>
<body>
<form id="Form1" runat="server">
<div id="module" class="module">
<div id="module_content">
<div id="module_title"> <span> <span id="module_title_icon"></span>Modul Ayarlarý
</span> </div> 
<div>
<table cellpadding="3" cellspacing="0" border="0">
    <tr>
        <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "ModuleType")%> :</td>
        <td><asp:Label ID="lblModuleType" runat="server"></asp:Label></td>        
    </tr>
    <tr>
        <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "ModulePath")%> :</td>
        <td><asp:label id="lblDesktopSrc" runat="server"></asp:label></td>        
    </tr>
        <tr>
        <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "ModuleName")%> :</td>
        <td><asp:TextBox ID="moduleTitle" runat="server"></asp:TextBox></td>        
    </tr>
        <tr>
        <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "ModuleSettingsMsg1")%> :</td>
        <td>
        <asp:TextBox ID="cacheTime" runat="server"></asp:TextBox>
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
        <tr>
        <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "Active")%> :</td>
        <td><asp:checkbox id="chkIsActive" runat="server"/></td>        
    </tr>
        <tr>
        <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "ShowTopTitle")%> :</td>
        <td>
        <asp:CheckBox ID="chkShowHeader" runat="server" CssClass="Admin_Normal_CheckBox" Font-Names="Verdana,Arial" Font-Size="8pt"></asp:CheckBox>
        <asp:Label ID="Label1" runat="server" CssClass="Admin_HataMesaji"><%=GetGlobalResourceObject("admin", "ModuleSettingsMsg2")%></asp:Label>
        </td>
    </tr>
        <tr>
        <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "ShowSubTitle")%> :</td>
        <td><asp:CheckBox ID="chkShowFootter" runat="server"></asp:CheckBox></td>        
    </tr>
        <tr>
        <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "ModuleSettingsMsg4")%>:</td>
        <td>
        <asp:CheckBox ID="chkContent" runat="server"></asp:CheckBox>
        <asp:Label ID="Label6" runat="server"><%=GetGlobalResourceObject("admin", "ModuleSettingsMsg3")%></asp:Label>
        </td>        
    </tr>
        <tr>
        <td align="right" valign="top" runat="server"><%=GetGlobalResourceObject("admin", "ModuleSettingsMsg5")%> :</td>
        <td><asp:CheckBoxList ID="authEditRoles" runat="server" CellPadding="3" RepeatColumns="2"></asp:CheckBoxList></td>        
    </tr>
</table>
 <asp:LinkButton  ID="ApplyButton" Text="<%$ Resources:admin,ModuleSaveChanges %>" runat="server" CssClass="btnDefault"></asp:LinkButton>
</div>
</div>
</div>
</form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
