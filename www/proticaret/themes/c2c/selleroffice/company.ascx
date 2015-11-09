<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="company.ascx.vb" Inherits="ASPNetPortal.companyascx" %>

<div id="company" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            Maðaza Profili
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    
    <div class="moduleContentCol1">
        <span class="title3"> <span>Maðaza : </span> <asp:Label CssClass="textRed" runat="server" ID="lbltitle"></asp:Label></span>
        
        <asp:Label CssClass="description" runat="server" ID="lbldescription" />
    </div>
    <div class="moduleContentCol1">
    	<div class="cmpn-product-left moduleContentCol2 fLeft">
            <div class="title3">Genel Deðerlendirme</div>
            
            <div class="dataTable">
                <table>
                    <tr class="title">
                    	<td colspan="2"></td>
                        <td>Son 1ay</td>
                        <td>Son 6ay</td>
                        <td>Son 12ay</td>
                    </tr>
                    <tr class="positive">
                        <td align="center"><i class="icon-emo-thumbsup"></i></td>
                        <td align="left">Olumlu</td>
                        <td align="center"><asp:Label ID="lblaypozitif" runat="server" /></td>
                        <td align="center"><asp:Label ID="lbl6aypozitif" runat="server" /></td>
                        <td align="center"><asp:Label ID="lblyilpozitif" runat="server" /></td>
                    </tr>
                    <tr class="notr">
                        <td align="center"><i class="icon-emo-sleep"></i></td>
                        <td align="left">Nötr</td>
                        <td align="center"><asp:Label ID="lblaynotr" runat="server" /></td>
                        <td align="center"><asp:Label ID="lbl6aynotr" runat="server" /></td>
                        <td align="center"><asp:Label ID="lblyilnotr" runat="server" /></td>
                    </tr>
                    <tr class="negative">
                        <td align="center"><i class="icon-emo-cry"></i></td>
                        <td align="left">Olumsuz</td>
                        <td align="center"><asp:Label ID="lblaynegatif" runat="server" /></td>
                        <td align="center"><asp:Label ID="lbl6aynegatif" runat="server" /></td>
                        <td align="center"><asp:Label ID="lblyilnegatif" runat="server" /></td>
                    </tr>
                </table>
            </div>
        
        	<div class="title3">Aldýðý Yorumlar</div>
            
            <div class="commentContent">
                <asp:DataList ID="dlGalery" runat="server" DataKeyField="ReviewId" Width="100%" EnableViewState="False" RepeatLayout="Flow" RepeatColumns="100">
                    <ItemTemplate>
                        <div class="face-icon"><span class='<%#IIf(Container.DataItem("Rating") = 3, "Notr", IIf(Container.DataItem("Rating") > 3, "positive", "negative"))%>'></span></div>
                        <div class="name-cmmnt">
                            <asp:HyperLink CssClass="productName textBlue"  ID="lnkProductName" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName")  %>'></asp:HyperLink>
                            <asp:Label CssClass="comment" Text='<%# Container.DataItem("Comments")%>' runat="server" />
                        </div>
                        <div class="usr-dt">
                            <asp:Label CssClass="user textBlue" Text='<%# Container.DataItem("Name")%>' runat="server" />
                            <asp:Label CssClass="data" Text='<%# Container.DataItem("CreatedDate")%>' runat="server" />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            
        </div>
    
        <div class="cmpn-product-right moduleContentCol2 fRight">
            <span class="title3">Satýþtaki Ürünler:</span>
            
            <div id="homeproducts" class="sellerproduct">
                <div class="fourContent">
                    <asp:Repeater ID="dlCatTopProducts" runat="server">
                        <HeaderTemplate>
                            <ul>
                        </HeaderTemplate>
                        <FooterTemplate>
                            <div class="clear"></div>
                            </ul>
                        </FooterTemplate>
                        <ItemTemplate>
                            <li id="product" class="homeProductContent radius5 moduleContentCol3">
                                <a href="<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1)) %>">
                                    <div class="productImage"><img src="<%# BaseUrl & "/store/makethumb.aspx?file=" & Container.DataItem("Path") & "&intSize=123"%>" /></div>
                                    
                                    <div class="productName"><%# container.dataitem("ProductName") %></div>
                                    
                                    <% If (ConfigurationManager.AppSettings("OnlyUsersCanSeePrice") = "True" And HttpContext.Current.User.Identity.IsAuthenticated()) Or ConfigurationManager.AppSettings("OnlyUsersCanSeePrice") <> "True" Then%>
                                    <div class="productPrice">
                                        <span><%#formatCurTL(CalcKdvDahil(Container.DataItem("SatisFiyati") * Container.DataItem("Rate"), Container.DataItem("KdvRate")))%></span>
                                    </div>
                                    <% End If%>
                                </a>
                                <a href="<%= "/default.aspx?CompanyId=" & ShopId %>">Maðazanýn Tüm Ürünleri</a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
    
    
    <br />
    <br />
    <br />
    <br />
    
    

</div>
