<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cancelorder.ascx.vb" Inherits="ASPNetPortal.cancelorder" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="orderlist" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        İade Edilecek Ürün Listesi
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent moduleContentCol1 clearFix">
        <div runat="server" id="chkAlert" style="display:none" class="alert alert-error">
            <label>
                <asp:Label ID="lblchkMsg" runat="server"></asp:Label></label>
        </div>
        <div runat="server" id="msgDiv" visible="false" class="alert alert-info">
            <label>
                <asp:Label ID="msg" runat="server" Text="İade Standart Kanuni Süreniz Bitmiştir"></asp:Label></label>
        </div>
        <div runat="server" id="mainDiv">
        	<div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" ShowFooter="True" HeaderStyle-CssClass="title" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundColumn DataField="OrderDetailsId" Visible="false" HeaderText="ID"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="OrderId" Visible="false" ItemStyle-Width="110">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblOrderDetailsId" Text='<%#Eval("OrderDetailsId")%>'></asp:Label>
                                <asp:Label runat="server" ID="lblOrderId" Text='<%#Eval("OrderId")%>'></asp:Label>
                                <asp:Label runat="server" ID="lblQuantity" Text='<%#Eval("Quantity")%>'></asp:Label>
                                <asp:Label runat="server" ID="ProductId" Text='<%#Eval("ProductId")%>'></asp:Label>
                                <asp:Label runat="server" ID="ProductSizeId" Text='<%#Eval("ProductSizeId")%>'></asp:Label>
                                <asp:Label runat="server" ID="Carpan" Text='<%#Eval("Carpan")%>'></asp:Label>
                                <asp:Label runat="server" ID="StorageId" Text='<%#Eval("StorageId")%>'></asp:Label>
                                <asp:Label runat="server" ID="lblReturnQuantity" Text='<%# ChkNullInteger(Eval("IadeAdedi"))%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductCode %>" ItemStyle-Width="110">
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container, "DataItem.ProductCode")%> <%#IIf(ChkNullString(DataBinder.Eval(Container, "DataItem.ProductBarcode")) <> "", "<br>Barkod:" & DataBinder.Eval(Container, "DataItem.ProductBarcode"), "")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductFeatures %>">
                            <ItemTemplate><%#DataBinder.Eval(Container, "DataItem.Description").ToString.Replace("<div>","").Replace("</div>","")%> <%# iif(ChkNullString(DataBinder.Eval(Container, "DataItem.ProductSizeBarcode"))<>"","<br>Barkod:" & DataBinder.Eval(Container, "DataItem.ProductSizeBarcode"),"")%></ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="MarkName" HeaderText="<%$ Resources:admin,MarkName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Quantity" HeaderText="<%$ Resources:admin,Quantity %>" Visible="false" ItemStyle-HorizontalAlign="Left"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Satılan Adet" HeaderStyle-HorizontalAlign="Left">
                            <ItemTemplate><%#DataBinder.Eval(Container, "DataItem.Quantity")%> <%#DataBinder.Eval(Container, "DataItem.BirimAdi")%> </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="İade Miktari" ItemStyle-Wrap="false">
                            <ItemTemplate>
                                <asp:DropDownList runat="server" ID="ddlQuantity"></asp:DropDownList>
                                Adet 
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="İade Süresi">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblReturnDay" Text='<%#IIf(Eval("Code15")="",conf.GetValue("ProductReturnedDay",GetType(String)),Eval("Code15"))%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn Visible="False" DataField="BirimIndirimOrani" HeaderText="Stok İndirimi(%)" DataFormatString="{0:0.00}"></asp:BoundColumn>
                        <asp:BoundColumn Visible="False" DataField="CariIndirimOrani" HeaderText="Cari İndirimi(%)" DataFormatString="{0:0.00}"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,CurrencyAmount %>">
                            <ItemTemplate>
                                <asp:Label ID="Label35" runat="server" Text='<%# FormatCurDoviz(Eval("SatisFiyati")) & " " & Eval("CurrencyCode") %>'> </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,UnitPrice %>">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# FormatCurDoviz(CalcRate(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati") ,container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")),container.dataitem("Rate") / container.dataitem("CurrencyRate")))  & " " & container.dataitem("CurrencyCode")%>' ID="BirimFiyat"> </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Tax %>">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate><%# formatCurDoviz(CalcKdv(CalcRate(CalcIndirim(CalcIndirim(Container.DataItem("SatisFiyati"), Container.DataItem("BirimIndirimOrani")), Container.DataItem("CariIndirimOrani")) * Container.DataItem("Quantity"), Container.DataItem("Rate") / Container.DataItem("CurrencyRate")), Container.DataItem("KdvRate"))) & " " & Container.DataItem("CurrencyCode") %> </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Amount %>">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="Tutar" runat="server" Text='<%# FormatCurDoviz(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") , container.dataitem("Rate") / Container.DataItem("CurrencyRate") ),container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")) * container.dataitem("Quantity")) & " " & Container.DataItem("CurrencyCode") %>'> </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,SelectOrder %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <HeaderStyle Width="10px"></HeaderStyle>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkent" runat="server" OrderId='<%#Eval("OrderCode")%>'></asp:CheckBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkent', this.checked);" />
                                <%=GetGlobalResourceObject("admin", "All2")%>
                            </FooterTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
            </div>
            <div class="dataTable">
                <asp:RadioButtonList runat="server" ID="rblChoose" AutoPostBack="true">
                    <asp:ListItem Selected="True" Value="1">İade</asp:ListItem>
                    <asp:ListItem Value="2">Değişim</asp:ListItem>
                </asp:RadioButtonList>
            </div> 
             
            <div class="dataForm moduleContentCol3">
                <label runat="server" id="lblIban">IBAN : <asp:RequiredFieldValidator ControlToValidate="txtIban" runat="server" ID="RequiredFieldValidator1" CssClass="textRed" ErrorMessage="IBAN No Yazmanız Gerekmektedir."></asp:RequiredFieldValidator> </label>
                <asp:TextBox runat="server" ID="txtIban"></asp:TextBox>  
               
                <label runat="server" id="lblRequest">İade Talebi : </label>
                <asp:DropDownList runat="server" AutoPostBack="true" ID="ddlRequest"></asp:DropDownList>

                <label>Açıklama : <asp:RequiredFieldValidator ControlToValidate="txtReason" runat="server" ID="rfv1" CssClass="textRed" ErrorMessage="Lütfen İade-Değişim Nedeni Belirtiniz."></asp:RequiredFieldValidator> </label>
                <asp:TextBox runat="server" ID="txtReason" MaxLength="500" Height="150px" TextMode="MultiLine"></asp:TextBox>  
                             
                <label>İade & Değişim Nedenleri : </label>
                <asp:DropDownList runat="server" ID="ddlReason"></asp:DropDownList>
                <div class="clearFix"></div>      
                <asp:Button runat="server" OnClientClick="javascript:return CheckBox();" ID="btnReturned" CssClass="button" />
                <a class="button" onclick="window.close();parent.$.fn.colorbox.close();" href="#"><%=GetGlobalResourceObject("lang", "Close")%></a>     
             </div>  
        </div>
        <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblClose" Text="" runat="server"></asp:Label>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $(".lightbox").colorbox({ width: "600", height: "400", iframe: true, scrolling: false });
    });
</script>

<script type="text/javascript">
    var TargetBaseControl = null;

    window.onload = function () {
        try {
            //get target base control.
            TargetBaseControl =
              document.getElementById('<%= Datagrid1.ClientID%>');
        }
        catch (err) {
            TargetBaseControl = null;
        }
    }

    function CheckBox() {
        if (TargetBaseControl == null) return false;

        //get target child control.
        var TargetChildControl = "chkent";

        //get all the control of the type INPUT in the base control.
        var Inputs = TargetBaseControl.getElementsByTagName("input");

        for (var n = 0; n < Inputs.length; ++n)
            if (Inputs[n].type == 'checkbox' &&
               Inputs[n].id.indexOf(TargetChildControl, 0) >= 0 &&
               Inputs[n].checked)
                return true;


        document.getElementById('<%= chkAlert.ClientID%>').style.display = 'block'; // Show
     document.getElementById('<%= lblchkMsg.ClientId%>').innerText = 'Lütfen İade/Değişim Yapılacak Ürün veya Ürünlerin Seçimini Yapınız!';

     return false;
 }
</script>
