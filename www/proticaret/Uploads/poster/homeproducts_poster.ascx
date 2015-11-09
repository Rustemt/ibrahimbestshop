<%@ register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ register assembly="AjaxControls" namespace="AjaxControls" tagprefix="asp" %>
<%@ register tagprefix="ew" namespace="eWorld.UI" assembly="eWorld.UI" %>
<%@ register tagprefix="uc1" tagname="DesktopModuleFootter" src="../../DesktopModuleFootter.ascx" %>
<%@ control language="vb" autoeventwireup="false" inherits="ASPNetPortal.HomeProducts"
    enableviewstate="True" codebehind="homeproducts.ascx.vb" %>
<%@ register tagprefix="uc1" tagname="DesktopModuleTitle" src="../../DesktopModuleTitle.ascx" %>
<uc1:desktopmoduletitle id="DMT" enableviewstate="False" runat="server"></uc1:desktopmoduletitle>
<asp:label id="lblMsg" runat="server" visible="False" cssclass="Global_Mesaj">Bu Kategoride  Ürün Sergilenmemektedir.</asp:label>
<asp:updatepanel id="UpdatePanel1" runat="server" updatemode="Conditional">
    <contenttemplate>
        <table class="UrunListesi_Modul" id="tblUrunListesi" cellspacing="0" cellpadding="0" width="100%" style="text-align:center" border="0" runat="server">
            <tr class="UrunListesiFiltrePanel">
                <td align="center">
                    <table cellspacing="0" cellpadding="0" width="100%" style="text-align:center" border="0">
                        <tr>
                            <td style="height:2px"></td>
                            <td align="right" style="height:2px"></td>
                            <td  style="height:2px;width:10px"></td>
                        </tr>
                        <tr>
                            <td style="height: 9px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td style="white-space:nowrap;"  align="right">
                                <asp:CheckBox ID="chkStock" runat="server" CssClass="Global_Normal_CheckBox" TextAlign="Left" Text="Stokta Olanlar" AutoPostBack="True"></asp:CheckBox>&nbsp;
                                <asp:Label ID="Label2" runat="server" CssClass="Global_Normal_Label">Ürün Gösterimi :</asp:Label>&nbsp;<asp:DropDownList ID="ddlShow" runat="server" CssClass="Global_Normal_ComboBox" AutoPostBack="True">
                                    <asp:ListItem Value="Detay">Detay</asp:ListItem>
                                    <asp:ListItem Value="Liste">Liste</asp:ListItem>
                                </asp:DropDownList>&nbsp;
                                <asp:Label ID="Label3" runat="server" CssClass="Global_Normal_Label">Sýralama :</asp:Label>&nbsp;<asp:DropDownList ID="ddlOrderBy" runat="server" CssClass="Global_Normal_ComboBox" AutoPostBack="True">
                                    <asp:ListItem Value="Order by ISNULL(case StockQty when 0 then  99999999  else ShowOrder end ,'100')">Varsayýlan</asp:ListItem>
                                    <asp:ListItem Value="Order by ProductName">Ada Göre (A'dan Z'ye)</asp:ListItem>
                                    <asp:ListItem Value="Order by ProductName Desc">Ada Göre (Z'den A'ya)</asp:ListItem>
                                    <asp:ListItem Value="Order by (Rate1*SatisFiyati1)">Fiyata Göre (Ucuzdan Pahalýya)</asp:ListItem>
                                    <asp:ListItem Value="Order by (Rate1*SatisFiyati1) desc">Fiyata Göre (Pahalýdan Ucuza)</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="white-space:nowrap;" >&nbsp; </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="UrunListesiListePanel">
                <td id="pnlList"  style="white-space:nowrap;width:100%" runat="server">
                    <asp:DataGrid ID="dlList" runat="server" Width="100%" PagerStyle-PrevPageText="Prev" PagerStyle-NextPageText="Next" PagerStyle-HorizontalAlign="Right" PagerStyle-Mode="NumericPages" AutoGenerateColumns="False" AllowSorting="True" ShowFooter="True" CellPadding="1" BorderWidth="0px">
                        <AlternatingItemStyle CssClass="Global_TabloAlternatifSatir"></AlternatingItemStyle>
                        <ItemStyle Width="100%" CssClass="Global_TabloSatir"></ItemStyle>
                        <HeaderStyle Wrap="False" CssClass="Global_TabloBaslik"></HeaderStyle>
                        <FooterStyle CssClass="Global_TabloBaslik"></FooterStyle>
                        <Columns>
                            <asp:BoundColumn Visible="False" DataField="ProductId" SortExpression="ProductId" HeaderText="IND">
                                <HeaderStyle Width="0px"></HeaderStyle>
                            </asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="Ürün Resmi">
                                    <ItemTemplate><a href='<%# string.format(BaseUrl & "{0}" & ".aspx?CatID={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatID")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                        <asp:Image ID="Image3" runat="server" CssClass="UrunListesi_Resim" BorderStyle="None" ToolTip='<%# container.dataitem("ProductName") %>' oncontextmenu='return false' ImageUrl='<%# BaseUrl & "/emarket/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=" & 60 %>'></asp:Image></a> </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn Visible="False" HeaderText="Stok Kodu">
                                <ItemTemplate>
                                    <asp:HyperLink ID="lnkProductCode" runat="server" CssClass="Global_Normal_Link" Text='<%# container.dataitem("ProductCode") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx?CatID={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatID")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                    </asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="&#220;r&#252;n Adý">
                                <ItemTemplate>
                                    <asp:HyperLink ID="Hyperlink7" runat="server" CssClass="Global_Normal_Link" Text='<%# container.dataitem("ProductName") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx?CatID={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatID")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                    </asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Fiyatý">
                                <HeaderStyle Wrap="False" HorizontalAlign="Right" Width="60px"></HeaderStyle>
                                <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="Label38" runat="server" CssClass="UrunListesi_Fiyat_Text" Text='<%# formatCurDoviz(container.dataitem("SatisFiyati")) + " " + container.dataitem("CurrencyName") + "+KDV"%>'>
                                    </asp:Label>
                                </ItemTemplate>
                                <FooterStyle Wrap="False"></FooterStyle>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn Visible="False" HeaderText="Size &#214;zel">
                                <HeaderStyle Wrap="False" HorizontalAlign="Right" Width="60px"></HeaderStyle>
                                <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" CssClass="UrunListesi_Fiyat_Text" Visible='<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 0) %>'
                                        Text='<%# formatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati"),container.dataitem("Indirim")),UserIndirim))  + " " + container.dataitem("CurrencyName") + "+KDV"%>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="KDV Dahil">
                                <HeaderStyle Wrap="False" HorizontalAlign="Right" Width="60px"></HeaderStyle>
                                <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="Label19" runat="server" CssClass="UrunListesi_Fiyat_Text" Text='<%# formatCurTL(CalcKdvDahil(container.dataitem("SatisFiyati") * container.dataitem("Rate"),container.dataitem("KdvRate")))   %>'>
                                    </asp:Label>
                                </ItemTemplate>
                                <FooterStyle Wrap="False"></FooterStyle>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Adet">
                                <HeaderStyle Wrap="False" HorizontalAlign="center" Width="50px"></HeaderStyle>
                                <ItemStyle Wrap="False" HorizontalAlign="center"></ItemStyle>
                                <ItemTemplate>
                                    <ew:NumericBox CssClass="Global_Normal_TextBox" TextAlign="Right" MaxLength="4" ID="txtQty" DecimalPlaces="0" runat="server" Width="30px" PositiveNumber="True">0</ew:NumericBox>
                                </ItemTemplate>
                                <FooterStyle Wrap="False" HorizontalAlign="center"></FooterStyle>
                                <FooterTemplate>
                                    <asp:LinkButton ID="btnAdd" runat="server" CssClass="Global_Normal_Link" CommandName="AddAll">Sepete Ekle</asp:LinkButton>
                                </FooterTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Sepete Ekle">
                                <HeaderStyle Wrap="False"></HeaderStyle>
                                <ItemStyle Wrap="False"></ItemStyle>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAdd" runat="server" CssClass="Global_Normal_Link" CommandName="Add" Visible='<%# (container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE" ) %>' CausesValidation="false" Text="Sepete Ekle">
                                    </asp:LinkButton>
                                    <asp:Label ID="Label33" runat="server" CssClass="Global_Mesaj" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>' >
																							Stokta Yok!</asp:Label>
                                </ItemTemplate>
                                <FooterStyle Wrap="False"></FooterStyle>
                            </asp:TemplateColumn>
                        </Columns>
                        <PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" PageButtonCount="15" CssClass="Global_TabloBaslik" Mode="NumericPages"></PagerStyle>
                    </asp:DataGrid></td>
            </tr>
            <tr>
                <td id="pnlGalery" align="center" runat="server">
                    <asp:DataList ID="dlGalery" runat="server" Width="100%" CellPadding="0" HorizontalAlign="center" RepeatColumns="4" DataKeyField="ProductID" RepeatDirection="Horizontal">
                        <ItemStyle HorizontalAlign="center" Height="100%" VerticalAlign="Top"></ItemStyle>
                        <ItemTemplate>
                            <table id="Table1" runat="server" class="UrunListesi_Sol_Urun_Panel" cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td valign="top" align="center">
                                        <div class="UrunListesi_Link_Arkaplan">
                                            <asp:HyperLink ID="HyperLink6q" runat="server" CssClass="UrunListesi_Link" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif(Request.QueryString.Item("tabId")="","","?tabId=" & Request.QueryString.Item("tabId")) %>'
                                                Text='<%# container.dataitem("CatName") %>'>
                                            </asp:HyperLink></div>
                                        
                                        <table class="UrunListesiFiyatPanel" cellspacing="0" cellpadding="0" border="0">
                                        <tr>
                                                <td class="UrunListesi_Resim_Div" >
                                                <a href='<%# string.format(BaseUrl & "{0}" & ".aspx?CatID={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatID")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                            <asp:Image ID="Image1q" runat="server" CssClass="UrunListesi_Resim" BorderStyle="None" AlternateText='<%# container.dataitem("ProductName") %>' ToolTip='<%# container.dataitem("ProductName") %>' ImageUrl='<%# BaseUrl & "/emarket/makethumb.aspx?file=" + container.dataitem("Path") & "&intSize=" & intSize %>'></asp:Image></a>
                                                   </td>
                                            </tr>
                                            <tr>
                                                <td class="UrunListesi_UrunAdi_Link">
                                                    <asp:HyperLink ID="lnkProductName" runat="server" CssClass="UrunListesi_UrunAdi_Link" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx?CatID={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatID")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'
                                                        Text='<%# container.dataitem("ProductName")  %>'>
                                                    </asp:HyperLink></td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="Label41" runat="server" CssClass="UrunListesi_Marka_Link" Text='<%# container.dataitem("MarKName") %>'>
                                                    </asp:Label>
                                                    
                                                    <%--<asp:HyperLink ID="HyperLink1" runat="server" CssClass="UrunListesi_Marka_Link" NavigateUrl='<%# string.format(BaseUrl & "/default.aspx?MarkID={0}",container.dataitem("MarkID")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'
                                                        Text='<%# container.dataitem("MarKName")  %>'>
                                                    </asp:HyperLink>--%>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="Label45" runat="server" CssClass="UrunListesi_Code14_Label" Text='<%# container.dataitem("Code14") %>'>
                                                    </asp:Label></td>
                                            </tr>
                                                <tr>
                                                <td align="center">
                                                    <asp:Label ID="Label1" runat="server" CssClass="UrunListesi_Code15_Label" Text='<%# container.dataitem("Code15") %>'>
                                                    </asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label5q" runat="server" CssClass="UrunListesi_Aciklama_Label" Text='<%# container.dataitem("Description") %>'>
                                                    </asp:Label></td>
                                            </tr>
                                            <% If (ConfigurationManager.AppSettings("OnlyUsersCanSeePrice")="True" and HttpContext.Current.User.Identity.IsAuthenticated()) or ConfigurationManager.AppSettings("OnlyUsersCanSeePrice")<>"True" Then  %>
                                            <%-- Kdv Haric--%>
                                            <% If ConfigurationManager.AppSettings("UrunListesiSatisFiyati3Visible") = "True" Then%>                                                                              
                                                                                 <tr>
                                                                                    <td class="UrunListesi_Fiyat3_Text" >
                                                                                        <asp:Label ID="lblFiyat3" runat="server" CssClass="UrunListesi_Fiyat3_Label"><%=IIf(ConfigurationManager.AppSettings("UrunListesiSatisFiyati3Label") <> "", ConfigurationManager.AppSettings("UrunListesiSatisFiyati3Label") & " : ", "Piyasa Fiyatý :")%></asp:Label>
                                                                                        <asp:Label ID="lblFiyat3b" runat="server" CssClass="UrunListesi_Fiyat3_Text"><%#formatCurDoviz(Container.DataItem("SatisFiyati3")) + " " + Container.DataItem("Currency3") + "+ KDV"%></asp:Label>                                                                                        
                                                                                </td></tr>
                                                                                
                                                                                 
                                            <% End If%>
                                            <% If ConfigurationManager.AppSettings("UrunListesiSatisFiyati2Visible") = "True" Then%>                                                                              
                                                                                 <tr>
                                                                                    <td class="UrunListesi_Fiyat2_Text" >
                                                                                        <asp:Label ID="lblFiyat2" runat="server" CssClass="UrunListesi_Fiyat2_Label"><%=IIf(ConfigurationManager.AppSettings("UrunListesiSatisFiyati2Label") <> "", ConfigurationManager.AppSettings("UrunListesiSatisFiyati2Label") & " : ", "Liste Fiyatý :")%></asp:Label>
                                                                                        <asp:Label ID="lblFiyat2b" runat="server" CssClass="UrunListesi_Fiyat2_Text"><%#formatCurDoviz(Container.DataItem("SatisFiyati2")) + " " + Container.DataItem("Currency2") + "+ KDV"%></asp:Label>
                                                                                </td></tr>
                                                                                
                                                                                 
                                            <% End If%>
                                             <% If ConfigurationManager.AppSettings("UrunListesiSatisFiyati1Visible") = "True" Then%>                                                                              
                                                                                 <tr>
                                                                                    <td class="UrunListesi_Fiyat1_Text" >
                                                                                        <asp:Label ID="lblFiyat1" runat="server" CssClass="UrunListesi_Fiyat1_Label"><%=IIf(ConfigurationManager.AppSettings("UrunListesiSatisFiyati1Label") <> "", ConfigurationManager.AppSettings("UrunListesiSatisFiyati1Label") & " : ", "Bizdeki Fiyatý :")%></asp:Label>
                                                                                        <asp:Label ID="lblFiyat1b" runat="server" CssClass="UrunListesi_Fiyat1_Text"><%#formatCurDoviz(Container.DataItem("SatisFiyati1")) + " " + Container.DataItem("Currency1") + "+ KDV"%></asp:Label>
                                                                                </td></tr>
                                                                                
                                                                                 
                                            <% End If%>
                                            <% If Not ConfigurationManager.AppSettings("UrunListesiSatisFiyatiVisible") = "False" Then%>
                                            <tr>
                                                <td class="UrunListesi_Fiyat_Text">
                                                <asp:Label ID="lblFiyat" runat="server" CssClass="UrunListesi_Fiyat_Label"><%=IIf(ConfigurationManager.AppSettings("UrunListesiSatisFiyatiLabel") <> "", ConfigurationManager.AppSettings("UrunListesiSatisFiyatiLabel") & " : ", "Fiyatý :")%></asp:Label>                                                    
                                                   <asp:Label ID="lblFiyatb" runat="server" CssClass="UrunListesi_Fiyat_Text"><%#formatCurDoviz(Container.DataItem("SatisFiyati")) + " " + Container.DataItem("CurrencyName") + "+ KDV"%></asp:Label>
                                                </td>
                                            </tr>
                                            <% End If%>
                                            <% If Not ConfigurationManager.AppSettings("UrunListesiSatisFiyatiSizeOzelVisible") = "False" Then%> 
                                            <tr>
                                                <td class="UrunListesi_Fiyat_SizeOzel">
                                                    <asp:Label ID="Label11" runat="server" Visible="<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 0) %>"
                                                        CssClass="UrunListesi_Fiyat_SizeOzel_Label"><%=IIf(ConfigurationManager.AppSettings("UrunListesiSatisFiyatiSizeOzelLabel") <> "", ConfigurationManager.AppSettings("UrunListesiSatisFiyatiSizeOzelLabel") & " : ", "Size Özel : ")%></asp:Label>
                                                    <asp:Label ID="Label13" runat="server" Visible="<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 0) %>"
                                                        CssClass="UrunListesi_Fiyat_SizeOzel" Text='<%# formatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati"),container.dataitem("Indirim")),UserIndirim))  + " " + container.dataitem("CurrencyName") + "+ KDV" %>'>
                                                    </asp:Label>
                                                </td>
                                            </tr>
                                            <% End If%>
                                            <%-- Kdv Dahil--%>
                                            <% If ConfigurationManager.AppSettings("UrunListesiSatisFiyati3KdvVisible") = "True" Then%>                                                                              
                                                                                 <tr>
                                                                                    <td class="UrunListesi_Fiyat3_Text" >
                                                                                        <asp:Label ID="lblFiyat3Kdv" runat="server" CssClass="UrunListesi_Fiyat3_Label"><%=IIf(ConfigurationManager.AppSettings("UrunListesiSatisFiyati3KdvLabel") <> "", ConfigurationManager.AppSettings("UrunListesiSatisFiyati3KdvLabel") & " : ", "Piyasa Fiyatý :")%></asp:Label>
                                                                                        <asp:Label ID="lblFiyat3Kdvb" runat="server" CssClass="UrunListesi_Fiyat3_Text"><%#formatCurTL(CalcKdvDahil(Container.DataItem("SatisFiyati3") * Container.DataItem("Rate3"), Container.DataItem("KdvRate")))%></asp:Label>                                                                                        
                                                                                </td></tr>
                                                                                
                                                                                 
                                            <% End If%>
                                            <% If ConfigurationManager.AppSettings("UrunListesiSatisFiyati2KdvVisible") = "True" Then%>                                                                              
                                                                                 <tr>
                                                                                    <td class="UrunListesi_Fiyat2_Text" >
                                                                                        <asp:Label ID="lblFiyat2Kdv" runat="server" CssClass="UrunListesi_Fiyat2_Label"><%=IIf(ConfigurationManager.AppSettings("UrunListesiSatisFiyati2KdvLabel") <> "", ConfigurationManager.AppSettings("UrunListesiSatisFiyati2KdvLabel") & " : ", "Liste Fiyatý :")%></asp:Label>
                                                                                        <asp:Label ID="lblFiyat2Kdvb" runat="server" CssClass="UrunListesi_Fiyat2_Text"><%#formatCurTL(CalcKdvDahil(Container.DataItem("SatisFiyati2") * Container.DataItem("Rate2"), Container.DataItem("KdvRate")))%></asp:Label>
                                                                                </td></tr>
                                                                                
                                                                                 
                                            <% End If%>
                                             <% If ConfigurationManager.AppSettings("UrunListesiSatisFiyati1KdvVisible") = "True" Then%>                                                                              
                                                                                 <tr>
                                                                                    <td class="UrunListesi_Fiyat1_Text" >
                                                                                        <asp:Label ID="lblFiyat1Kdv" runat="server" CssClass="UrunListesi_Fiyat1_Label"><%=IIf(ConfigurationManager.AppSettings("UrunListesiSatisFiyati1KdvLabel") <> "", ConfigurationManager.AppSettings("UrunListesiSatisFiyati1KdvLabel") & " : ", "Bizdeki Fiyatý :")%></asp:Label>
                                                                                        <asp:Label ID="lblFiyat1Kdvb" runat="server" CssClass="UrunListesi_Fiyat1_Text"><%#formatCurTL(CalcKdvDahil(Container.DataItem("SatisFiyati1") * Container.DataItem("Rate1"), Container.DataItem("KdvRate")))%></asp:Label>
                                                                                </td></tr>
                                                                                
                                                                                 
                                            <% End If%>
                                            <% If Not ConfigurationManager.AppSettings("UrunListesiSatisFiyatiKdvVisible") = "False" Then%> 
                                            <tr>
                                                <td class="UrunListesi_Fiyat_KDVDahil">
                                                
                                                    <asp:Label ID="Label35" runat="server" CssClass="UrunListesi_Fiyat_KDVDahil_Label"><%=IIf(StokIskActive Or UserIndirim > 0 Or StokIsk > 0, IIf(ConfigurationManager.AppSettings("UrunListesiSatisFiyatiKdvSizeOzelLabel") <> "", ConfigurationManager.AppSettings("UrunListesiSatisFiyatiKdvSizeOzelLabel") & " : ", "Size Özel : "), IIf(ConfigurationManager.AppSettings("UrunListesiSatisFiyatiKdvLabel") <> "", ConfigurationManager.AppSettings("UrunListesiSatisFiyatiKdvLabel") & " : ", "Kdv Dahil : "))%></asp:Label>
                                                    <asp:Label ID="Label37" runat="server" CssClass="UrunListesi_Fiyat_KDVDahil" Text='<%# formatCurTL(CalcKdvDahil(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")* container.dataitem("Rate"),container.dataitem("Indirim")),UserIndirim),container.dataitem("KdvRate")))   %>'>
                                                    </asp:Label></td>
                                            </tr>
                                            <% End If%>
                                            <% If Not ConfigurationManager.AppSettings("UrunListesiSatisFiyatiKKVisible") = "False" Then%>
                                            <tr>
                                                <td class="UrunListesi_Fiyat_KrediKarti">
                                               <asp:Label ID="Label5" runat="server" Visible="<%# (KrediKartiIndirimi>0) %>"
                                                        CssClass="UrunListesi_Fiyat_KrediKarti_Label"><%=IIf(ConfigurationManager.AppSettings("UrunListesiSatisFiyatiKKLabel") <> "", ConfigurationManager.AppSettings("UrunListesiSatisFiyatiKKLabel") & " : ", "Tek Çekim : ")%></asp:Label>
                                                    <asp:Label ID="Label6" runat="server" Visible="<%# (KrediKartiIndirimi>0) %>"
                                                        CssClass="UrunListesi_Fiyat_KrediKarti" Text='<%# formatCurTL(CalcKdvDahil(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")* container.dataitem("Rate"),container.dataitem("Indirim")),UserIndirim),KrediKartiIndirimi),container.dataitem("KdvRate")))  %>'>
                                                    </asp:Label>
                                                </td>
                                            </tr>
                                            <% End If%>
                                            <% If Not ConfigurationManager.AppSettings("UrunListesiSatisFiyatiHavaleVisible") = "False" Then%> 
                                             <tr>
                                                <td class="UrunListesi_Fiyat_Havale">
                                               <asp:Label ID="Label9" runat="server" Visible='<%# (HavaleIndirimi>0 Or (ChkNullToNumber(container.dataitem("SatisFiyati0")) > 0 And ChkNullToNumber(container.dataitem("Rate0")) > 0)) %>'
                                                        CssClass="UrunListesi_Fiyat_Havale_Label"><%=IIf(ConfigurationManager.AppSettings("UrunListesiSatisFiyatiHavaleLabel") <> "", ConfigurationManager.AppSettings("UrunListesiSatisFiyatiHavaleLabel") & " : ", "Havale Ýle : ")%></asp:Label>
                                                    <asp:Label ID="Label10" runat="server" Visible='<%# (HavaleIndirimi>0 Or (ChkNullToNumber(container.dataitem("SatisFiyati0")) > 0 And ChkNullToNumber(container.dataitem("Rate0")) > 0)) %>'
                                                        CssClass="UrunListesi_Fiyat_Havale" Text='<%# iif(container.dataitem("Satisfiyati0")>0, formatCurTL(CalcKdvDahil(CalcIndirim(container.dataitem("SatisFiyati0")* container.dataitem("Rate"),UserIndirim),container.dataitem("KdvRate"))) ,formatCurTL(CalcKdvDahil(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")* container.dataitem("Rate"),container.dataitem("Indirim")),UserIndirim), HavaleIndirimi),container.dataitem("KdvRate"))))   %>'>
                                                    </asp:Label>
                                                </td>
                                            </tr>
                                             <% End If%>
                                            <tr>
                                                <td style="width:4px;height:7px"></td>
                                            </tr>
                                            <tr>
                                                <td align="center">
<asp:HyperLink ID="lnkseeinframe" runat="server" ImageUrl="/uploads/poster/images/see_it_frame.gif" ToolTip="Çerçeveli Göster" CssClass="UrunListesi_Cerceve_Link" Visible='<%# iif(container.dataitem("Code10").tostring()="poster",True,False) %>' NavigateUrl='<%# BaseUrl & "/Uploads/poster/productdetailsposter.aspx?pid=" & container.dataitem("ProductId") & "&pcode=" & container.dataitem("ProductCode") %>'></asp:HyperLink>
                                                    <asp:LinkButton ID="btnAdd1" runat="server" CssClass="UrunListesi_SepeteEkle_Link" CommandName="Update" Visible='<%# (container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE" ) %>' CausesValidation="false" Text="" CommandArgument='<%# container.dataitem("ProductId") %>'>
                                                    </asp:LinkButton>
                                                    <asp:Label ID="Label31" runat="server" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>' CssClass="Global_Mesaj"><%# OutOfStockMessage %></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="Hyperlink9" runat="server" CssClass="UrunListesi_Taksit_Link" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""" & BaseUrl & "/emarket/TaksitList.aspx?PId=6&amp;ProductId=" &amp; container.dataitem("ProductId") &amp; ""","""",""width=100,height=100,scrollbars=1,toolbar=0,status=1,resizable=1"")" %>'>
                                                    </asp:HyperLink></td>
                                            </tr>
                                            <% end if %>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                            <tr>
                                                <td class="UrunListesi_Alt_Sol_Resim" id="imgBottomLeft" runat="server"></td>
                                                <td class="UrunListesi_Footter" id="imgModulFootter" runat="server"></td>
                                                <td class="UrunListesi_Alt_Sag_Resim" id="imgBottomRight" runat="server"></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <div class="UrunListesi_UrunAlti"></div>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <table class="UrunListesi_Separator" cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td></td>
                                </tr>
                            </table>
                        </SeparatorTemplate>
                    </asp:DataList>
                    <table cellspacing="1" cellpadding="2" width="100%" border="0">
                        <tr class="MainText">
                            <td  style="white-space:nowrap;width:33%">
                                <asp:Label ID="TotalMessages" runat="server" CssClass="Global_Normal_Label"></asp:Label></td>
                            <td   align="center" style="width:33%;white-space:nowrap;">
                                <asp:Label ID="RecordsCount" runat="server" CssClass="Global_Normal_Label"></asp:Label></td>
                            <td class="Global_Page_Link" align="right" style="white-space:nowrap;width:33%">
                                <asp:Label ID="PagingLabel" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </contenttemplate>
    <triggers></triggers>
</asp:updatepanel>
<%--<asp:ModalUpdateProgress ID="ModalUpdateProgress1" runat="server" DisplayAfter="0" BackgroundCssClass="modalProgressGreyBackground">
    <ProgressTemplate>
        <div class="modalPopup">Yükleniyor...
            <br />
            <br />
            Lütfen Bekleyiniz... </div>
    </ProgressTemplate>
</asp:ModalUpdateProgress>--%>
