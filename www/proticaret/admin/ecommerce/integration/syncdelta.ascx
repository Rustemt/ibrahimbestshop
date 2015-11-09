<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="syncdelta.ascx.vb" Inherits="ASPNetPortal.syncdelta" %>

<div id="syncDelta" class="module">
    <div id="module_content">
        <% if HeaderVisible then %>
        <div id="module_title">
        <span>
            <span id="module_title_icon"></span> <%=ModuleTitle%> <% if IsEditable then %> <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a> <% end if %>
        </span>
        </div>
        <% end if %>

        <div id="syndeltam">
            <label><b>Ürün Özelliği Seçiniz</b></label>
            <br />
            <asp:DropDownList ID="ddlFiltre" runat="server" AutoPostBack="False">
                <asp:ListItem Value="-1">--Seçiniz--</asp:ListItem>
                <asp:ListItem Value="Tekstil Ürünleri">Tekstil Ürünleri</asp:ListItem>
                <asp:ListItem Value="Normal Ürünler">Normal Ürünler</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btnSyncDelta" runat="server" Text="Senkronize Et" CssClass="button" />
            <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
        </div>
    </div>
</div>