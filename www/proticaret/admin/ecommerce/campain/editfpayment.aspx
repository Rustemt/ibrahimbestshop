<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.editfpayment" CodeBehind="editfpayment.aspx.vb" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<html>
<head id="head1" runat="server">
    <title>Finansal Kampanya</title>
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Finansal Tan�mlar</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                    <div class="buttonGroup">
                        <a class="btnDefault" id="lnkUrun" runat="server" href="#" onclick="AddNew()"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "AddNew")%></a>
                    </div>

                    <div class="alert">
                        <asp:Label ID="txtCampainName" runat="server">�deme Tan�mlar�</asp:Label></div>
                    <asp:Label ID="Label2" runat="server" Visible="false">Genel Tan�mlar</asp:Label>

                    <div class="dataForm">
                        <div class="row">
                            <div class="colFour">
                                <label>
                                    <asp:Label ID="Label5" runat="server">Havale �le �deme</asp:Label></label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkAcceptTransfer" runat="server" Checked="True" Text="Aktif/Pasif" Enabled="False" /></label>
                            </div>
                            <div class="colFour">
                                <label>
                                    <asp:Label ID="Label10" runat="server">Di�er �demeler</asp:Label></label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkPayType" runat="server" Checked="True" Text="Aktif/Pasif" /></label>
                            </div>
                            <div class="colFour">
                                <label>
                                    <asp:Label ID="Label8" runat="server">Teslimatta �deme</asp:Label></label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkAcceptCashOnDelivery" runat="server" Checked="True" Text="Aktif/Pasif" /></label>
                            </div>
                            <div class="colFour">
                                <label>
                                    <asp:Label ID="Label6" runat="server">Kargo Hesaplans�n</asp:Label></label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkAcceptAddCargo" runat="server" Checked="True" Text="Aktif/Pasif" /></label>
                            </div>
                        </div>
                    </div>

                    <p><b>
                        <asp:Label ID="Label1" runat="server">Banka Tan�mlar�</asp:Label></b></p>
                    <div class="dataTable">
                        <asp:DataGrid ID="dgbanks" runat="server" GridLines="None" AutoGenerateColumns="False" PageSize="20" ShowFooter="True" HeaderStyle-CssClass="title">
                            <Columns>
                                <asp:BoundColumn DataField="FBankId" HeaderText="ID"></asp:BoundColumn>
                                <asp:BoundColumn DataField="BankName" HeaderText="Banka Ad�"></asp:BoundColumn>
                                <asp:BoundColumn DataField="IsActive" HeaderText="Aktif"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Taksitler" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate> 
                                        <a href="javascript:void(0)" class="btnIcon" onclick="<%# "popupWindow(700,400,50,'/admin/ecommerce/campain/FBankInfo.aspx?BIND=" & DataBinder.Eval(Container.DataItem, "FBankId") & "&MID=" & 0 & "','popup');"%>"><i class="fa fa-pencil"></i></a>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="D&#252;zenle"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                                    <ItemTemplate>
                                        <a href="javascript:void(0)" class="btnIcon" onclick="<%# "popupWindow(500,250,50,'/admin/ecommerce/campain/EditfBank.aspx?BIND=" & DataBinder.Eval(Container.DataItem, "FBankId") & "','popup');"%>"><i class="fa fa-pencil"></i></a>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Sil"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnIcon" CausesValidation="false" CommandName="Delete" ><i class="fa fa-trash-o"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                        </asp:DataGrid>
                    </div>

                    <div class="buttonGroup">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="Kaydet &amp; Kapat"></asp:Button>
                        <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" CausesValidation="False" Text="�ptal"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

<script type="text/javascript">
    function AddNew() {
        var a = "<%= IND%>";
        popupWindow(700, 250, 50, '/admin/ecommerce/campain/EditfBank.aspx?IND=0&FIND=' + a, 'popup');
    }

</script>
