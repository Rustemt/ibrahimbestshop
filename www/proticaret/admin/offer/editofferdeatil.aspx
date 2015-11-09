<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editofferdeatil.aspx.vb"
    Inherits="editofferdeatil" Culture="tr-TR" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Teklif Detay</title>
    <script type="text/javascript" src="/admin/js/jquery.ui.smoothMenu.min.js"></script>

    <script type="text/JavaScript">

        javascript: window.history.forward(-1);

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

    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/GridviewScroll.css" />

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/admin/assets/js/gridviewScroll.min.js"></script>

</head>
<script type="text/javascript">
    $(document).ready(function () {
        gridviewScroll();
    });

    function gridviewScroll() {

        $('#<%=GridView1.ClientID%>').gridviewScroll({
            width: 1300,
            height: 450,
            freezesize: 4
        });
    }
</script>
<body>
    <form id="form1" runat="server">
        <asp:Panel runat="server" ID="pnlSecure">
            <div id="div_print">
                <div id="module" class="pagePopup" style="width: 100%;">
                    <div class="boxToggle" runat="server">
                        <div class="toggleTitle">
                            <div class="titleText">
                                Teklif Onay Formu
                            </div>
                            <div class="titleTab">
                                <ul class="tabMenu">
                                    <li><a href="#tab_1">Teklif Bilgileri</a></li>
                                    <li><a href="#tab_2">Teklif Özel Bilgileri</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="toggleContent">
                            <asp:Label ID="lblError" runat="server"></asp:Label>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            <div class="tabContent">
                                <div class="tab" id="tab_1">
                                    <div class="dataForm">
                                        <div class="row">
                                            <div class="colThree">
                                                <asp:UpdatePanel runat="server" ID="upUser">
                                                    <ContentTemplate>
                                                        <div class="colOne">
                                                            <table cellpadding="5" cellspacing="5" border="0" width="100%">
                                                                <tr>
                                                                    <td align="right">
                                                                        <strong>
                                                                            <asp:Label runat="server">Şirket Ünvanı</asp:Label></strong>
                                                                    </td>
                                                                    <td>:
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblCompanyName"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <strong>
                                                                            <asp:Label runat="server">Yetkili Ad Soyad</asp:Label></strong>
                                                                    </td>
                                                                    <td>:
                                                                    </td>
                                                                    <td>
                                                                        <div style="float: left; padding-top: 18px;">
                                                                            <asp:Label runat="server" ID="lblFullName"></asp:Label>
                                                                        </div>
                                                                        <div class="buttonGroup" style="float: right;">
                                                                            <asp:HyperLink ID="hlChangeUser" runat="server" CssClass="btnDefault"><i class="fa fa-pencil"></i> Firma Değiştir</asp:HyperLink>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <strong>
                                                                            <asp:Label runat="server">Cep</asp:Label></strong>
                                                                    </td>
                                                                    <td>:
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblMobilePhone"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <strong>
                                                                            <asp:Label runat="server">Tel</asp:Label></strong>
                                                                    </td>
                                                                    <td>:
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblPhone"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <strong>
                                                                            <asp:Label runat="server">E-Mail</asp:Label></strong>
                                                                    </td>
                                                                    <td>:
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblEmail"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <strong>
                                                                            <asp:Label runat="server">Ülke</asp:Label></strong>
                                                                    </td>
                                                                    <td>:
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlCustamerCountry" runat="server" Enabled="False">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <strong>
                                                                            <asp:Label runat="server">Şehir</asp:Label></strong>
                                                                    </td>
                                                                    <td>:
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlCustamerCity" runat="server" Enabled="false">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <strong>
                                                                            <asp:Label runat="server">Adres</asp:Label></strong>
                                                                    </td>
                                                                    <td>:
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="txtAdress"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <strong>
                                                                            <asp:Label runat="server">Teklif Notu</asp:Label></strong>
                                                                    </td>
                                                                    <td>:
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtOfferNote" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                            <div class="colThree">
                                                <div class="dataForm">
                                                    <div class="row">
                                                        <table cellpadding="5" cellspacing="5" border="0" width="100%">
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>
                                                                        <asp:Label runat="server">Teklif Tipi</asp:Label></strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="ddlOfferType" runat="server">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>
                                                                        <asp:Label runat="server">Teklif Durumu</asp:Label></strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="ddlOfferState" runat="server">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>Aktif / Pasif</strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:CheckBox ID="cbtf" runat="server"></asp:CheckBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>
                                                                        <asp:Label runat="server">Proje</asp:Label></strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="ddlProject" runat="server">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>
                                                                        <asp:Label runat="server">Teklif Numarası</asp:Label></strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblOfferTicket" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>
                                                                        <asp:Label runat="server">Teklif Tarihi</asp:Label></strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblDateCreated" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>
                                                                        <asp:Label runat="server">Geçerlilik Tarihi</asp:Label></strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtValidDate" runat="server"></asp:TextBox>
                                                                    <cc2:CalendarExtender ID="txtValidDate_CalendarExtender" Format="dd.MM.yyyy" runat="server"
                                                                        TargetControlID="txtValidDate" Animated="True">
                                                                    </cc2:CalendarExtender>
                                                                    <asp:CompareValidator ID="cv1" runat="server" ErrorMessage="*" Operator="DataTypeCheck"
                                                                        Type="Date" ControlToValidate="txtValidDate" Visible="false"></asp:CompareValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>
                                                                        <asp:Label runat="server">Sevk Tarihi</asp:Label></strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtDeliveryDate" runat="server"></asp:TextBox>
                                                                    <cc2:CalendarExtender ID="txtDeliveryDate_CalendarExtender" Format="dd.MM.yyyy" runat="server"
                                                                        TargetControlID="txtDeliveryDate" Animated="True">
                                                                    </cc2:CalendarExtender>
                                                                    <asp:CompareValidator ID="cv2" runat="server" ErrorMessage="*" Operator="DataTypeCheck"
                                                                        Type="Date" ControlToValidate="txtDeliveryDate" Visible="false">*</asp:CompareValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>
                                                                        <asp:Label runat="server">Teslim Tarihi</asp:Label></strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtSendDate" runat="server"></asp:TextBox>
                                                                    <cc2:CalendarExtender ID="txtSendDate_CalendarExtender" Format="dd.MM.yyyy" runat="server"
                                                                        TargetControlID="txtSendDate" Animated="True">
                                                                    </cc2:CalendarExtender>
                                                                    <asp:CompareValidator ID="cv3" runat="server" ErrorMessage="*" Operator="DataTypeCheck"
                                                                        Type="Date" ControlToValidate="txtSendDate" Visible="false">*</asp:CompareValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>
                                                                        <asp:Label runat="server">Teklif Personeli</asp:Label></strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="ddlOfferPerson" runat="server">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>
                                                                        <asp:Label runat="server">Sevk Yöntemi</asp:Label></strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="ddlSendType" runat="server">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>
                                                                        <asp:Label runat="server">Ödeme Yöntemi</asp:Label></strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="ddlPayType" runat="server">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>
                                                                        <asp:Label runat="server">Yönetici Onayı</asp:Label></strong>
                                                                </td>
                                                                <td>:
                                                                </td>
                                                                <td>
                                                                    <asp:CheckBox ID="cbAdminApproval" runat="server" Width="100"></asp:CheckBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        -
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="colTwo">
                                                <div class="buttonGroup">
                                                    <asp:HyperLink ID="lnkAddNew" runat="Server" CssClass="btnDefault"><i class="fa fa-plus"></i> Ürün Ekle </asp:HyperLink>
                                                    <asp:Button ID="btnSave" CssClass="btnDefault" runat="server" Text="Kaydet" CausesValidation="False" />
                                                    <asp:Button ID="btnclose" CssClass="btnDefault" runat="server" Text="Çık" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab" id="tab_2">
                                    <div class="dataForm">
                                        <asp:Panel ID="pnlOpt" runat="server">
                                            <div class="row">
                                                <div class="colTwo">
                                                    <div class="row">
                                                        <div class="colTwo">
                                                            <label>
                                                                <asp:Label ID="txtOpt1" runat="server"></asp:Label></label>
                                                            <asp:DropDownList ID="servicesOpt1" runat="server">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="colTwo">
                                                            <label>
                                                                <asp:Label ID="txtOpt2" runat="server"></asp:Label></label>
                                                            <asp:DropDownList ID="servicesOpt2" runat="server">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="colTwo">
                                                            <label>
                                                                <asp:Label ID="txtOpt3" runat="server"></asp:Label></label>
                                                            <asp:DropDownList ID="servicesOpt3" runat="server">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="colTwo">
                                                            <label>
                                                                <asp:Label ID="txtOpt4" runat="server"></asp:Label></label>
                                                            <asp:DropDownList ID="servicesOpt4" runat="server">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="colTwo">
                                                            <label>
                                                                <asp:Label ID="txtOpt5" runat="server"></asp:Label></label>
                                                            <asp:DropDownList ID="servicesOpt5" runat="server">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="colTwo">
                                                            <label>
                                                                <asp:Label ID="txtOpt6" runat="server"></asp:Label></label>
                                                            <asp:DropDownList ID="servicesOpt6" runat="server">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="colTwo">
                                                            <label>
                                                                <asp:Label ID="txtOpt7" runat="server"></asp:Label></label>
                                                            <asp:DropDownList ID="servicesOpt7" runat="server">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="colTwo">
                                                            <label>
                                                                <asp:Label ID="txtOpt8" runat="server"></asp:Label></label>
                                                            <asp:DropDownList ID="servicesOpt8" runat="server">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="colTwo">
                                                            <label>
                                                                <asp:Label ID="txtOpt9" runat="server"></asp:Label></label>
                                                            <asp:DropDownList ID="servicesOpt9" runat="server">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="colTwo">
                                                            <label>
                                                                <asp:Label ID="txtOpt10" runat="server"></asp:Label></label>
                                                            <asp:DropDownList ID="servicesOpt10" runat="server">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="colTwo">
                                                    <div class="row">
                                                        <div class="colTwo">
                                                            <label>
                                                                &nbsp;</label>
                                                            <label class="labelInput">
                                                                <asp:CheckBox ID="cbOpt1" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                                        </div>
                                                        <div class="colTwo">
                                                            <label>
                                                                &nbsp;</label>
                                                            <label class="labelInput">
                                                                <asp:CheckBox ID="cbOpt2" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="colTwo">
                                                            <label>
                                                                &nbsp;</label>
                                                            <label class="labelInput">
                                                                <asp:CheckBox ID="cbOpt3" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                                        </div>
                                                        <div class="colTwo">
                                                            <label>
                                                                &nbsp;</label>
                                                            <label class="labelInput">
                                                                <asp:CheckBox ID="cbOpt4" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="colTwo">
                                                            <label>
                                                                &nbsp;</label>
                                                            <label class="labelInput">
                                                                <asp:CheckBox ID="cbOpt5" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                                        </div>
                                                        <div class="colTwo">
                                                            <label>
                                                                &nbsp;</label>
                                                            <label class="labelInput">
                                                                <asp:CheckBox ID="cbOpt6" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="colTwo">
                                                            <label>
                                                                &nbsp;</label>
                                                            <label class="labelInput">
                                                                <asp:CheckBox ID="cbOpt7" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                                        </div>
                                                        <div class="colTwo">
                                                            <label>
                                                                &nbsp;</label>
                                                            <label class="labelInput">
                                                                <asp:CheckBox ID="cbOpt8" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="colTwo">
                                                            <label>
                                                                &nbsp;</label>
                                                            <label class="labelInput">
                                                                <asp:CheckBox ID="cbOpt9" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                                        </div>
                                                        <div class="colTwo">
                                                            <label>
                                                                &nbsp;</label>
                                                            <label class="labelInput">
                                                                <asp:CheckBox ID="cbOpt10" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                    </div>
                                </div>
                            </div>
                             
                                <asp:GridView ID="GridView1" runat="server" GridLines="Both" AutoGenerateColumns="False" DataKeyNames="id,ProductId,OfferStatusID,UnitId,CurrencyId"
                                    EnableModelValidation="True" HeaderStyle-HorizontalAlign="Left"
                                    ShowHeaderWhenEmpty="true">

                                    <Columns>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="lnkUpdate" runat="server" CausesValidation="True" CssClass="btnIcon"
                                                    ToolTip="Kaydet" CommandName="Update"><i class="fa fa-save"></i></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="lnkExit" runat="server" CausesValidation="False" CssClass="btnIcon"
                                                    ToolTip="İptal" CommandName="Cancel"><i class="fa fa-close"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkEdit" runat="server" CausesValidation="False" CssClass="btnIcon"
                                                    ToolTip="Güncelle" CommandName="Edit"><i class="fa fa-pencil"></i></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkDelete" runat="server" CausesValidation="False" CssClass="btnIcon"
                                                    ToolTip="Sil" CommandName="Delete" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');"><i class="fa fa-trash-o"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="id" HeaderText="IND" ReadOnly="True" />
                                        <asp:TemplateField HeaderText="Resim">
                                            <ItemTemplate>
                                                <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/Uploads/productsimages/" + container.dataitem("Image") + "" %>'
                                                    Width="50" oncontextmenu="return false" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Stok Kodu">
                                            <ItemTemplate>
                                                <asp:Label ID="lblProdoctId" runat="server" Text='<%# Bind("ProductCode")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Barkod">
                                            <EditItemTemplate>
                                                <asp:Label ID="lblBarCode" runat="server" Text='<%# Eval("Barcode")%>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblBarCode" runat="server" Text='<%# Bind("Barcode")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Stok Adı">
                                            <EditItemTemplate>
                                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductName")%>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblProductName" runat="server" Text='<%# Bind("ProductName")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Açıklama">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNote" runat="server" Height="100" Text='<%# Eval("Note")%>' TextMode="MultiLine"
                                                    Width="120"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="txtNote" runat="server" Text='<%# Bind("Note")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Miktar">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtQty" runat="server" Text='<%# Bind("Qty")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblQty" runat="server" Text='<%# eval("Qty") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Birim">
                                            <EditItemTemplate>
                                                <asp:DropDownList runat="server" ID="ddlBirim" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblBirim" runat="server" Text='<%# Bind("BirimAdi")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="B.Fiyat">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtPrice" runat="server" Text='<%# Container.DataItem("Price")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("CurrencySymbolLeft") & " " & formatCurDoviz(container.dataitem("Price")) & "  " & Eval("CurrencySymbolRight")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="DövizKuru">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDovizKur" runat="server" Text='<%# Bind("Rate") %>' Width="50"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDovizKur" runat="server" Text='<%# Bind("Rate")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="A.Fiyat">
                                            <ItemTemplate>
                                                <asp:Label ID="lblBuyPrice" runat="server" Text='<%# Eval("AlLeft") & " " & formatCurDoviz(container.dataitem("BuyPrice")) & "  " & Eval("AlRight")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="A.Tutarı">
                                            <ItemTemplate>
                                                <asp:Label ID="lblBuyQtyTotal" runat="server" Text='<%# Eval("AlLeft") & " " & formatCurDoviz(container.dataitem("BuyQtyTotal")) & "  " & Eval("AlRight")%>'></asp:Label><asp:Label
                                                    runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="İndirimli B.Fiyat">
                                            <EditItemTemplate>
                                                <asp:Label ID="lblDiscQtyPrice" runat="server" Text='<%# Container.DataItem("DiscQtyPrice")%>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDiscQtyPrice" runat="server" Text='<%# Eval("CurrencySymbolLeft") & " " & formatCurDoviz(Container.DataItem("DiscQtyPrice")) & "  " & Eval("CurrencySymbolRight")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Hiz. Fiyatı">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtServicePrice" runat="server" Text='<%# Container.DataItem("ServicePrice")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="txtServicePrice" runat="server" Text='<%# Eval("CurrencySymbolLeft") & " " & formatCurDoviz(container.dataitem("ServicePrice")) & "  " & Eval("CurrencySymbolRight")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Toplam Tutar">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTotalPrice" runat="server" Text='<%# Eval("CurrencySymbolLeft") & " " & formatCurDoviz(container.dataitem("TotalPrice")) & "  " & Eval("CurrencySymbolRight") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="SatırNetTopTut" Visible="False">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNetTotPrice" runat="server" Enabled="False" Text='<%# Bind("NetTotPrice") %>'
                                                    Width="50"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblNetTotPrice" runat="server" Text='<%# Eval("CurrencySymbolLeft") & " " & formatCurDoviz(container.dataitem("NetTotPrice")) & "  " & Eval("CurrencySymbolRight")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="SatırNetTopTut" Visible="True">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDiscountTotal" runat="server" Enabled="False" Text='<%# Bind("DTP") %>'
                                                    Width="50"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDiscountTotal" runat="server" Text='<%# Eval("CurrencySymbolLeft") & " " & formatCurDoviz(container.dataitem("DTP")) & "  " & Eval("CurrencySymbolRight")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="İsk1%">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDiscount1" runat="server" Text='<%# Bind("Discount1") %>' Width="50"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDiscount1" runat="server" Text='<%# Bind("Discount1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="İsk2%">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDiscount2" runat="server" Text='<%# Bind("Discount2") %>' Width="50"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDiscount2" runat="server" Text='<%# Bind("Discount2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="İsk3%">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDiscount3" runat="server" Text='<%# Bind("Discount3") %>' Width="50"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDiscount3" runat="server" Text='<%# Bind("Discount3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="İsk4%">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDiscount4" runat="server" Text='<%# Bind("Discount4") %>' Width="50"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDiscount4" runat="server" Text='<%# Bind("Discount4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="İsk5%">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDiscount5" runat="server" Text='<%# Bind("Discount5") %>' Width="50"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDiscount5" runat="server" Text='<%# Bind("Discount5") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="SatırİskTopTut">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDiscTotPrice" runat="server" Enabled="False" Text='<%# Bind("DiscTotPrice")%>'
                                                    Width="50"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDiscTotPrice" runat="server" Text='<%# Bind("DiscTotPrice") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="SatırNetTopTLTut">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNetTotTLPrice" runat="server" Enabled="False" Text='<%# Bind("NetTotTLPrice") %>'
                                                    Width="50"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblNetTotTLPrice" runat="server" Text='<%# Bind("NetTotTLPrice")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Kdv%">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtKdvRate" runat="server" Enabled="False" Text='<%# Bind("Kdv")%>'
                                                    Width="50"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblKdvRate" runat="server" Text='<%# Bind("Kdv")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="KdvTopTut">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtKdvNetTotPrice" runat="server" Enabled="False" Text='<%# Bind("KdvNetTotPrice")%>'
                                                    Width="50"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblKdvNetTotPrice" runat="server" Text='<%# Bind("KdvNetTotPrice")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Dip İsk 1" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDeepDisc1" runat="server" Text='<%# Bind("DeepDisc1")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Dip İsk 2" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDeepDisc2" runat="server" Text='<%# Bind("DeepDisc2")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Dip İsk Gen Top 1" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lblGenTotal" runat="server" Text='<%# Bind("DeepGenDiscTotal1")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Dip İsk Top 1" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lblGenTotal2" runat="server" Text='<%# Bind("DeepDiscTotal1")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Dip İsk1 Kdv" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDeepDiscKdv1" runat="server" Text='<%# Bind("DeepDiscKdv1")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Dip İsk Gen Top 2" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lblGenTotal3" runat="server" Text='<%# Bind("DeepGenDiscTotal2")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Dip İsk Top 2" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lblGenTotal4" runat="server" Text='<%# Bind("DeepDiscTotal2")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Dip İsk2 Kdv" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDeepDiscKdv2" runat="server" Text='<%# Bind("DeepDiscKdv2")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="ToplamTl" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTLTotal" runat="server" Text='<%# Bind("TotalTl")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="En">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOrderEN" runat="server" Text='<%# Bind("En")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Boy">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOrderBoy" runat="server" Text='<%# Bind("Boy")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Yukseklik">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOrderYuk" runat="server" Text='<%# Bind("Yukseklik")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Agirlik">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOrderAgirlik" runat="server" Text='<%# Bind("Agirlik")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Hacim">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOrderHcim" runat="server" Text='<%# Bind("Hacim")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" Wrap="false" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <HeaderStyle CssClass="GridviewScrollHeader" />
                                    <RowStyle CssClass="GridviewScrollItem" />
                                    <PagerStyle CssClass="GridviewScrollPager" />
                                </asp:GridView>
                          

                            <div class="dataForm">
                                <div class="row">
                                    <div class="colThree">
                                        <table align="left" cellpadding="5" cellspacing="5" border="0" width="70%">
                                            <tr>
                                                <td colspan="3">
                                                    <div class="dataCount">
                                                        <ul>
                                                            <li>Toplam Kayıt:<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                                                            <li>Toplam Sayfa:<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                                                            <li>Geçerli Sayfa:<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <strong>
                                                        <asp:Label ID="msg" runat="server" Visible="False"></asp:Label></strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <strong>
                                                        <asp:Label ID="lblSort" runat="server" Visible="False" CssClass="Admin_Normal_Label"
                                                            Text=""></asp:Label></strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong class="textRed">Parça Toplamı</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblparttotal" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong class="textRed">Hizmet Toplamı</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblServicesPrice" runat="server"></asp:Label>TL
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong class="textRed">Para Birimi</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlDoviz" runat="server" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong class="textRed">Belge Kuru</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtKur" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3"></td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong class="textRed">Son Güncelleme Tarihi</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblLastUpdate"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong class="textRed">Son Güncelleyen</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblUpdater"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="colThree" style="margin-top: 125px;">
                                        <table align="left" cellpadding="5" cellspacing="5" width="70%">
                                            <tr>
                                                <td align="right">
                                                    <strong>Dip İsk % 1</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td width="40%">
                                                    <asp:TextBox ID="txtDis1" runat="server" Text="0" AutoPostBack="True"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong>Dip İsk % 2</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtDis2" runat="server" Text="0" AutoPostBack="True"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong>Dip İsk Tutar 3</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtDis3" runat="server" AutoPostBack="True"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong>Dip İsk Tutar 4</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtDis4" runat="server" AutoPostBack="True"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="colThree" style="margin-top: 125px;">
                                        <table cellpadding="0" cellspacing="0" width="70%">
                                            <tr>
                                                <td align="right" width="40%">
                                                    <strong>Matrah Toplamı</strong>
                                                </td>
                                                <td width="1%">:
                                                </td>
                                                <td align="right" width="35%">
                                                    <label class="labelInput">
                                                        <asp:Label ID="lblMatrah" runat="server"></asp:Label>TL</label>
                                                </td>
                                                <td align="right" width="22%">
                                                    <asp:Label ID="lblChangeMatrah" runat="server"></asp:Label>
                                                </td>
                                                <td width="2%" align="right">
                                                    <asp:Label ID="lblChangeMatrahS" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong>İskonto Toplamı</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td align="right">
                                                    <label class="labelInput">
                                                        <asp:Label ID="lblDiscTotale" runat="server"></asp:Label>TL</label>
                                                </td>
                                                <td align="right">
                                                    <asp:Label ID="lblChangeDisc" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblChangeDiscS" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong>Ara Toplam</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td align="right">
                                                    <label class="labelInput">
                                                        <asp:Label ID="lblSpaceTotal" runat="server"></asp:Label>TL</label>
                                                </td>
                                                <td align="right">
                                                    <asp:Label ID="lblChangeSpace" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblChangeSpaceS" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong>KDV Toplamı</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td align="right">
                                                    <label class="labelInput">
                                                        <asp:Label ID="lblKdv" runat="server"></asp:Label>TL</label>
                                                </td>
                                                <td align="right">
                                                    <asp:Label ID="lblChangeKdv" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblChangeKdvS" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnResetDeepDisc" runat="server" CssClass="button" Text="Dip İskontoları Sıfırla" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <strong>Genel Toplam</strong>
                                                </td>
                                                <td>:
                                                </td>
                                                <td align="right">
                                                    <label class="labelInput">
                                                        <asp:Label ID="lblTotal" runat="server"></asp:Label></label>
                                                </td>
                                                <td align="right">
                                                    <asp:Label ID="lblChangeDoviz" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblChangeDovizS" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:Label Text="" runat="server" ID="lbl" />
                </div>
                <div class="buttonGroup">
                    <asp:Button ID="btnPdf" runat="server" CssClass="btnDefault" Text="Export" />
                    <asp:HyperLink ID="HyperLink1" CssClass="btnDefault" runat="server" NavigateUrl="javascript:void(printdiv('div_print'));"><%=GetGlobalResourceObject("lang", "Print")%></asp:HyperLink>
                </div>
            </div>
            <script type="text/javascript">
                $(document).ready(function () {
                    $(".button").button();
                    $("#module", this).addClass('ui-widget');
                    $("div#module_content", this).addClass('ui-widget-content ui-corner-all');
                    $("#module_title", this).addClass('ui-widget-header ui-corner-all');
                    $("#module_title_icon", this).addClass('ui-icon ui-icon-triangle-1-e');
                    $("div.module a", this).addClass('ui-priority-primary');
                });
            </script>
        </asp:Panel>

    </form>
</body>
</html>
