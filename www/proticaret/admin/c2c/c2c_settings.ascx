<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="c2c_settings.ascx.vb" Inherits="ASPNetPortal.c2c_settings" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<div class="publicTab pageMarketSettings" id="TabContainer" runat="server">

    <asp:Label ID="lblmsg" runat="server"></asp:Label>

    <div class="buttonGroup">

        <asp:Label ID="lblLimit" runat="server" CssClass="btnDesc"></asp:Label>
        <asp:HyperLink ID="lnkEditLimit" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-cog"></i> Default Komisyon Oranı</asp:HyperLink>

    </div>

    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title" AllowPaging="true" PageSize="20">
            <Columns>
                <asp:BoundColumn DataField="CatId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Kategori Adı">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/c2c/c2c_editcategorycomission.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CatId") & ""%> '><%#Eval("CatName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="ComissionRate" HeaderText="Kategori Komisyon Oranı"></asp:BoundColumn>

            </Columns>
            <PagerStyle CssClass="dataPager" Mode="NumericPages" PageButtonCount="10" />
        </asp:DataGrid>

    </div>
    <div class="dataCount">
        <ul>
            <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>:<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "TotalPage")%>:<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>:<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
        </ul>
    </div>
</div>
