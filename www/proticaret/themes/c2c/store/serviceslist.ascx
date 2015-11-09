<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="serviceslist.ascx.vb" Inherits="serviceslist" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="suppliers" class="module">
    <div id="module_content">
        <div id="module_title">
            <span><span id="module_title_icon"></span>Servis Alt Kategori Listesi </span>
        </div>
        <div>
            <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div>
                        <div>
                            <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
                            <br />
                        </div>

                        <div>
                            <br />

                            <asp:GridView ID="GridView1" runat="server" CssClass="datalist" CellPadding="5" HeaderStyle-CssClass="title" GridLines="None" ItemStyle-CssClass="row" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True">
                                <HeaderStyle CssClass="title" />
                                <Columns>
                                    
                                    <asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" />
                                    <asp:BoundField DataField="SStatus" HeaderText="Servis Türü" ReadOnly="True" SortExpression="SStatus" />
                                    <asp:BoundField DataField="MarkName" HeaderText="Marka" ReadOnly="True" SortExpression="MarkName" />
                                    <asp:BoundField DataField="ModelName" HeaderText="Model" SortExpression="ModelName" />
                                    <asp:BoundField DataField="ProductName" HeaderText="Ürün" SortExpression="ProductName" />
                                    <asp:BoundField DataField="SerialNo" HeaderText="Seri No" SortExpression="SerialNo" />
                                    <asp:BoundField DataField="Status" HeaderText="Servis Durumu" SortExpression="ServicesStatus" />
                                    <asp:BoundField DataField="OrderDate" HeaderText="Tarih" SortExpression="OrderDate" />

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:HyperLink runat="server" CssClass="button" ID="hlPayIt" NavigateUrl=<%# "~/store/payment.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & "&KID=" & DataBinder.Eval(Container.DataItem, "UserID")%> >Ödeme Yap</asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>
                            <label>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label>
                            <label>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></label>
                            <label>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></label>
                            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblSort" runat="server" Visible="False" CssClass="Admin_Normal_Label" Text=""></asp:Label>
                            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                </ContentTemplate>

            </asp:UpdatePanel>

        </div>
    </div>
</div>
