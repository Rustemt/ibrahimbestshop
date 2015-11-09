﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="sectionlist.ascx.vb" Inherits="sectionlist" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageSuppliers">
    <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <div class="buttonGroup">
                <asp:HyperLink ID="Linkaddnewservices" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Yeni Bölüm Ekle</asp:HyperLink>
            </div>
            <div class="dataTable">
                <asp:GridView ID="GWSection" runat="server" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" ShowHeaderWhenEmpty="true"  HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left">
                    <Columns>
                        <asp:BoundField DataField="id" Visible="False" HeaderText="IND" SortExpression="id" ReadOnly="True" />
                        <asp:BoundField DataField="SectionCode" Visible="False" HeaderText="Bölüm Kodu" ReadOnly="True" SortExpression="SectionCode" />
                        <asp:TemplateField HeaderText="Bölüm Kodu" SortExpression="SectionCode">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/guaranty/editSection.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '><%#Eval("SectionCode")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="SectionName" HeaderText="Bölüm Adı" ReadOnly="True" SortExpression="SectionName" />
                        <asp:BoundField DataField="DepartmentName" HeaderText="Departman" SortExpression="DepartmentName" />
                        <asp:BoundField DataField="SectionMobile" HeaderText="Cep" SortExpression="SectionMobile" />
                        <asp:BoundField DataField="SectionPhone" HeaderText="Telefon" SortExpression="SectionPhone" />
                        <asp:BoundField DataField="SectionFax" HeaderText="Fax" SortExpression="SectionFax" />
                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Durumu">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#IIf(DataBinder.Eval(Container.DataItem, "SectionStatus") = 2, "Aktif", IIf(DataBinder.Eval(Container.DataItem, "SectionStatus") = 1, "Pasif", "Belirsiz"))%>' ID="txt"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Düzenle" Visible="False">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/guaranty/editSection.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '> Düzenle </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');" CausesValidation="False" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash"></i></asp:LinkButton>
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
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
