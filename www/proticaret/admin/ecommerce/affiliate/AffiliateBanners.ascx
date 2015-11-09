<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AdminAffiliateBanners" CodeBehind="AffiliateBanners.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<div class="pageAffiliateBanners">
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False">AddId</asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>

    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" data-width="1100" data-height="500" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>

    <div class="dataFilter boxToggle">
        <div class="toggleTitle toggleMini">
            <div class="titleTab">
                <ul class="tabMenu">
                    <li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li>
                </ul>
            </div>
            <div class="titleToggle"></div>
        </div>
        <div class="toggleContent">
            <div class="tabContent">
                <div class="tab">
                    <div class="colGroup">
                        <div class="col col2">
                            <label><%=GetGlobalResourceObject("admin", "BannerName")%></label>
                            <asp:TextBox ID="txtUserName" runat="server" Width="80px"></asp:TextBox>
                            <asp:DropDownList ID="ddlUserFilter" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <label><%=GetGlobalResourceObject("admin", "Status")%></label>
                            <asp:DropDownList ID="ddlIsActive" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <label><%=GetGlobalResourceObject("admin", "Type")%></label>
                            <asp:DropDownList ID="ddlType" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,All2 %>" Value="Tümü"></asp:ListItem>
                                <asp:ListItem Value="Banner">Banner</asp:ListItem>
                                <asp:ListItem Value="Text">Text</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <label>&nbsp;</label>
                            <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                        </div>
                    </div>
                </div>
                <div class="tab">Raporlar</div>
            </div>
        </div>
    </div>

    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="AddId" HeaderText="IND" Visible="False"></asp:BoundColumn>
                <asp:TemplateColumn ItemStyle-Width="120px" HeaderText="<%$ Resources:admin,BannerName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/Affiliate/EditAffiliateBanner.aspx?IND=" & DataBinder.Eval(Container.DataItem, "AddId")%> '><%#Eval("AddName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,View %>">
                    <ItemTemplate>
                        <img id="img" runat="server" alt="" border="0" width="100" src='<%#  container.dataitem("AddImage") %>' visible='<%# iif(DataBinder.Eval(Container.DataItem,"AddImage").tostring()<>"","True","False")  %>' />
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,HtmlCode %>">
                    <ItemTemplate>
                        <asp:TextBox ID="txthtmlcode" Width="99%" TextMode="MultiLine" Height="100px" runat="server" Text='<%# Server.HtmlEncode(DataBinder.Eval(Container.DataItem,"AddHtml").ToString ) %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="100" HeaderText="<%$ Resources:admin,Edit %>" Visible="false">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/Affiliate/EditAffiliateBanner.aspx?IND=" & DataBinder.Eval(Container.DataItem, "AddId")%> ' ToolTip="Reklam Detayý"><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="40" HeaderText="<%$ Resources:admin,Delete %>">
                    <ItemTemplate>
                        <asp:CheckBox ToolTip="Silmek Ýçin Seçiniz." ID="chkdelete" runat="server"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
        </asp:DataGrid>
    </div>

    <div class="buttonGroup">
        <asp:LinkButton ID="btnDel" runat="server" CssClass="btnDefault"><i class="fa fa-trash-o"></i> <%= GetGlobalResourceObject("admin","Delete") %></asp:LinkButton>
    </div>

    <div class="dataCount">
        <ul>
            <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>  :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "TotalPage")%>  :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>  :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
        </ul>
    </div>
</div>
