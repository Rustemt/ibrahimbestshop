<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliatePayments" Codebehind="AffiliatePayments.ascx.vb" %>
<div id="affiliatepayments" class="module">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
    <div>
    <asp:DataGrid ID="dgPayments" runat="server" PagerStyle-PrevPageText="Prev"
                            PagerStyle-NextPageText="Next" PagerStyle-HorizontalAlign="Right" PagerStyle-Mode="NumericPages"
                            PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True"  cellpadding="4" Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                         <HeaderStyle CssClass="title" />
                            <Columns>
                            
                                <asp:BoundColumn DataField="PaymentId" HeaderText="IND" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="PaymentDate" SortExpression="PaymentDate" HeaderText="&#214;deme Tarihi"
                                    DataFormatString="{0:d}"></asp:BoundColumn>
                                <asp:BoundColumn Visible="true" DataField="Total" HeaderStyle-HorizontalAlign="Right" HeaderText="Toplam &#214;deme" DataFormatString="{0:0.00 TL}">
                                    <ItemStyle HorizontalAlign="Right" Width="120px" />
                                </asp:BoundColumn>
                                 <asp:TemplateColumn Visible="false"  HeaderText="Dekont">                                
                                    <ItemTemplate>
                                       <asp:Label runat="server" ID="lblTotal" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(Eval("Total")/ CurrencyRate) & " " & CurrencySymbolRight %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn  HeaderText="Dekont">                                
                                    <ItemTemplate>
                                        <asp:HyperLink CssClass="Global_Normal_Link" rel="lightbox" ID="HyperLink1" runat="Server"
                                            NavigateUrl='<%# DataBinder.Eval(Container.DataItem,"Path")  %> '
                                            ImageUrl="/storeadmin/images/Image.gif" Visible='<%# iif(DataBinder.Eval(Container.DataItem,"Path").tostring()<>"","True","False")  %> ' />
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField="Details" HeaderText="A&#231;ýklama"></asp:BoundColumn>
                            </Columns>
                            <PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" PageButtonCount="15"
                                CssClass="Global_TabloBaslik" Mode="NumericPages"></PagerStyle>
                        </asp:DataGrid>
<label><%=GetGlobalResourceObject("lang", "TotalRecords")%> : <asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label>
<label><%=GetGlobalResourceObject("lang", "TotalPages")%> : <asp:Label ID="lblPageCount" runat="server" ></asp:Label></label>
<label><%=GetGlobalResourceObject("lang", "CurrentPage")%> : <asp:Label ID="lblCurrentIndex" runat="server" ></asp:Label></label>
<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>                         
</div>
</div>
</div>
<script type="text/javascript"> 
 $(document).ready(function(){
			$("a[rel='lightbox']").colorbox({photo:true});		
		});
</script>
