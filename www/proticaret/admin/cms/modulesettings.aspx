<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.ModuleSettingsPage" CodeBehind="ModuleSettings.aspx.vb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Modul Ayarlarý</title>
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup" runat="server">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Modul Ayarlarý</div>
                </div>
                <div class="toggleContent">
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "ModuleType")%> :</label>
                                <label class="labelInput">
                                    <asp:Label ID="lblModuleType" runat="server"></asp:Label></label>
                            </div>
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "ModulePath")%> :</label>
                                <label class="labelInput">
                                    <asp:Label ID="lblDesktopSrc" runat="server"></asp:Label></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "ModuleName")%> :</label>
                                <asp:TextBox ID="moduleTitle" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "ModuleSettingsMsg1")%> :
                                    <asp:Label ID="lblmsg" runat="server"></asp:Label></label>
                                <asp:TextBox ID="cacheTime" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "Active")%> :</label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkIsActive" runat="server" />
                                    Aktif/Pasif</label>
                            </div>
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "ShowTopTitle")%> :
                                    <abbr title="<%=GetGlobalResourceObject("admin", "ModuleSettingsMsg2")%>">?</abbr></label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkShowHeader" runat="server"></asp:CheckBox>
                                    Aktif/Pasif</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "ShowSubTitle")%> :</label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkShowFootter" runat="server"></asp:CheckBox>
                                    Aktif/Pasif</label>
                            </div>
                            <div class="colTwo blockClass">
									<label><%=GetGlobalResourceObject("admin", "ModuleSettingsMsg4")%>:</label>
                                    <abbr title="<%=GetGlobalResourceObject("admin", "ModuleSettingsMsg3")%>"><span class="hideClass"><%=GetGlobalResourceObject("admin", "ModuleSettingsMsg3")%></span></abbr>
                                </label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkContent" runat="server"></asp:CheckBox>
                                    Aktif/Pasif</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label><%=GetGlobalResourceObject("admin", "ModuleSettingsMsg5")%> :</label>
                                <asp:CheckBoxList ID="authEditRoles" Width="60%" runat="server" CellPadding="3"  RepeatColumns="2"  CssClass="checkTable"></asp:CheckBoxList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <asp:LinkButton ID="ApplyButton" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","ModuleSaveChanges") %></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
