<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="offerorderdetail.ascx.vb" Inherits="offerorderdetail1" %>
<div id="orderdetail" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span><%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <div id="div_print">
                <table>
                    <tr>
                        <td><asp:Label runat="server" Text="Sipariş Durumu"></asp:Label></td>
                        <td><asp:Label runat="server">Sevk Yöntemi :</asp:Label></td>
                        <td><asp:Label runat="server">Ödeme Yöntemi :</asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:DropDownList ID="ddlOfferState" runat="server"></asp:DropDownList></td>
                        <td><asp:DropDownList ID="ddlSendType" runat="server"></asp:DropDownList></td>
                        <td><asp:DropDownList ID="ddlPayType" runat="server"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td colspan="3"><asp:Button ID="btnSave" runat="server" Text="Kaydet" CssClass="button" /></td>
                    </tr>
                </table>
                <asp:GridView ID="GridView1" runat="server" CssClass="datalist" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="id,OfferStatusID" EnableModelValidation="True" Width="800px">
                    <HeaderStyle CssClass="title" />
                    <Columns>

                        <asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" />
                        <asp:BoundField DataField="OfferTicket" HeaderText="Teklifi No" SortExpression="OfferTicket" ReadOnly="True" />
                        <asp:BoundField DataField="FullName" HeaderText="Teklifi No" SortExpression="FullName" ReadOnly="True" />
                        <asp:BoundField DataField="ProductName" HeaderText="Ürün" SortExpression="ProductName" ReadOnly="True" />
                        <asp:BoundField DataField="Qty" HeaderText="Adet" SortExpression="Qty" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Tutar" SortExpression="Price">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# formatCurTL(Container.DataItem("Price")) %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Kdv" HeaderText="Kdv" SortExpression="Kdv" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Toplam" SortExpression="KdvDahil">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# formatCurTL(Container.DataItem("KdvDahil")) %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Teklif" SortExpression="OfferPrice">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# formatCurTL(Container.DataItem("OfferPrice")) %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="DateCreated" HeaderText="Tarih" SortExpression="DateCreated" ReadOnly="True" />


                    </Columns>
                </asp:GridView>
                <label>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label>
                <label>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></label>
                <label>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></label>
                <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblSort" runat="server" Visible="False" CssClass="Admin_Normal_Label" Text=""></asp:Label>
                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>

                <asp:Label ID="lblErr" runat="server"></asp:Label>
                <a class="button" style="display: none;" onclick="window.close();parent.$.fn.colorbox.close();" href="#"><%=GetGlobalResourceObject("lang", "Close")%></a>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
            </div>
            <label style="text-align: right">
                <asp:HyperLink ID="HyperLink1" CssClass="button" runat="server" NavigateUrl="javascript:void(printdiv('div_print'));"><%=GetGlobalResourceObject("lang", "Print")%></asp:HyperLink></label>
        </div>
    </div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery(window).bind("load", function () {
            var frameWidth = jQuery(document).width();
            var frameHeight = jQuery(document).height() + 20;
            parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
        });
    });
</script>
