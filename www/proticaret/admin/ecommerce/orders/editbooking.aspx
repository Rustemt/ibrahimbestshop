<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editbooking.aspx.vb" Inherits="ASPNetPortal.editbooking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Rezervasyon Detayı</title>
    <script type="text/JavaScript">
        function printdiv(printpage) {
            var headstr = "<html><head ></head><body>";
            var footstr = "</body>";
            if (document.getElementById != null) {
                var newstr = document.getElementById(printpage).innerHTML;
                var oldstr = document.body.innerHTML;
                document.body.innerHTML = headstr + newstr + footstr;
                window.print();
                document.body.innerHTML = oldstr;
            }
            else {
                //document.all.item(printpage).innerHTML;
                var newstr = document.all.item(printpage).innerHTML
                var oldstr = document.body.innerHTML;
                document.body.innerHTML = headstr + newstr + footstr;
                window.print();
                document.body.innerHTML = oldstr;
            }
            return false;
        }
    </script>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup" id="orderDetail" runat="server">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Rezervasyon Detayı</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
                    <div id="div_print">
                        <div class="dataForm">
                            <div class="row">
                                <div class="colOne margin-none-bottom">
                                    <div class="dataForm">
                                        <div class="row">
                                            <div class="colThree">
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label>Rezervasyon Kodu :</label>
                                                        <asp:Label ID="BookedCode" runat="server"></asp:Label>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "OrderDate")%> :</label>
                                                        <asp:Label ID="OrderDate" runat="server"></asp:Label>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label>Rezervasyon Tar. :</label>
                                                        <asp:Label runat="server" ID="lblCreatedDate"></asp:Label>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label>Rezervasyon Bitiş Tar. :</label>
                                                        <asp:Label ID="lblExpDate" runat="server"></asp:Label>
                                                    </div>
                                                </div>
                                                                                                
                                            </div>
                                            <div class="colThree">
                                                <div class="row">
                                                    <div class="colOne colBtn">
                                                        <label><%=GetGlobalResourceObject("admin", "FullName")%> :</label>
                                                        <label class="labelInput">
                                                            <asp:HyperLink ID="FullName" runat="server" CssClass="textRed">[FullName]</asp:HyperLink></label>

                                                        <a class="btnDefault" id="lnkUserOrders" runat="server" href="#" onclick="AllOrders()"><i class="fa fa-money"></i>Tüm Siparişler</a>
                                                    </div>
                                                    <div class="colOne colBtn">
                                                        <label><%=GetGlobalResourceObject("admin", "Email")%> :</label>
                                                        <label class="labelInput">
                                                            <asp:Label ID="lblEmail" runat="server"></asp:Label></label> 
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="colOne colBtn">
                                                        <label><%=GetGlobalResourceObject("admin", "Status")%> :</label>
                                                        <label class="labelInput"><a id="edit" class="textRed" runat="server"></a></label> 
                                                    </div>                                                    
                                                </div>

                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <div class="dataTable">
                                        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" ShowFooter="True" HeaderStyle-CssClass="title" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:BoundColumn DataField="BookedId" Visible="false" HeaderText="ID"></asp:BoundColumn>
                                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductCode %>" ItemStyle-Width="110">
                                                    <ItemTemplate>
                                                         <a href="javascript:void(0)" class="btnLink"  onclick="<%# "popupWindow(1100,950,50,'/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & "','popup');"%>">
													<%#DataBinder.Eval(Container, "DataItem.ProductCode")%> </a>                                                        
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
                                                        <asp:LinkButton ID="lnkbtnDelete" Visible='<%# IIf(CInt(Eval("Status") = -1 Or CInt(Eval("Status") = -2)), "False", "True")%>' runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateColumn>
                                            </Columns>
                                        </asp:DataGrid>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="buttonGroup">
                        <asp:Button ID="btnAdd" Visible="false" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
                        <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" CausesValidation="False"></asp:Button>
                        <asp:HyperLink ID="btnPrint" Text="<%$ Resources:admin,Print %>" runat="server" CssClass="btnDefault" NavigateUrl="javascript:void(printdiv('div_print'));" ToolTip="Sayfayı Yazdır"></asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<script type="text/javascript">

    function EditStatus() {
        var i = "<%= IND %>";
        popupWindow(700, 250, 50, '/admin/ecommerce/orders/EditStatus.aspx?IND=-100&DIND=' + i, 'popup');
    }
    function AllOrders() {
        var a = "<%= email  %>";
        popupWindow(980, 670, 50, '/admin/ecommerce/orders/OrderList.aspx?Status=all&email=' + a, 'popup');
    }
    function SendEmail() {
        var i = "<%= IND %>";
        var b = "<%= userid %>";
        popupWindow(700, 450, 50, '/admin/ecommerce/orders/EditOrderMailMessage.aspx?IND=' + i + '&UID=' + b, 'popup');
    }
    function EditPoint() {
        var i = "<%= IND %>";
        var b = "<%= userid %>";
        popupWindow(730, 250, 50, '/admin/ecommerce/points/EditPoint.aspx?IND=0&TYP=0&DIND=' + i, 'popup');
    }

</script>
