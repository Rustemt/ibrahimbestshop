<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.navigation" CodeBehind="Navigation.ascx.vb" %>
<div class="navigasyon clearFix">
    <asp:Repeater ID="dl" runat="server">
        <ItemTemplate>
            <span>
                <a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>'><%# DataBinder.Eval(Container.DataItem,"CatName") %> </a>
            </span>
        </ItemTemplate>
        <SeparatorTemplate><span class="line"></span></SeparatorTemplate>
    </asp:Repeater>
</div>
