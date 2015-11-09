<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cancelorderdetail.ascx.vb" Inherits="ASPNetPortal.cancelorderdetailascx" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="orderlist" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        Ürün Listesi
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
      <div id="div_print">
    <div class="moduleContent moduleContentCol1 clearFix">

        <label>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label></label>
        <div class="dataTable">
            <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" ShowFooter="True" HeaderStyle-CssClass="title" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundColumn DataField="OrderDetailsId" Visible="false" HeaderText="ID"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="OrderId" Visible="false" ItemStyle-Width="110">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblOrderDetailsId" Text='<%#Eval("OrderDetailsId")%>'></asp:Label>
                            <asp:Label runat="server" ID="lblOrderId" Text='<%#Eval("OrderId")%>'></asp:Label>
                            <asp:Label runat="server" ID="lblQuantity" Text='<%#Eval("Quantity")%>'></asp:Label>
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
                     <asp:BoundColumn DataField="StatusName" HeaderText="İade Durumu"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Quantity" HeaderText="<%$ Resources:admin,Quantity %>" Visible="false" ItemStyle-HorizontalAlign="Left"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="Satılan Adet" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate><%#DataBinder.Eval(Container, "DataItem.Quantity2")%> <%#DataBinder.Eval(Container, "DataItem.BirimAdi")%> </ItemTemplate>
                    </asp:TemplateColumn>                          
                    <asp:TemplateColumn HeaderText="İade Edilecek Miktar" ItemStyle-Wrap="false">
                        <ItemTemplate>
                           <asp:Label runat="server" ID="lblQuantity"><%# Eval("Quantity") %>&nbsp;<%#DataBinder.Eval(Container, "DataItem.BirimAdi")%></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Talep Tarihi" ItemStyle-Wrap="false">
                        <ItemTemplate>
                           <asp:Label runat="server" ID="lblCreatedDate"><%# Eval("CreatedDate") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="İade Onay Tarihi" ItemStyle-Wrap="false">
                        <ItemTemplate>
                           <asp:Label runat="server" ID="lblAcceptDate"><%# Eval("AcceptDate") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn Visible="False" DataField="BirimIndirimOrani" HeaderText="Stok İndirimi(%)" DataFormatString="{0:0.00}"></asp:BoundColumn>
                    <asp:BoundColumn Visible="False" DataField="CariIndirimOrani" HeaderText="Cari İndirimi(%)" DataFormatString="{0:0.00}"></asp:BoundColumn>
                </Columns>
            </asp:DataGrid>
        </div>
        <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    </div>
          </div>
    <label style="text-align: right">
                <asp:HyperLink ID="HyperLink1" CssClass="button" runat="server" NavigateUrl="javascript:void(printdiv('div_print'));"><%=GetGlobalResourceObject("lang", "Print")%></asp:HyperLink></label>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $(".lightbox").colorbox({ width: "600", height: "400", iframe: true, scrolling: false });
    });

</script>


