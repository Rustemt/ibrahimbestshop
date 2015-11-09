<%@ Control Language="vb" AutoEventWireup="false" Inherits="CCategorys" CodeBehind="CCategorys.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Postback4" Assembly="obout_Postback4" %>
<%@ Import Namespace="obout_ASPTreeView_2_NET" %>
<obout:Postback4 runat="server" ID="Postback41" />

<link rel="stylesheet" href="/admin/assets/images/tree/obout_treeview2.css" />
<div class="pageCategorys" runat="server">
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddParentCategory") %></asp:HyperLink>
    </div>
    <div class="alert alert-info"><%=GetGlobalResourceObject("admin", "CategoriesMsg1")%></div>
    <div class="dataForm">
        <div class="row">
            <div class="col1-1">
                <asp:Literal ID="Tree2" runat="server" EnableViewState="False"></asp:Literal>
            </div>
            <div class="col1-3">
                <div class="dataForm">
                    <div class="row">
                        <div class="colOne">
                            <label><%=GetGlobalResourceObject("admin", "SelectedCategory")%> :</label>
                            <label class="labelInput">
                                <asp:Label ID="lblSelectedCategory" runat="server" Font-Bold="true"></asp:Label></label>

                        </div>
                    </div>
                    <div class="row">
                        <div class="colOne">
                            <div class="buttonGroup">
                                <asp:HyperLink ID="lnkAddSub" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddSubCategory") %></asp:HyperLink>
                                <asp:HyperLink ID="lnkUpdate" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
                                <asp:LinkButton ID="lnkDelete" runat="server" CausesValidation="False" CssClass="btnDefault"><i class="fa fa-trash-o"></i> <%= GetGlobalResourceObject("admin","Delete") %></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
