<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="personlist.ascx.vb" Inherits="personlist" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>

<div class="pagepersonlist">
    <div>
        <div>
            <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div>
                        <div class="buttonGroup">
                            <asp:HyperLink ID="Linkaddnewperson" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Yeni Personel Ekle</asp:HyperLink>
                            <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
                        </div>

                        <div class="dataTable">
                            <asp:GridView ID="GWPersonList" runat="server" GridLines="None" PageSize="20" DataKeyNames="id" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"  HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="title" />
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" />
                                    <asp:BoundField DataField="PersonCode" HeaderText="Kod" ReadOnly="True" SortExpression="PersonCode" visible="false" />
                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Kod">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/guaranty/person/editPerson.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '><%#Eval("PersonCode")%></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="PersonName" HeaderText="Ad" SortExpression="PersonName" />
                                    <asp:BoundField DataField="FullName" HeaderText="Üye" SortExpression="FullName" />
                                    <asp:BoundField DataField="PersonTitle" HeaderText="Ünvanı" SortExpression="PersonTitle" />
                                    <asp:BoundField DataField="ServicesName" HeaderText="Şube" SortExpression="ServicesName" />
                                    <asp:BoundField DataField="DepartmentName" HeaderText="Departman" SortExpression="DepartmentName" />
                                    <asp:BoundField DataField="JobGroupName" HeaderText="İş Grubu" SortExpression="JobGroupName" />
                                    <asp:BoundField DataField="PersonStatus" HeaderText="Durum" SortExpression="PersonStatus" />
                                    <asp:BoundField DataField="Offer" HeaderText="Teklif Modülü" SortExpression="Offer" />
                                    <asp:BoundField DataField="Services" HeaderText="Servis Modülü" SortExpression="Services" />


                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Üyeleri Düzenle">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink2" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/guaranty/person/UserSelect.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '> <i class="fa fa-pencil"></i> </asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Sil">
                                        <ItemTemplate>
                                            <asp:LinkButton Enabled="<%# IsAllowedOnDemo() %>" ID="lnkbtnDelete" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');" runat="server" CausesValidation="False" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                </Columns>

                            </asp:GridView>
                            <div class="dataCount">
                                <ul>
                               		<li><label>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label></li>
                                    <li><label>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></label></li>
                                    <li><label>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></label></li>
                                    <li><asp:Label ID="msg" runat="server" Visible="False"></asp:Label></li>
                                    <li><asp:Label ID="lblSort" runat="server" Visible="False" CssClass="Admin_Normal_Label" Text=""></asp:Label></li>
                                    <li><asp:Label ID="lbl" runat="server" Visible="False"></asp:Label></li>
                                </ul>
                            </div>
                            
                            
                </ContentTemplate>

            </asp:UpdatePanel>

        </div>
    </div>
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>

