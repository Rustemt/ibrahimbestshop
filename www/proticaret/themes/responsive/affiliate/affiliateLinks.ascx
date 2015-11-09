<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateLinks" Codebehind="AffiliateLinks.ascx.vb" %>
<div id="affiliatelinks" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1"> 
    <div class="dataTable">
        <asp:DataGrid ID="dglinks" runat="server" PagerStyle-PrevPageText="Prev"
            PagerStyle-NextPageText="Next" PagerStyle-HorizontalAlign="Right" PagerStyle-Mode="NumericPages"
            PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True"  cellpadding="4" Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
            <HeaderStyle CssClass="title" />
            <Columns>
            
                <asp:BoundColumn DataField="AddId" HeaderText="IND" Visible="False"></asp:BoundColumn>
                <asp:BoundColumn DataField="AddName" HeaderText="<%$ Resources:lang, AddName%>" ></asp:BoundColumn>
                <asp:BoundColumn DataField="AddHtml" HeaderText="<%$ Resources:lang, AddAppearance%>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:lang, AddHtml%>">
                <ItemTemplate>
                <asp:TextBox ID="txthtmlcode" Width="100%" TextMode="MultiLine" Height="100px" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"AddHtml") %>'></asp:TextBox>
                </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, AddView%>" ItemStyle-HorizontalAlign="Center" >                                
                    <ItemTemplate>                                     
                       <a href='<%# baseurl & "/Affiliate/ShowAffiliate.aspx?AddId=" & DataBinder.Eval(Container.DataItem,"AddId")  %> '  onclick='javascript:$.colorbox({href:"<%# baseurl & "/Affiliate/ShowAffiliate.aspx?AddId=" & DataBinder.Eval(Container.DataItem,"AddId")  %>"}); return false;'><%=GetGlobalResourceObject("lang", "AddView")%></a>
                    </ItemTemplate>
                </asp:TemplateColumn>                                
            </Columns>
            <PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" PageButtonCount="15" CssClass="Global_TabloBaslik dataPager" Mode="NumericPages"></PagerStyle>
        </asp:DataGrid>
        </div>
        
        <div class="dataCount">
        	<ul>
            	<li><%=GetGlobalResourceObject("lang", "TotalRecords")%> : <b><asp:Label ID="lblTotalRecord" CssClass="textRed" runat="server"></asp:Label></b></li>
                <li><%=GetGlobalResourceObject("lang", "TotalPages")%> : <b><asp:Label ID="lblPageCount" CssClass="textRed" runat="server"></asp:Label></b></li>
                <li><%=GetGlobalResourceObject("lang", "CurrentPage")%> : <b><asp:Label ID="lblCurrentIndex" CssClass="textRed" runat="server"></asp:Label></b></li>
            </ul>
        </div>
        <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	</div>
</div>