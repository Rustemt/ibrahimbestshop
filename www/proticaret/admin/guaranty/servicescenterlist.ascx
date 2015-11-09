<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="servicescenterlist.ascx.vb" Inherits="servicescenterlist" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageSuppliers">
    <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <div class="buttonGroup">
                <asp:HyperLink ID="Linkaddnewservices" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Yeni Servis Merkezi Ekle</asp:HyperLink>
            </div>
            <div class="dataTable">
                <asp:GridView ID="GWServicesCenter" runat="server" GridLines="None" ShowHeaderWhenEmpty="true"  AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left">
                    <Columns>
                        <asp:BoundField DataField="id" Visible="False" HeaderText="IND" SortExpression="id" ReadOnly="True" />
                        <asp:BoundField DataField="ServicesCode" Visible="False" HeaderText="Servis Kodu" ReadOnly="True" SortExpression="ServicesCode" />
                        <asp:TemplateField HeaderText="Servis Kodu" SortExpression="ServicesCode">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/guaranty/editserviceslist.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '><%#Eval("ServicesCode")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ServicesName" HeaderText="Servis Adı" ReadOnly="True" SortExpression="ServicesName" />
                        <asp:BoundField DataField="ServicesAuthority" HeaderText="Yetkili" SortExpression="ServicesAuthority" />
                        <asp:BoundField DataField="CountryName" HeaderText="Ülke" SortExpression="CountryName" />
                        <asp:BoundField DataField="CityName" HeaderText="İl" SortExpression="CityName" />
                        <asp:BoundField DataField="ServicesAdress" HeaderText="Adres" SortExpression="ServicesAdress" />
                        <asp:BoundField DataField="ServicesMobile" HeaderText="Cep Tel." SortExpression="ServicesMobile" />
                        <asp:BoundField DataField="ServicesPhone" HeaderText="Sabit Tel." SortExpression="ServicesPhone" />
                        <asp:BoundField DataField="ServicesFax" HeaderText="Fax" SortExpression="ServicesFax" />
                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Durumu">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#IIf(DataBinder.Eval(Container.DataItem, "ServicesStatus") = 2, "Aktif", IIf(DataBinder.Eval(Container.DataItem, "ServicesStatus") = 1, "Pasif", "Belirsiz"))%>' ID="txt"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Düzenle" Visible="False">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/guaranty/editserviceslist.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '><i class="fa fa-pencil"></i> Düzenle </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');" CausesValidation="False" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <div class="dataCount">
                <ul>
                    <li>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>

