<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="sproductlist.ascx.vb" Inherits=".sproductlist" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageFacebookProducts">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>

            <div class="buttonGroup">
                <asp:HyperLink ID="lnkAddNew" runat="server" data-width="1100" data-height="750" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
            </div>

            <div class="dataFilter boxToggle">
                <div class="toggleTitle toggleMini">
                    <div class="titleTab">
                        <ul class="tabMenu">
                            <li><a href="#"><%= GetGlobalResourceObject("admin", "Filter")%></a></li> 
                        </ul>
                    </div>
                    <div class="titleToggle"></div>
                    <div class="titleAdvanced" title="Gelişmiş Arama"><i class="fa fa-search-plus"></i></div>
                </div>
                <div class="toggleContent">
                    <div class="tabContent">
                        <div class="tab">
                            <div class="colGroup">
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Category")%></label>
                                    <asp:DropDownList ID="ddlCategories" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "ProductCode2")%>/IND</label>
                                    <asp:TextBox ID="txtStokCode" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlFilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like  @ProductCode + '%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%' + @ProductCode + '%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%' + @ProductCode "></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="= @ProductCode "></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "ProductName")%></label>
                                    <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like  @ProductName + '%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%' + @ProductName + '%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%' + @ProductName "></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="= @ProductName "></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Brand")%></label>
                                    <asp:TextBox autocomplete="off" ID="txtMark" runat="server"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="Markext" runat="server" TargetControlID="txtMark" ServicePath="/services/MarkService.asmx" ServiceMethod="GetMarks" MinimumPrefixLength="2" CompletionInterval="500" FirstRowSelected="true" EnableCaching="true" CompletionSetCount="12" OnClientItemSelected="selected" CompletionListCssClass="autocomplete_completionListElement"
                                        CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
                                    </cc1:AutoCompleteExtender>
                                    <asp:HiddenField ID="MarkHiddenField" runat="server" Value="" />
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Status")%></label>
                                    <asp:DropDownList ID="ddlActive" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Provider")%>(xml)</label>
                                    <asp:DropDownList ID="ddlProvider" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "ProductManager")%></label>
                                    <asp:DropDownList ID="ddlUser" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Campaign")%></label>
                                    <asp:DropDownList ID="ddlCampain" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col colAuto">
                                    <label>&nbsp;</label>
                                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%=GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                </div>
                            </div>
                            <div class="colGroup colGroupAdvanced">
                            	<div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "ProductStatus")%></label>
                                    <asp:DropDownList ID="ddlOption" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,FastShipping %>" Value="HizliKargo"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,BestCheapProduct %>" Value="EnUcuzUrun"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SameDayDelivery %>" Value="AyniGunTeslim"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SpecialtyProducts %>" Value="OzelUrun"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,DiscountProduct %>" Value="IndirimliUrun"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,LimitedNumberProducts %>" Value="SinirliSayidaUrun"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,OpportunityProduct %>" Value="FirsatUrunu"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,NewProducts %>" Value="YeniUrun"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,PricedShockProduct %>" Value="SokFiyatliUrun"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,GiftProducts %>" Value="HediyeliUrun"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "ConsumablesMaterial")%></label>
                                    <asp:DropDownList ID="ddlUsage" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ones %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Non %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Alternative")%></label>
                                    <asp:DropDownList ID="ddlAlternative" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ones %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Non %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Variant2")%></label>
                                    <asp:DropDownList ID="ddlVaryant" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ones %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Non %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "TextileGroup")%></label>
                                    <asp:DropDownList ID="ddlProductSizeOptions" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Picture")%></label>
                                    <asp:DropDownList ID="ddlImage" runat="server">
                                        <asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
                                        <asp:ListItem Value="1">Resimli</asp:ListItem>
                                        <asp:ListItem Value="0">Resimsiz(T&#252;m&#252;)</asp:ListItem>
                                        <asp:ListItem Value="2">Resimsiz(Hazırlanıyor)</asp:ListItem>
                                        <asp:ListItem Value="3">Resimsiz(xml)</asp:ListItem>
                                        <asp:ListItem Value="4">Resimsiz(Yok)</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Code1")%></label>
                                    <asp:TextBox ID="txtCode1" runat="server"></asp:TextBox>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "DateAdded")%></label>
                                    <ew:CalendarPopup ID="Tarih1" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text=">"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="Tarih2" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text="<"></ew:CalendarPopup>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "PriceChangeHistory")%></label>
                                    <ew:CalendarPopup ID="Tarih3" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text=">"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="Tarih4" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text="<"></ew:CalendarPopup>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "PriceRange")%></label>
                                    <asp:DropDownList ID="ddlFiyat" runat="server">
                                        <asp:ListItem>Alış</asp:ListItem>
                                        <asp:ListItem>Piyasa</asp:ListItem>
                                        <asp:ListItem>Havale</asp:ListItem>
                                        <asp:ListItem>1.Fiyat</asp:ListItem>
                                        <asp:ListItem>2.Fiyat</asp:ListItem>
                                        <asp:ListItem>3.Fiyat</asp:ListItem>
                                        <asp:ListItem>4.Fiyat</asp:ListItem>
                                        <asp:ListItem>5.Fiyat</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label>&nbsp;</label>
                                    <ew:NumericBox ID="txtFiyat" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
                                    <asp:DropDownList ID="ddlPb1" runat="server">
                                        <asp:ListItem>TL</asp:ListItem>
                                        <asp:ListItem>USD</asp:ListItem>
                                        <asp:ListItem>EURO</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label>&nbsp;</label>
                                    <ew:NumericBox ID="txtFiyat1" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
                                    <asp:DropDownList ID="ddlPb2" runat="server">
                                        <asp:ListItem>TL</asp:ListItem>
                                        <asp:ListItem>USD</asp:ListItem>
                                        <asp:ListItem>EURO</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "LoadWeight")%></label>
                                    <ew:NumericBox ID="txtDesi1" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <input type="button" value=">" />
                                    <ew:NumericBox ID="txtDesi2" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <input type="button" value="<" />
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "Remaining")%></label>
                                    <ew:NumericBox ID="txtEnvanter1" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <input type="button" value=">" />
                                    <ew:NumericBox ID="txtEnvanter2" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <input type="button" value="<" />
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>

            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" ShowFooter="True" HeaderStyle-CssClass="title">
                    <Columns>
                        <asp:BoundColumn DataField="ProductId" Visible="false" SortExpression="ProductId" HeaderText="IND"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductCode2 %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""%> '><%#Eval("ProductCode")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="MarkName" SortExpression="MarkName" HeaderText="<%$ Resources:admin,Brand %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="CODE1" Visible="false" SortExpression="CODE1" HeaderText="<%$ Resources:admin,Code1 %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="StockQty" SortExpression="StockQty" HeaderText="<%$ Resources:admin,Remaining %>"></asp:BoundColumn>
                        <asp:TemplateColumn SortExpression="IsActive" HeaderText="<%$ Resources:admin,Status %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="chkAktif" Checked='<%# DataBinder.Eval(Container.DataItem,"IsActive")%> ' ToolTip="Ürünü Aktif etmek için seçiniz." Enabled="false" OnCheckedChanged="chkAktif_CheckedChanged"></asp:CheckBox>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Facebook" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink6" runat="Server" data-width="1100" data-height="400" CssClass="btnIcon fancyContent" ToolTip="Facebook da paylaş" NavigateUrl='<%# "/admin/socialadmin/facebook/facebookUser.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""%> '><i class="fa fa-facebook"></i> </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <%--
				<asp:TemplateColumn HeaderText="Twitter">
					<ItemTemplate>
						<asp:HyperLink ToolTip="Twitter da paylaş" CssClass="button" ID="Hyperlink5" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/storeadmin/product/EditAlteratives.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  ""","""",""width=600,height=400,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' ImageUrl="/storeadmin/images/social/twitter.png"></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
                        --%>
                        <%--
				<asp:TemplateColumn HeaderText="Qapel">
					<ItemTemplate>
						<asp:HyperLink ToolTip="Qapel da paylaş" CssClass="button" ID="Hyperlink7a" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/storeadmin/product/EditProductVariants.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  ""","""",""width=600,height=400,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '
							ImageUrl="/storeadmin/images/social/qapel.png">
						</asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Qapel">
					<ItemStyle HorizontalAlign="center"></ItemStyle>
					<ItemTemplate>
						<asp:CheckBox ID="chbQapelSat" runat="server" />
					</ItemTemplate>
				</asp:TemplateColumn>
                        --%>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Picture %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <a class="btnIcon fancyContent" data-width="600" data-height="400" href='<%# "/admin/ecommerce/product/EditImages.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""%> '>
                                    <i class="fa fa-picture-o"></i>
                                </a>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Video" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="lnkvideo" runat="Server" data-width="600" data-height="400" CssClass="btnIcon fancyContent" ToolTip="Ürün Videosu" NavigateUrl='<%# "/admin/ecommerce/product/EditVideo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""%> '><i class="fa fa-video-camera"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" data-width="1100" data-height="750" CssClass="btnIcon fancyContent" ToolTip="Ürün Detayı" NavigateUrl='<%# "/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <%--
				<asp:TemplateColumn HeaderText="Sil">
					<ItemTemplate>
						<asp:CheckBox ToolTip="Silmek İçin Seçiniz." ID="chkdelete" runat="server"></asp:CheckBox>
					</ItemTemplate>
					<FooterTemplate>
						<input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkdelete', this.checked);" /> Tümü
					</FooterTemplate>
				</asp:TemplateColumn>
                        --%>
                    </Columns>
                    <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
                </asp:DataGrid>
            </div>

            <div class="buttonGroup" runat="server" visible="false">
                <asp:Button ID="btnexportxml" runat="server" CssClass="btnDefault" Text="Xml'e Gönder" />
                <asp:Button ID="btnExport" runat="server" CssClass="btnDefault" Text="Excel'e Gönder" />
                <asp:Button ID="btnDel" runat="server" CssClass="btnDefault" Text="Güncelle ve Sil" />
            </div>

            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalRecording")%> :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalPage")%> :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "CurrentPage")%> :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        function selected(source, eventArgs) {
            hidobj = document.getElementById("<%=MarkHiddenField.ClientID%>");
	    hidobj.value = eventArgs.get_value();
	}
    </script>
</div>
