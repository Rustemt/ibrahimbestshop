<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="bookingproductsdetails.ascx.vb" Inherits="ASPNetPortal.bookingproductsdetails" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<div id="orderlist" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        Ürün Rezervasyon Listesi
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent moduleContentCol1 clearFix">
        <div runat="server" id="chkAlert" style="display: none" class="alert alert-error">
            <label>
                <asp:Label ID="lblchkMsg" runat="server"></asp:Label></label>
        </div>
        <div runat="server" id="msgDiv" visible="false" class="alert alert-info">
            <label>
                <asp:Label ID="msg" runat="server" Text="Rezervasyon Süresi Dolmuştur"></asp:Label></label>
        </div>
        <div runat="server" id="msgDiv2" visible="false" class="alert alert-info">
            <label>
                <asp:Label ID="msg2" runat="server" Text="Rezervasyon Siparişe Dönüştürülmüştür."></asp:Label></label>
        </div>
        <div runat="server" id="mainDiv" class="dataTable">
            <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" ShowFooter="True" HeaderStyle-CssClass="title" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundColumn DataField="BookedId" Visible="false" HeaderText="ID"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductCode %>" ItemStyle-Width="110">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container, "DataItem.ProductCode")%>
                             <asp:Label ID="lblProductId" runat="server" Visible="false" Text='<%# Eval("ProductId")%>'></asp:Label>
                            <asp:Label ID="lblProductSizeOptionId" runat="server" Visible="false" Text='<%# Eval("ProductSizeId")%>'></asp:Label>
                            <asp:Label ID="lblBookedId" runat="server" Visible="false" Text='<%# Eval("BookedId")%>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <b class="textRed">Toplam:</b>
                        </FooterTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductFeatures %>">
                        <ItemTemplate><%#DataBinder.Eval(Container, "DataItem.Description").ToString.Replace("<div>","").Replace("</div>","")%> </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="MarkName" HeaderText="<%$ Resources:admin,MarkName %>"></asp:BoundColumn>
                    <asp:TemplateColumn ItemStyle-HorizontalAlign="center" FooterStyle-HorizontalAlign="center" HeaderText="Rezerv Miktari">
                        <ItemTemplate>
                            <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity")%>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lblTotalQuantity" CssClass="textRed" runat="server"></asp:Label>
                        </FooterTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Onaylanan Miktar">
                        <ItemTemplate>
                   <asp:DropDownList runat="server" ID="ddlQuantity"></asp:DropDownList>
                            Adet 
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn ItemStyle-HorizontalAlign="right" FooterStyle-HorizontalAlign="right" HeaderText="Birim Fiyat">
                        <ItemTemplate>
                            <asp:Label ID="lblPrice" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcIndirim(CalcIndirim((Eval("SatisFiyati") + 0) * Eval("Rate"), UserIndirim), Eval("Indirim")) / CurrencyRate) & " " & CurrencySymbolRight%>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lblTotalPrice" CssClass="textRed" runat="server"></asp:Label>
                        </FooterTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="KdvRate" HeaderText="Kdv Oranı" ItemStyle-HorizontalAlign="center"></asp:BoundColumn>
                    <asp:TemplateColumn ItemStyle-HorizontalAlign="right" FooterStyle-HorizontalAlign="right" HeaderText="Kdv Dahil Tutar">
                        <ItemTemplate>
                            <asp:Label ID="lblTaxPrice" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(CalcIndirim(CalcIndirim((Eval("SatisFiyati") + 0) * Eval("Rate"), UserIndirim), Eval("Indirim")), Eval("KdvRate")) / CurrencyRate * Eval("Quantity")) & " " & CurrencySymbolRight%>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lblTaxTotalPrice" CssClass="textRed" runat="server"></asp:Label>
                        </FooterTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" visible='<%# IIf(CInt(Eval("Status") = -1 Or CInt(Eval("Status") = -2)), "False", "True")%>' runat="server" CausesValidation="false" CommandName="Delete" CssClass="button" Text="Sil"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:DataGrid>
            <div class="fRight">
                <asp:Button runat="server" ID="btnOrder" Text="Siparişe Dönüştür." CssClass="button" />
                <asp:Button runat="server" ID="btnAllUpdate" Text="Güncelle" CssClass="button" />
            </div>
        </div>
        <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblClose" Text="" runat="server"></asp:Label>
    </div>
</div>

