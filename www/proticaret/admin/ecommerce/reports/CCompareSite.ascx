<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CCompareSite" Codebehind="CCompareSite.ascx.vb" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="aspzone" Namespace="aspZone.WebControls" Assembly="aspZone.WebControls.OneClickButton" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div id="cproviders" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="module_box" style="text-align: right">
                <table cellpadding="2" style="margin-left: auto">
                    <tr>
                        <td valign="bottom" align="left">
                        <label>Kategori</label>
                        <asp:DropDownList ID="ddlCategories" runat="server" Width="180px">
                            </asp:DropDownList></td>
                        <td valign="bottom" align="left">
                        <label>Stok Kodu</label> 
                            <asp:TextBox ID="txtStokCode" runat="server" Width="70px"></asp:TextBox>
                            <asp:DropDownList ID="ddlFilter" runat="server">
                                <asp:ListItem Value="like  @ProductCode + '%'">Ba�lar</asp:ListItem>
                                <asp:ListItem Value="like '%' + @ProductCode + '%'">�&#231;erir</asp:ListItem>
                                <asp:ListItem Value="like '%' + @ProductCode ">Biter</asp:ListItem>
                                <asp:ListItem Value="= @ProductCode ">E�ittir</asp:ListItem>
                            </asp:DropDownList></td>
                        <td valign="bottom" align="left">
                        <label>�r�n Ad�</label> 
                            <asp:TextBox ID="txtProductName" runat="server" Width="70px"></asp:TextBox>
                            <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                                <asp:ListItem Value="like  @ProductName + '%'">Ba�lar</asp:ListItem>
                                <asp:ListItem Value="like '%' + @ProductName + '%'">�&#231;erir</asp:ListItem>
                                <asp:ListItem Value="like '%' + @ProductName ">Biter</asp:ListItem>
                                <asp:ListItem Value="= @ProductName ">E�ittir</asp:ListItem>
                            </asp:DropDownList></td>
                        <td valign="bottom" align="left">
                        <label>Marka</label> 
                            <asp:TextBox ID="txtMark" autocomplete="off" runat="server" Width="110px"></asp:TextBox><cc1:AutoCompleteExtender ID="Markext" runat="server" TargetControlID="txtMark" ServicePath="~/services/MarkService.asmx" ServiceMethod="GetMarks" MinimumPrefixLength="2" CompletionInterval="500" FirstRowSelected="true"
                                EnableCaching="true" CompletionSetCount="12" OnClientItemSelected="selected" CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
                            </cc1:AutoCompleteExtender>
                            <asp:HiddenField ID="MarkHiddenField" runat="server" Value="" />
                        </td>
                        <td align="left" valign="bottom">
                        <label>Durumu</label> 
                            <asp:DropDownList ID="ddlActive" runat="server">
                                <asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
                                <asp:ListItem Value="1" Selected="True">Aktif</asp:ListItem>
                                <asp:ListItem Value="0">Pasif</asp:ListItem>
                            </asp:DropDownList></td>
                        <td valign="bottom" align="left">
                            <asp:LinkButton ID="btnSearch" runat="server" CssClass="searchbutton">Ara</asp:LinkButton>
                            </td>
                    </tr>
                 </table>
                 </div>
                  <div class="module_box" style="text-align: right">
                <table cellpadding="2" style="margin-left: auto">
                    <tr>
                        <td align="left" valign="bottom">
                        <label>En Ucuz Site</label> 
                            <asp:TextBox ID="txtSite" runat="server" Width="90px"></asp:TextBox></td>
                        <td align="left" valign="bottom">
                        <label>Tedarik�i</label> 
                            <asp:DropDownList ID="ddlProvider" runat="server" Width="90px">
                            </asp:DropDownList></td>
                        <td align="left" valign="bottom">
                        <label>Fiyat Durumu</label> 
                            <asp:DropDownList ID="ddlPrice" runat="server" Width="150px">
                                <asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
                                <asp:ListItem Value="(AlisFiyati*Rate) &lt; ComparePrice">Al�� Fiyat� &lt; En Ucuz Fiyat</asp:ListItem>
                                <asp:ListItem Value="(AlisFiyati*Rate) &gt; ComparePrice">Al�� Fiyat� &gt; En Ucuz Fiyat</asp:ListItem>
                            </asp:DropDownList></td>
                        <td align="left" valign="bottom">
                        <label>Envanter</label> 
                            <asp:DropDownList ID="ddlStok" runat="server" Width="95px">
                                <asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
                                <asp:ListItem Value="1" Selected="True">Var</asp:ListItem>
                                <asp:ListItem Value="0">Yok</asp:ListItem>
                            </asp:DropDownList></td>
                        <td align="left" valign="bottom">
                        <label>Oto. Rekabet</label> 
                            <asp:DropDownList ID="ddlCompare" runat="server" Width="95px">
                                <asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
                                <asp:ListItem Value="1" Selected="True">Otomatik</asp:ListItem>
                                <asp:ListItem Value="0">Manuel</asp:ListItem>
                                <asp:ListItem Value="-2">Link Olmayanlar</asp:ListItem>
                            </asp:DropDownList></td>
                         
                    </tr>
                </table>
                </div>
                <asp:DataGrid ID="Datagrid1" CellPadding="4" runat="server" Width="100%" PageSize="50" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" ShowFooter="True">
                   <Columns>
                        <asp:BoundColumn DataField="ProductId" SortExpression="ProductId" HeaderText="IND">
                            <HeaderStyle Width="0px"></HeaderStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="ProductCode" SortExpression="ProductCode" HeaderText="Stok Kodu"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="&#220;r&#252;n Ad�"></asp:BoundColumn>
                        <asp:BoundColumn DataField="MarkName" SortExpression="MarkName" HeaderText="Marka"></asp:BoundColumn>
                        <asp:BoundColumn DataField="AlisFiyati" SortExpression="AlisFiyati" HeaderText="Al�� Fiyat�" DataFormatString="{0:0.00}"></asp:BoundColumn>
                        <asp:BoundColumn DataField="SatisFiyati0" SortExpression="SatisFiyati0" HeaderText="Havale Fiyat�" DataFormatString="{0:0.00}"></asp:BoundColumn>
                        <asp:BoundColumn DataField="SatisFiyati1" SortExpression="SatisFiyati1" HeaderText="Sat�� Fiyat�" DataFormatString="{0:0.00}"></asp:BoundColumn>
                        <asp:BoundColumn DataField="CompareOrder" SortExpression="CompareOrder" HeaderText="Populer S�ras�"></asp:BoundColumn>
                        <asp:BoundColumn DataField="LinkOrder" SortExpression="LinkOrder" HeaderText="Liste S�ras�"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ComparePrice" SortExpression="ComparePrice" HeaderText="En Ucuz Fiyat" DataFormatString="{0:0.00}">
                            <HeaderStyle Width="20px"></HeaderStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="CompareSite" SortExpression="CompareSite" HeaderText="En Ucuz Site">
                            <HeaderStyle Width="20px"></HeaderStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="LastCompare" SortExpression="LastCompare" HeaderText="En Son Kar��la�t�rma">
                            <HeaderStyle Width="20px"></HeaderStyle>
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Aktif" SortExpression="IsActive">
                            <HeaderStyle Width="10px" />
                            <ItemTemplate>
                                <asp:CheckBox ID="chkIsAktif" Enabled="false" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem,"IsActive")%> ' />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="AutoCompare" HeaderText="Oto. Rekabet">
                            <HeaderStyle Width="10px"></HeaderStyle>
                            <ItemTemplate>
                                <asp:CheckBox ToolTip="�r�n� Aktif etmek i�in se�iniz." ID="chkAktif" Checked='<%# DataBinder.Eval(Container.DataItem,"AutoCompare")%> ' runat="server"></asp:CheckBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                <input id="chkAllItemsa" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkAktif',this.checked);" />
                                T�m� </FooterTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="CompareHKar" SortExpression="CompareHKar" HeaderText="Min. Havale Kar">
                            <HeaderStyle Width="20px"></HeaderStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="CompareSKar" SortExpression="CompareSKar" HeaderText="Min. Sat. Kar">
                            <HeaderStyle Width="20px"></HeaderStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="StockQty" SortExpression="StockQty" HeaderText="Kalan">
                            <HeaderStyle Width="20px"></HeaderStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Desi" SortExpression="Desi" HeaderText="Desi">
                            <HeaderStyle Width="20px"></HeaderStyle>
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Resim">
                            <HeaderStyle Width="10px"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="center"></ItemStyle>
                            <ItemTemplate>
                                <asp:HyperLink ToolTip="�r�n Resimleri" CssClass="button" ID="lnkimg" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/storeadmin/EditImages.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  ""","""",""width=500,height=400,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '
                                    ImageUrl="/storeadmin/images/Image.gif">
                                </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Detay">
                            <HeaderStyle Width="10px"></HeaderStyle>
                            <ItemStyle HorizontalAlign="center"></ItemStyle>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="editbutton" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/storeadmin/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  ""","""",""width=900,height=670,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '
                                    ToolTip="�r�n Detay�">Detay
                                </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="false" HeaderText="S�L">
                            <HeaderStyle Width="10px"></HeaderStyle>
                            <ItemTemplate>
                                <asp:CheckBox ToolTip="Silmek ��in Se�iniz." ID="chkdelete" runat="server"></asp:CheckBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkdelete',this.checked);" />
                                T�m� </FooterTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15" />
                </asp:DataGrid>
                <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                <label>
                    <asp:Label ID="lblMsg" runat="server"></asp:Label></label>
                <div style="text-align: right">
                    <asp:Button ID="btnAutoAllOff" runat="server" CssClass="button" Text="Otomatik Rekabetten ��kar(T�m�)"></asp:Button>
                    <asp:Button ID="btnAutoAll" runat="server" CssClass="button" Text="Otomatik Rekabete Al (T�m�)"></asp:Button>
                    <asp:Button ID="btnDel" runat="server" CssClass="button" Text="G�ncelle" ToolTip="Se�ili �r�nleri Rekabet Durumunu g�ncelle"></asp:Button>
                    <asp:Button ID="btnExport" runat="server" CssClass="button" Text="Excel'e G�nder" ToolTip="Se�ili �r�nleri D��ar� almak i�in" />
                </div>
                <label>Toplam Kay�t :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label>
                <label>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></label>
                <label>Ge�erli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></label>
                <p>
                    <strong>Liste S�ras� :</strong> Kar��la�t�rma sitesinde ka��nc� s�rada oldu�u<br />
                    <strong>Populer S�ras� :</strong> Kar��la�t�rma sitesinde �r�n ana kategorisinde hangi s�rada<br />
                    <br />
                    <strong>En Ucuz site alabilece�i de�erler.</strong><br />
                    <strong>hatal� link :</strong> Link hatal�<br />
                    <strong>hatal� index :</strong> Link do�ru fakat kar��la�t�rma sitesi �r�n� indekslememi�.<br />
                    <strong>&gt; : </strong>Fiyat yukar� �ekildi<br />
                    <strong>* : </strong>Bu site ile rekabe edildi en uzuz bizim fiyat�m�z.<br />
                    <strong>@ : </strong>Fiyat Rekabet�i sitelerin �st�ne ��kar�ld�.<br />
                    <strong># : </strong>Al�� fiyat�ndan dolay� rekabet edilemiyor (standart indirimler uyguland�)
                </p>
            </ContentTemplate>
        </asp:UpdatePanel>
        <script type="text/javascript"> 
function selected( source, eventArgs ) 
{
hidobj= document.getElementById("<%=MarkHiddenField.ClientID%>");
hidobj.value = eventArgs.get_value();
}
        </script>
    </div>
</div>
</div>