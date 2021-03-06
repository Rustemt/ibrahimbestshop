﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="GGcategorymatch.ascx.vb" Inherits="ASPNetPortal.GGcategorymatch1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Postback4" Assembly="obout_Postback4" %>
<%@ Import Namespace="obout_ASPTreeView_2_NET" %>
<obout:Postback4 runat="server" ID="Postback41" />
<link rel="stylesheet" href="/admin/assets/images/tree/obout_treeview2.css" />
<br />
<div class="dataForm">
    <div class="row">
        <div class="col1-2">
            <div class="row">
                <div class="colTwo">
                    <label><%= GetGlobalResourceObject("admin","GGTakeCategories") %> :</label>
                    <asp:Button runat="server" Text="<%$ Resources:admin,GGTakeCategories2 %>" CssClass="btnDefault" ID="btnSend" />
                </div>
            </div>
        </div>
    </div>
</div>
<div class="dataForm">
    <div class="row">
        <div class="col1-2">
            <div class="row">
                <div class="col1-2">
                    <label><%= GetGlobalResourceObject("admin","GGCategoriesList") %></label>
                    <label><small>(<%= GetGlobalResourceObject("admin","GGMsg2") %>)</small></label>
                    <div class="alert alert-info">
                        <asp:Label runat="server" ID="lble" />
                        <asp:Label runat="server" ID="lbler" />
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </div>
                    <asp:Literal ID="Tree2" runat="server" EnableViewState="False"></asp:Literal>
                </div>
                <div class="col1-2">
                    <label><%=GetGlobalResourceObject("admin", "SelectedCategory")%> :</label>
                    <asp:Label ID="lblSelectedCategory" runat="server" Font-Bold="true"></asp:Label>
                </div>
            </div>
        </div>
        <div class="col1-2">
            <div class="row">
                <div class="col1-2">
                    <label><%=GetGlobalResourceObject("admin", "PCategoriesList")%></label>
                    <label>&nbsp;</label>
                    <div class="alert alert-info">
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </div>
                    <asp:Literal ID="Tree3" runat="server" EnableViewState="False"></asp:Literal>
                </div>
                <div class="col1-2">
                    <label><%=GetGlobalResourceObject("admin", "SelectedCategory")%> :</label>
                    <label>
                        <asp:Label ID="lblSelectedCategory2" runat="server" Font-Bold="true"></asp:Label></label>
                    <asp:Button runat="server" Text="<%$ Resources:admin,GGCategoriesMatching %>" CssClass="btnDefault" ID="btnMatch" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</div>
