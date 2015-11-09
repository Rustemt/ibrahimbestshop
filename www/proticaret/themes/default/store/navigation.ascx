<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.navigation" CodeBehind="Navigation.ascx.vb" %>
<div id="navigasyon" class="module">
    <div id="module_content">
        <div id="module_title" style="margin-bottom: 0px">
            <span><span id="module_title_icon"></span>
                <asp:Repeater ID="dl" runat="server">
                    <ItemTemplate><span><a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>'><%# DataBinder.Eval(Container.DataItem,"CatName") %> </a></span></ItemTemplate>
                    <SeparatorTemplate><a>/</a></SeparatorTemplate>
                </asp:Repeater>
            </span>
        </div>
    </div>
</div>
