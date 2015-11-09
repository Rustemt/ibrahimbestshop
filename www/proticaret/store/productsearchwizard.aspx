
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.productsearchwizard" Codebehind="productsearchwizard.aspx.vb" %>
<%@ Register Assembly="Flan.Controls" Namespace="Flan.Controls" TagPrefix="cc2" %>
<%@ Register Assembly="RealTimeSearch" Namespace="RealTimeSearch" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">  
    <title>Ürün Arama</title>
</head>
<body>
<div id="container">
    <form id="Form1" name="Form1" runat="server">

        <script type="text/javascript" language="javascript">
        
       var _updateProgressDiv;
        var _backgroundDiv;
        
        
        function pageLoad(sender, args){    
            //  register for our events
            Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(beginRequest);
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequest);    
           
            //  get the updateprogressdiv
            _updateProgressDiv = $get('updateProgressDiv');
              
        }        
        
        function beginRequest(sender, args){
            // make it visible
         //   alert(sender._postBackSettings.panelID);
   //  fetch the gridview
    var sndid=''
  sndid=sender._postBackSettings.panelID.split('|')[0].replace('uPnl','tbl');
  if (sndid == 'tblWizardItems')
  {
  sndid='tblSearching'
  }
           var  _table = $get(sndid);
     //alert(_table);        
            //  create the div that we will position over the table
            //  during postbacks
            _backgroundDiv = document.createElement('div');
            _backgroundDiv.style.display = 'none';
            _backgroundDiv.style.zIndex = 10000;
            _backgroundDiv.className = 'background';
            
            //  add the element to the DOM
            _table.parentNode.appendChild(_backgroundDiv);       


//          alert(sndid);  
//         if (sender._postBackSettings.panelID.split('|')[0].replace('uPnl','tbl') == 'tblWizardItems')
//  {
//  _updateProgressDiv.style.display = 'none';
//            _backgroundDiv.style.display = 'none';
//  }   
//  else
//  {

//  }
            // get the bounds of both the table and the progress div
	        var tableBounds = Sys.UI.DomElement.getBounds(_table);
	        var updateProgressDivBounds = Sys.UI.DomElement.getBounds(_updateProgressDiv);
                       
	        //  center of gridview
	        var x = tableBounds.x + Math.round(tableBounds.width / 2) - Math.round(updateProgressDivBounds.width / 2);
	        var y = tableBounds.y + Math.round(tableBounds.height / 2) - Math.round(updateProgressDivBounds.height / 2);	    
            
            //  set the dimensions of the background div to the same as the table
            _backgroundDiv.style.width = tableBounds.width + 'px';
            _backgroundDiv.style.height = tableBounds.height + 'px';             
            
	        //	set the progress element to this position
	        Sys.UI.DomElement.setLocation(_updateProgressDiv, x, y);   
	        //  place the div over the table
	        Sys.UI.DomElement.setLocation(_backgroundDiv, tableBounds.x, tableBounds.y);             
	        _updateProgressDiv.style.display = '';
            _backgroundDiv.style.display = '';
        }

        function endRequest(sender, args) {
            // make it invisible
            _updateProgressDiv.style.display = 'none';
            _backgroundDiv.style.display = 'none';
            
        }
        


        </script>

        <table id="xx" cellspacing="0" cellpadding="0" border="0">
            <tr id="xx_tr">
                <td></td>
                <td>
                   
                </td>
                <td></td>
            </tr>
            <tr valign="top">
                <td class="leftbanner_seperator"></td>
                <td>
                    <div id="header" runat="server"></div> 
                </td>
                <td class="rightbanner_seperator"></td>
            </tr>
            <tr valign="top">
                <td class="middle_left_seperator"></td>
                <td>
                    <table id="Table2" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr valign="top">
                            <td id="middle_left" width="300px" runat="server" valign="top">
                                <asp:Label ID="SolAlan" runat="server"></asp:Label>
                                <asp:UpdatePanel ID="uPnlWizard" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                         
    <div id="module_title">
<span><span id="module_title-icon"></span>Ürün Arama Sihirbazý
</span> 
</div>
                                        <table id="tblWizard" class="Global_Modul_Modul" runat="server" cellspacing="0" cellpadding="3" border="0" width="300px">
                                            <tr>
                                                <td align="right" style="white-space:nowrap">
                                                    <asp:Label ID="lblPs1" runat="server" CssClass="GelismisUrunArama_Label">Sihirbaz Seçiniz:</asp:Label></td>
                                                <td>
                                                    <asp:DropDownList ID="ddlWizards" runat="server" CssClass="Global_Normal_ComboBox" AutoPostBack="True"></asp:DropDownList></td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="lblPs2" runat="server" CssClass="GelismisUrunArama_Label">Marka :</asp:Label></td>
                                                <td align="left">
                                                    <asp:DropDownList ID="ddlMarks" runat="server" CssClass="Global_Normal_ComboBox" AutoPostBack="True" OnSelectedIndexChanged="ddlMarks_SelectedIndexChanged"></asp:DropDownList></td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="lblPs3" runat="server" CssClass="GelismisUrunArama_Label">Fiyat Aralýðý :</asp:Label></td>
                                                <td>
                                                    <table id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                        <tr>
                                                            <td align="left" style="white-space:nowrap">
                                                                <ew:NumericBox ID="txtPrice1" runat="server" CssClass="Global_Normal_TextBox" Width="50px" DecimalSign="," DecimalPlaces="2"></ew:NumericBox><asp:Label ID="Label6" runat="server" CssClass="GelismisUrunArama_Label">ile</asp:Label><ew:NumericBox ID="txtPrice2" runat="server" CssClass="Global_Normal_TextBox"
                                                                    Width="50px" DecimalSign="," DecimalPlaces="2"></ew:NumericBox><asp:Label ID="Label5" runat="server" CssClass="GelismisUrunArama_Label">TL</asp:Label><br />
                                                                <asp:Label ID="Label7" runat="server" CssClass="GelismisUrunArama_Label">Arasýnda</asp:Label></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <asp:UpdatePanel ID="uPnlWizardItems" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="ui-widget-header ui-corner-all">
      <span class="ui-icon ui-icon-triangle-1-e module-icon"></span>
      <span class="module-title">Ürün Özellikleri</span>     
  </div>
                                        <table id="tblWizardItems" runat="server" cellspacing="0" cellpadding="0" border="0">
                                            <tr>
                                                <td valign="top" width="300px">
                                                    <asp:Repeater ID="rptWizard" runat="server">
                                                        <ItemTemplate>
                                                            <fieldset style="width: 300px"><legend class="Global_Bold_Label">
                                                                <%# DataBinder.Eval(Container.DataItem, "WizardGroupName")  %>
                                                            </legend>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td class="sectionDescription">
                                                                            <asp:Label Visible="false" ID="lblSurveyGroupId" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "WizardGroupId")  %>' Width="0"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td id="tdSectionQuestions" valign="top" runat="server">
                                                                            <asp:Repeater DataSource='<%# GetQuestions(DataBinder.Eval(Container.DataItem,"WizardGroupId")) %>' ID="rptWizardItems" runat="server" OnItemDataBound="rptWizardItems_ItemDataBound">
                                                                                <HeaderTemplate>
                                                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                </HeaderTemplate>
                                                                                <ItemTemplate>
                                                                                    <tr class="Global_TabloSatir">
                                                                                        <td align="left" style="white-space:nowrap" valign="top">
                                                                                            <asp:Label Style="visibility: hidden" ID="lblQuestionId" runat="server" Text="0"></asp:Label>
                                                                                            <asp:Label CssClass="Global_Normal_Label" ID="lblQuestion" runat="server"></asp:Label>
                                                                                            &nbsp;&nbsp;
                                                                                            <asp:Image ID="qimg" Style="cursor: hand" Visible="false" ImageUrl="../images/question.gif" runat="server" />
                                                                                            <cc1:PopupControlExtender ID="PopEx" runat="server" TargetControlID="qimg" PopupControlID="poppanel" Position="Bottom" />
                                                                                            <asp:UpdatePanel ID="poppanel" runat="server">
                                                                                                <ContentTemplate>
                                                                                                    <asp:Label runat="server" CssClass="modalBackground" ID="poplabel"></asp:Label></ContentTemplate>
                                                                                            </asp:UpdatePanel>
                                                                                        </td>
                                                                                        <td align="left" style="white-space:nowrap" valign="top">
                                                                                            <asp:DropDownList OnSelectedIndexChanged="CalculateSearch" AutoPostBack="true" ID="ddlQuestion" runat="Server" CssClass="Global_Normal_ComboBox"></asp:DropDownList>
                                                                                        </td>
                                                                                    </tr>
                                                                                </ItemTemplate>
                                                                                <AlternatingItemTemplate>
                                                                                    <tr class="Global_TabloAlternatifSatir">
                                                                                        <td align="left" style="white-space:nowrap" valign="top">
                                                                                            <asp:Label Style="visibility: hidden" ID="lblQuestionId" runat="server" Text="0"></asp:Label>
                                                                                            <asp:Label CssClass="Global_Normal_Label" ID="lblQuestion" runat="server"></asp:Label>
                                                                                            &nbsp;&nbsp;
                                                                                            <asp:Image ID="qimg" Style="cursor: hand" Visible="false" ImageUrl="../images/question.gif" runat="server" />
                                                                                            <cc1:PopupControlExtender ID="PopEx" runat="server" TargetControlID="qimg" PopupControlID="poppanel" Position="Bottom" />
                                                                                            <asp:UpdatePanel ID="poppanel" runat="server">
                                                                                                <ContentTemplate>
                                                                                                    <asp:Label runat="server" CssClass="modalBackground" ID="poplabel1"></asp:Label></ContentTemplate>
                                                                                            </asp:UpdatePanel>
                                                                                        </td>
                                                                                        <td align="left" style="white-space:nowrap" valign="top">
                                                                                            <asp:DropDownList OnSelectedIndexChanged="CalculateSearch" AutoPostBack="true" ID="ddlQuestion" runat="Server" CssClass="Global_Normal_ComboBox"></asp:DropDownList>
                                                                                        </td>
                                                                                    </tr>
                                                                                </AlternatingItemTemplate>
                                                                                <FooterTemplate></table> </FooterTemplate>
                                                                            </asp:Repeater>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </fieldset>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="ddlWizards" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                            <td class="pane_seperator2"></td>
                            <td id="middle_center" runat="server">
                                <asp:UpdatePanel ID="uPnlSearching" runat="server">
                                    <ContentTemplate>
                                        <table style="visibility: hidden;" runat="server" width="100%" id="tblSearching">
                                            <tr>
                                                <td width="50%">
                                                    <asp:Label CssClass="Global_Normal_Label" runat="server" ID="lblFind">0</asp:Label></td>
                                                <td rowspan="2" valign="top" width="50%">
                                                    <asp:Label CssClass="Global_Normal_Label" runat="server" ID="lblmsg"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td width="50%" valign="top">
                                                    <asp:Label CssClass="Global_Normal_Label" runat="server" ID="Label3">ürün bulundu</asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td valign="top" width="50%">
                                                    <asp:LinkButton ID="lnkSearch" runat="server" OnClick="lnkSearch_Click" Visible="False">Listele</asp:LinkButton></td>
                                                <td rowspan="1" valign="top" width="50%"></td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="ddlMarks" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                                <asp:UpdatePanel ID="uPnlWizards" runat="server">
                                    <ContentTemplate>
                                        <table runat="server" width="100%" id="tblWizards">
                                            <tr>
                                                <td width="50%">
                                                    <asp:DataList ID="dListWizards" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" Width="100%">
                                                        <ItemTemplate>
                                                            <asp:Image ImageUrl='<%# "../" & container.dataitem("Description") %>' ID="imgWizard" runat="server" />
                                                        </ItemTemplate>
                                                    </asp:DataList></td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <table class="UrunArama_Modul" id="Tablev4" cellspacing="0" cellpadding="0" width="100%" border="0">
                                    <tr>
                                        <td class="UrunListesi_Arkaplan" align="center" colspan="4" valign="top"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <asp:UpdatePanel ID="uPnlProducts" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <table id="tblProducts" style="visibility: hidden;" runat="server">
                                                        <tr>
                                                            <td>
                                                                
  <div id="module_title">
<span><span id="module_title_icon"></span>Ürünler
</span> 
</div>
                                                                <table class="UrunListesi_Modul" cellspacing="0" cellpadding="0" width="100%" align="center" border="0" runat="server">
                                                                    <tr>
                                                                        <td align="center">
                                                                            <table id="Table3" cellspacing="0" cellpadding="0" align="center" border="0">
                                                                                <tr>
                                                                                    <td align="center" style="white-space:nowrap">
                                                                                        <table id="Table9" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                                                                                            <tr>
                                                                                                <td height="2"></td>
                                                                                                <td height="2"></td>
                                                                                                <td align="right" height="2"></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="9"></td>
                                                                                                <td height="9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                                                                <td align="right" height="9" style="white-space:nowrap">
                                                                                                    <asp:CheckBox ID="chkStock" runat="server" CssClass="Global_Normal_CheckBox" AutoPostBack="True" Text="Sadece Stokta Olanlar" TextAlign="Left"></asp:CheckBox>&nbsp;
                                                                                                    <asp:Label ID="Label48" runat="server" CssClass="Global_Normal_Label">Ürün Gösterimi :</asp:Label>&nbsp;
                                                                                                    <asp:DropDownList ID="ddlShow" runat="server" CssClass="Global_Normal_ComboBox" AutoPostBack="True">
                                                                                                        <asp:ListItem Value="Detay">Detay</asp:ListItem>
                                                                                                        <asp:ListItem Value="Liste">Liste</asp:ListItem>
                                                                                                    </asp:DropDownList>&nbsp;
                                                                                                    <asp:Label ID="Label47" runat="server" CssClass="Global_Normal_Label">Sýralama :</asp:Label>&nbsp;
                                                                                                    <asp:DropDownList ID="ddlOrderBy" runat="server" CssClass="Global_Normal_ComboBox" AutoPostBack="True">
                                                                                                        <asp:ListItem Value="Order By ISNULL(case StockQty when 0 then  99999999  else ShowOrder end ,'100')">Varsayýlan</asp:ListItem>
                                                                                                        <asp:ListItem Value="Order by ProductName">Ada Göre (A'dan Z'ye)</asp:ListItem>
                                                                                                        <asp:ListItem Value="Order by ProductName Desc">Ada Göre (Z'den A'ya)</asp:ListItem>
                                                                                                        <asp:ListItem Value="Order by (Rate1*SatisFiyati1)">Fiyata Göre (Ucuzdan Pahalýya)</asp:ListItem>
                                                                                                        <asp:ListItem Value="Order by (Rate1*SatisFiyati1) desc">Fiyata Göre (Pahalýdan Ucuza)</asp:ListItem>
                                                                                                    </asp:DropDownList></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="2"></td>
                                                                                                <td height="2"></td>
                                                                                                <td align="right" height="2"></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td id="pnlList" runat="server" style="white-space:nowrap" width="100%">
                                                                                        <asp:DataGrid ID="dlList" runat="server" Width="564px" CellPadding="1" BorderWidth="0px" ShowFooter="True" AllowSorting="True" AutoGenerateColumns="False" PageSize="1" PagerStyle-Mode="NumericPages" PagerStyle-HorizontalAlign="Right" PagerStyle-NextPageText="Next" PagerStyle-PrevPageText="Prev">
                                                                                            <FooterStyle CssClass="Global_TabloBaslik"></FooterStyle>
                                                                                            <AlternatingItemStyle CssClass="Global_TabloAlternatifSatir"></AlternatingItemStyle>
                                                                                            <ItemStyle Width="100%" CssClass="Global_TabloSatir"></ItemStyle>
                                                                                            <HeaderStyle Wrap="False" CssClass="Global_TabloBaslik"></HeaderStyle>
                                                                                            <Columns>
                                                                                                <asp:BoundColumn Visible="False" DataField="ProductId" SortExpression="ProductId" HeaderText="IND">
                                                                                                    <HeaderStyle Width="0px"></HeaderStyle>
                                                                                                </asp:BoundColumn>
                                                                                                <asp:TemplateColumn Visible="False" HeaderText="Stok Kodu">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:HyperLink ID="lnkProductCode" runat="server" CssClass="Global_Normal_Link" Text='<%# container.dataitem("ProductCode") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) %>'>
                                                                                                        </asp:HyperLink>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateColumn>
                                                                                                <asp:TemplateColumn HeaderText="&#220;r&#252;n Adý">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" CssClass="Global_Normal_Link" Text='<%# container.dataitem("ProductName") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) %>'>
                                                                                                        </asp:HyperLink>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateColumn>
                                                                                                <asp:TemplateColumn HeaderText="Fiyatý">
                                                                                                    <HeaderStyle Wrap="False" HorizontalAlign="Right" Width="60px"></HeaderStyle>
                                                                                                    <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="Label38" runat="server" CssClass="UrunListesi_Fiyat_Text" Text='<%# FormatCurDoviz(container.dataitem("SatisFiyati")) %>'>
                                                                                                        </asp:Label>
                                                                                                        <asp:Label ID="Label39" runat="server" CssClass="UrunListesi_Fiyat_Text" Text='<%# container.dataitem("CurrencyName")%>'>
                                                                                                        </asp:Label>
                                                                                                        <asp:Label ID="Label40" runat="server" CssClass="UrunListesi_Fiyat_Text">+ KDV</asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <FooterStyle Wrap="False"></FooterStyle>
                                                                                                </asp:TemplateColumn>
                                                                                                <asp:TemplateColumn Visible="False" HeaderText="Size &#214;zel">
                                                                                                    <HeaderStyle Wrap="False" HorizontalAlign="Right" Width="60px"></HeaderStyle>
                                                                                                    <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="Label7" runat="server" CssClass="UrunListesi_Fiyat_Text" Visible='<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>' Text='<%# FormatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati"),container.dataitem("Indirim")),UserIndirim))  %>'>
                                                                                                        </asp:Label>
                                                                                                        <asp:Label ID="Label15" runat="server" CssClass="UrunListesi_Fiyat_Text" Visible='<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>' Text='<%# container.dataitem("CurrencyName")%>'>
                                                                                                        </asp:Label>
                                                                                                        <asp:Label ID="Label16" runat="server" CssClass="UrunListesi_Fiyat_Text" Visible='<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>'>+ KDV</asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateColumn>
                                                                                                <asp:TemplateColumn HeaderText="KDV Dahil">
                                                                                                    <HeaderStyle Wrap="False" HorizontalAlign="Right" Width="60px"></HeaderStyle>
                                                                                                    <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="Label19" runat="server" CssClass="UrunListesiKDVDahilFiyatYazi" Text='<%# FormatCurTL(CalcKdvDahil(container.dataitem("SatisFiyati") * container.dataitem("Rate"),container.dataitem("KdvRate")))   %>'>
                                                                                                        </asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <FooterStyle Wrap="False"></FooterStyle>
                                                                                                </asp:TemplateColumn>
                                                                                                <asp:TemplateColumn HeaderText="Adet">
                                                                                                    <HeaderStyle Wrap="False" HorizontalAlign="center" Width="50px"></HeaderStyle>
                                                                                                    <ItemStyle Wrap="False" HorizontalAlign="center"></ItemStyle>
                                                                                                    <ItemTemplate>
                                                                                                        <ew:NumericBox CssClass="Global_Normal_TextBox" TextAlgin="Right" MaxLength="4" ID="txtQty" DecimalPlaces="0" runat="server" Width="30px" PositiveNumber="True">0</ew:NumericBox>
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
                                                                                                        <asp:Label ID="Label33" runat="server" CssClass="Global_Mesaj" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>' ToolTip="Bu ürün geçici bir süre temin edilememektedir!">
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
                                                                                        <table id="Table10" cellspacing="0" cellpadding="0" border="0">
                                                                                            <tr>
                                                                                                <td align="center">
                                                                                                    <asp:DataList ID="dlGalery" runat="server" Width="564px" CellPadding="0" HorizontalAlign="center" RepeatColumns="4" DataKeyField="ProductId" RepeatDirection="Horizontal">
                                                                                                        <ItemStyle Wrap="False" HorizontalAlign="center" Height="100%" VerticalAlign="Top"></ItemStyle>
                                                                                                        <ItemTemplate>
                                                                                                            <table id="Tablecm3" runat="server" class="UrunListesi_Sol_Urun_Panel" cellspacing="0" cellpadding="0" border="0">
                                                                                                                <tr>
                                                                                                                    <td valign="top" align="center">
                                                                                                                        <div class="UrunListesi_Link_Arkaplan">
                                                                                                                            <asp:HyperLink ID="HyperLink6q" runat="server" CssClass="UrunListesi_Link" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'
                                                                                                                                Text='<%# container.dataitem("CatName") %>'>
                                                                                                                            </asp:HyperLink></div>
                                                                                                                        <div class="UrunListesi_Resim_Div"><a href='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                                                                                                            <asp:Image ID="Image1q" runat="server" CssClass="UrunListesi_Resim" BorderStyle="None" ToolTip='<%# container.dataitem("ProductName") %>' ImageUrl='<%# BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") & "&intSize=" & intSize %>'></asp:Image></a></div>
                                                                                                                        <table class="UrunListesiFiyatPanel" id="Table4q" cellspacing="0" cellpadding="0" border="0">
                                                                                                                            <tr>
                                                                                                                                <td class="UrunListesi_UrunAdi_Link">
                                                                                                                                    <asp:HyperLink ID="lnkProductName" runat="server" CssClass="UrunListesi_UrunAdi_Link" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'
                                                                                                                                        Text='<%# container.dataitem("ProductName")  %>'>
                                                                                                                                    </asp:HyperLink></td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="Label41" runat="server" CssClass="UrunListesi_Marka_Link" Text='<%# container.dataitem("MarKName") %>'>
                                                                                                                                    </asp:Label></td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="Label45" runat="server" CssClass="UrunListesi_Code14_Label" Text='<%# container.dataitem("Code14") %>'>
                                                                                                                                    </asp:Label></td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td>
                                                                                                                                    <asp:Label ID="Label5q" runat="server" CssClass="UrunListesi_Aciklama_Label" Text='<%# container.dataitem("Description") %>'>
                                                                                                                                    </asp:Label></td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td class="UrunListesi_Fiyat_Text">
                                                                                                                                    <asp:Label ID="Label1" runat="server" CssClass="UrunListesi_Fiyat_Label">Fiyatý&nbsp;:</asp:Label>
                                                                                                                                    <asp:Label ID="Label8" runat="server" CssClass="UrunListesi_Fiyat_Text" Text='<%# FormatCurDoviz(container.dataitem("SatisFiyati"))   + " " + container.dataitem("CurrencyName") + "+ KDV"%>'>
                                                                                                                                    </asp:Label>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td class="UrunListesi_Fiyat_SizeOzel">
                                                                                                                                    <asp:Label ID="Label11" runat="server" Visible="<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>" CssClass="UrunListesi_Fiyat_SizeOzel_Label">Size Özel&nbsp;:</asp:Label>
                                                                                                                                    <asp:Label ID="Label13" runat="server" Visible="<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>" CssClass="UrunListesi_Fiyat_SizeOzel" Text='<%# FormatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati"),container.dataitem("Indirim")),UserIndirim))  + " " + container.dataitem("CurrencyName") + "+ KDV"%>'>
                                                                                                                                    </asp:Label>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td class="UrunListesi_Fiyat_KDVDahil">
                                                                                                                                    <asp:Label ID="Label35" runat="server" CssClass="UrunListesi_Fiyat_KDVDahil_Label">KDV Dahil&nbsp;:</asp:Label>
                                                                                                                                    <asp:Label ID="Label37" runat="server" CssClass="UrunListesi_Fiyat_KDVDahil" Text='<%# FormatCurTL(CalcKdvDahil(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")* container.dataitem("Rate"),container.dataitem("Indirim")),UserIndirim),container.dataitem("KdvRate")))  %>'>
                                                                                                                                    </asp:Label></td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td width="4" height="7"></td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:LinkButton ID="btnAdd1" runat="server" CssClass="UrunListesi_SepeteEkle_Link" CommandName="Update" Visible='<%# (container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE" ) %>' CausesValidation="false" Text="" CommandArgument='<%# container.dataitem("ProductId") %>'>
                                                                                                                                    </asp:LinkButton>
                                                                                                                                    <asp:Label ID="Label31" runat="server" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>' CssClass="Global_Mesaj">
																							Bu ürün geçici bir süre temin edilememektedir!</asp:Label></td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:HyperLink ID="Hyperlink9" runat="server" CssClass="UrunListesi_Taksit_Link" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""" & BaseUrl & "/store/instalments.aspx?PId=6&amp;ProductId=" &amp; container.dataitem("ProductId") &amp; ""","""",""width=100,height=100,scrollbars=1,toolbar=0,status=1,resizable=1"")" %>'>
                                                                                                                                    </asp:HyperLink></td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td colspan="4">
                                                                                                                        <table id="Table8" cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                                                                            <tr>
                                                                                                                                <td class="UrunListesi_Alt_Sol_Resim" id="imgBottomLeft" runat="server"></td>
                                                                                                                                <td class="UrunListesi_Footter" id="imgModulFootter" runat="server"></td>
                                                                                                                                <td class="UrunListesi_Alt_Sag_Resim" id="imgBottomRight" runat="server"></td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                            <div style="height: 1px; line-height: 1px;"></div>
                                                                                                        </ItemTemplate>
                                                                                                        <SeparatorTemplate>
                                                                                                            <table id="Table7" class="UrunListesi_Separator" cellspacing="0" cellpadding="0" border="0">
                                                                                                                <tr>
                                                                                                                    <td></td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                        </SeparatorTemplate>
                                                                                                    </asp:DataList>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                        <table id="Table11" cellspacing="1" cellpadding="2" width="100%" border="0">
                                                                                            <tr class="MainText">
                                                                                                <td style="white-space:nowrap" width="33%">
                                                                                                    <asp:Label ID="TotalMessages" runat="server" CssClass="Global_Normal_Label"></asp:Label></td>
                                                                                                <td align="center" style="white-space:nowrap" width="33%">
                                                                                                    <asp:Label ID="RecordsCount" runat="server" CssClass="Global_Normal_Label"></asp:Label></td>
                                                                                                <td align="right" class="Global_Page_Link" style="white-space:nowrap" width="33%">
                                                                                                    <asp:Label ID="PagingLabel" runat="server"></asp:Label></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td height="7"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="lnkSearch" EventName="Click" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="pane_seperator2"></td>
                            <td id="middle_right" runat="server">
                                <asp:Label ID="SagAlan" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </td>
                <td class="middle_right_seperator"></td>
            </tr>
            <tr>
                <td class="leftfooter_seperator"></td>
                <td>
                    <div id="footer" runat="server"></div>
                </td>
                <td class="rightfooter_seperator"></td>
            </tr>
            <tr id="xxy_tr">
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
        <div id="updateProgressDiv" class="updateProgress" style="display: none">
            <div align="center">
                <asp:Image ID="Pimg" runat="server" ImageUrl="~/images/spinner.gif" />
                <span class="updateProgressMessage">Yükleniyor ...</span> </div>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
    </form>
    </div>
</body>
</html>
