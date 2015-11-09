<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="offerlist.ascx.vb" Inherits="offerlist1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="suppliers" class="module">
    <div id="module_content">
        <div class="moduleTitle">
            <%=GetGlobalResourceObject("lang", "OfferList")%>
        </div>
        <div class="moduleContent moduleContentCol1">
            <asp:Panel ID="pnlMsg" runat="server">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </asp:Panel>
            <div class="dataTable hidden">
                <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:GridView ID="GridView1" runat="server" CssClass="datalist" CellPadding="5" HeaderStyle-CssClass="title" GridLines="None" ItemStyle-CssClass="row" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" Width="100%">
                            <HeaderStyle CssClass="title" />
                            <Columns>

                                <asp:BoundField DataField="id"  HeaderText="IND" visible="false" SortExpression="id" ReadOnly="True" />
                                 <asp:TemplateField HeaderText="Teklif No" >
                                    <ItemTemplate>
                                        <asp:HyperLink runat="server" CssClass="lightbox buttonLink" ID="hlPayIt" NavigateUrl='<%# "~/store/offerorderdetail.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & ""%>'>
                                        	<%# Container.DataItem("id")%> 
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="DateCreated" HeaderText="Teklif Tarihi" SortExpression="DateCreated" />
                                <asp:BoundField DataField="FullName" HeaderText="Teklifi Yapan" ReadOnly="True" SortExpression="FullName" />
                                <asp:TemplateField HeaderText="Teklif Tutarı" SortExpression="Toplam">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" Width="100" runat="server" Text='<%# formatCurTL(Container.DataItem("Toplam")) %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <%--<asp:BoundField DataField="GenTotal" HeaderText="Teklif" SortExpression="GenTotal" />--%>
                                <asp:BoundField DataField="OfferStatusName" HeaderText="Teklif Durumu" ReadOnly="True" SortExpression="OfferStatusName" />
                                
                                <asp:BoundField DataField="SendDate" HeaderText="Gönderim Tarihi" SortExpression="SendDate" />
                                <asp:BoundField DataField="DeliveryDate" HeaderText="Sevk Tarihi" SortExpression="DeliveryDate" />
                                <asp:BoundField DataField="ValidDate" HeaderText="Geçerlilik Tarihi" SortExpression="ValidDate" />

                                <asp:TemplateField visible="false">
                                    <ItemTemplate>
                                        <asp:HyperLink runat="server" CssClass="lightbox button iButton" ID="hlPayIt" NavigateUrl='<%# "~/store/offerorderdetail.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & ""%>'>
                                        	<i class="icon-list-alt"></i>
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <%--                            <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:HyperLink runat="server" CssClass="button" ID="hlPayIt" NavigateUrl='<%# "~/store/payment.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & "&KID=" & UserID & ""%>'>Ödeme Yap</asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                            </Columns>
                        </asp:GridView>
                        <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblSort" runat="server" Visible="False" CssClass="Admin_Normal_Label" Text=""></asp:Label>
                        <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
             <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("lang", "TotalRecords")%> : <b><asp:Label ID="lblTotalRecord" runat="server"></asp:Label></b></li>
                    <li><%=GetGlobalResourceObject("lang", "TotalPages")%> : <b><asp:Label ID="lblPageCount" runat="server"></asp:Label></b></li>
                    <li><%=GetGlobalResourceObject("lang", "CurrentPage")%> : <b> <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></b></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
       $(".lightbox").colorbox({ width: "600", height: "400", iframe: true, scrolling: false });
	   $("a[id='btnAddToCart']").colorbox({ width: "400", height: "300", iframe: true, scrolling: false, close: '<%=GetGlobalResourceObject("lang", "close") %>' });
    });
</script>
