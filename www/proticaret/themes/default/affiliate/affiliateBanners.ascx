<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateBanners" Codebehind="AffiliateBanners.ascx.vb" %>
<div id="affiliatebanners" class="module">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
    <div>  
        <asp:DataGrid ID="dgbanners" runat="server"  PagerStyle-PrevPageText="Prev"
            PagerStyle-NextPageText="Next" PagerStyle-HorizontalAlign="Right" PagerStyle-Mode="NumericPages"
            PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True"  cellpadding="4" Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
            <HeaderStyle CssClass="title" />            
            <Columns>
                <asp:BoundColumn DataField="AddId" HeaderText="IND" Visible="False"></asp:BoundColumn>
                <asp:BoundColumn DataField="AddName" HeaderText="<%$ Resources:lang, AddName%>">
                </asp:BoundColumn>
                <asp:TemplateColumn ItemStyle-Width="105px" HeaderText="<%$ Resources:lang, AddAppearance%>">
                    <ItemTemplate>
                        <img id="img" runat="server" alt="" border="0" width="100" src='<%# container.dataitem("AddImage") %>'
                            visible='<%# iif(DataBinder.Eval(Container.DataItem,"AddImage").tostring()<>"","True","False")  %>'>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:lang, AddHtml%>">
                    <ItemTemplate>
                        <asp:TextBox ID="txthtmlcode" Width="100%" TextMode="MultiLine" Height="100px" runat="server"
                            Text='<%# DataBinder.Eval(Container.DataItem,"AddHtml") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                    ItemStyle-CssClass="SatisOrtakligi_Banner_Onizleme" HeaderText="<%$ Resources:lang, AddView%>">
                    <ItemTemplate>
                        <a class="button" href='<%# baseurl & "/Affiliate/ShowAffiliate.aspx?AddId=" & DataBinder.Eval(Container.DataItem,"AddId")  %>' onclick='javascript:$.colorbox({href:"<%# baseurl & "/Affiliate/ShowAffiliate.aspx?AddId=" & DataBinder.Eval(Container.DataItem,"AddId")  %>"}); return false;'><%=GetGlobalResourceObject("lang", "AddView")%></a>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" PageButtonCount="15"
                CssClass="Admin_TabloBaslik" Mode="NumericPages"></PagerStyle>
        </asp:DataGrid>
<label><%=GetGlobalResourceObject("lang", "TotalRecords")%> : <asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label>
<label><%=GetGlobalResourceObject("lang", "TotalPages")%> : <asp:Label ID="lblPageCount" runat="server" ></asp:Label></label>
<label><%=GetGlobalResourceObject("lang", "CurrentPage")%> : <asp:Label ID="lblCurrentIndex" runat="server" ></asp:Label></label>
<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
</div>
</div>
</div>