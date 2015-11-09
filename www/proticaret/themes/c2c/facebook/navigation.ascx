<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="navigation.ascx.vb" Inherits="ASPNetPortal.facebooknavigation" %> 
<div class="navigasyon clearFix">
    <asp:Repeater ID="dl" runat="server">
        <ItemTemplate>
            <span>
				<a href='<%# string.format(BaseUrl & "/facebook/default.aspx?CatId={0}",container.dataitem("CatId").tostring) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>'><%# DataBinder.Eval(Container.DataItem,"CatName") %> </a>
            </span>
        </ItemTemplate>
        <SeparatorTemplate><span class="line"></span></SeparatorTemplate>
    </asp:Repeater>
</div>
