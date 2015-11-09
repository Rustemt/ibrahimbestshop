<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editorderdeatil.aspx.vb" Inherits="editorderdeatil" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Servis tip Ekle</title>
<link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
<script type="text/javascript" src="/admin/assets/js/jquery.min.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle" id="TabContainer" runat="server">
		<div class="toggleTitle toggleMini">
			<div class="titleText">Teknik Servis Formu</div>
            <div class="titleTab">
                <ul class="tabMenu">
                    <li><a href="#tab_1">Servis ve Cihaz Bilgileri</a></li>
                    <li><a href="#tab_2">Teknik Servis Özel Bilgiler</a></li>
                </ul>
            </div>
		</div>
		<div class="toggleContent">
			<asp:Label Text="" runat="server" ID="lbl" />
			<asp:Label ID="lblError" runat="server" CssClass="alert alert-error"></asp:Label>
			<asp:Label ID="lblmsg" runat="server" Visible="False" CssClass="alert alert-info"></asp:Label>
			<!--COLS-->
            <div class="tabContent">
            	<div class="tab" id="tab_1">
                    <div class="dataForm">
                        <div class="row clearfix">
                            <div class="col1-1">
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle"><asp:Label runat="server">Şirket Ünvanı :</asp:Label></label></div>
                                        <div class="col1-2"><label class="labelInput"><asp:Label runat="server" ID="lblCompanyName"></asp:Label></label></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle"><asp:Label runat="server">Yetkili Ad Soyad :</asp:Label></label></div>
                                        <div class="col1-2 colBtn">
                                            <label class="labelInput"><asp:Label runat="server" ID="lblFullName"></asp:Label></label>
                                            <asp:HyperLink ID="hlChangeUser" runat="server" CssClass="btnDefault">Değiştir</asp:HyperLink>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Telefon :</label></div>
                                        <div class="col1-2"><label class="labelInput"><asp:Label ID="lblPhone" runat="server"></asp:Label></label></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Cep Tel :</label></div>
                                        <div class="col1-2"><label class="labelInput"><asp:Label ID="lblMobilePhone" runat="server"></asp:Label></label></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">E Mail :</label></div>
                                        <div class="col1-2"><label class="labelInput"><asp:Label ID="lblEmail" runat="server"></asp:Label></label></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Ülke :</label></div>
                                        <div class="col1-2"><asp:DropDownList ID="ddlCustamerCity" runat="server" Enabled="False"></asp:DropDownList></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">İl :</label></div>
                                        <div class="col1-2"><asp:DropDownList ID="ddlCustamerCountry" runat="server" Enabled="False"></asp:DropDownList></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Adres :</label></div>
                                        <div class="col1-2"><asp:TextBox runat="server" ID="txtAdress" TextMode="MultiLine" MaxLength="400" Height="100px" Enabled="False"></asp:TextBox></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col1-1">
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Servis Drumu :</label></div>
                                        <div class="col1-2"><asp:DropDownList ID="ddlServicesStatus" runat="server"></asp:DropDownList></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Başvuru Tarihi :<asp:CompareValidator ID="cv1" runat="server" ErrorMessage="*" Operator="DataTypeCheck" Type="Date" ControlToValidate="txtSaveDate" Visible="false">*</asp:CompareValidator></label></div>
                                        <div class="col1-2">
                                            <asp:TextBox runat="server" ID="txtSaveDate" Enabled="False"></asp:TextBox>
                                            <cc1:calendarextender id="txtSaveDate_CalendarExtender" format="dd.MM.yyyy" runat="server" targetcontrolid="txtSaveDate" animated="True"></cc1:calendarextender>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Kabul Tarihi :<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" Operator="DataTypeCheck" Type="Date" ControlToValidate="txtAcceptDate" Visible="false">*</asp:CompareValidator></label></div>
                                        <div class="col1-2">
                                            <asp:TextBox ID="txtAcceptDate" runat="server"></asp:TextBox>
                                            <cc1:calendarextender id="txtAcceptDate_Calendarextender1" format="dd.MM.yyyy" runat="server" targetcontrolid="txtAcceptDate" animated="True"></cc1:calendarextender>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Belge Numarası :</label></div>
                                        <div class="col1-2"><asp:TextBox ID="txtDocNo" runat="server" MaxLength="20"></asp:TextBox></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Teslim Tarihi :<asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="*" Operator="DataTypeCheck" Type="Date" ControlToValidate="txtDeliveryDate" Visible="false">*</asp:CompareValidator></label></div>
                                        <div class="col1-2">
                                            <asp:TextBox ID="txtDeliveryDate" runat="server"></asp:TextBox>
                                            <cc1:calendarextender id="txtDeliveryDate_Calendarextender1" format="dd.MM.yyyy" runat="server" targetcontrolid="txtDeliveryDate" animated="True"></cc1:calendarextender>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Şube :</label></div>
                                        <div class="col1-2"><asp:DropDownList ID="ddlCenter" runat="server"></asp:DropDownList></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Departman :</label></div>
                                        <div class="col1-2"><asp:DropDownList ID="ddlDepartment" runat="server"></asp:DropDownList></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Personel :</label></div>
                                        <div class="col1-2"><asp:DropDownList ID="ddlPersonel" runat="server"></asp:DropDownList></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col1-1">
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle"><label>İşlem Türü :</label></label></div>
                                        <div class="col1-2">
                                            <asp:DropDownList ID="ddlServicesType" runat="server">
                                            <asp:ListItem Value="0">--Seçiniz--</asp:ListItem>
                                            <asp:ListItem Value="1">Servis</asp:ListItem>
                                            <asp:ListItem Value="2">Montaj</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Cihaz Adı :</label></div>
                                        <div class="col1-2"><asp:DropDownList runat="server" ID="ddlProductName"></asp:DropDownList></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Marka :</label></div>
                                        <div class="col1-2"><asp:DropDownList runat="server" ID="ddlMark"></asp:DropDownList></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Model :</label></div>
                                        <div class="col1-2"><asp:DropDownList runat="server" ID="ddlModel"></asp:DropDownList></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Seri No :</label></div>
                                        <div class="col1-2"><asp:TextBox ID="txtSerialNo" runat="server" MaxLength="40"></asp:TextBox></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Stok Kodu :</label></div>
                                        <div class="col1-2"><asp:TextBox ID="txtStockCode" runat="server" MaxLength="40"></asp:TextBox></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Garantili :</label></div>
                                        <div class="col1-2"><label class="labelInput"><asp:CheckBox runat="server" ID="cbGuarantyType" Text="Evet/Hayır" /></label></div>
                                    </div><div class="row">
                                        <div class="colThree"><label class="leftTitle">Fatura Tarihi :<asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="*" Operator="DataTypeCheck" Type="Date" ControlToValidate="txtBillDate">*</asp:CompareValidator></label></div>
                                        <div class="col1-2">
                                            <asp:TextBox ID="txtBillDate" runat="server"></asp:TextBox>
                                            <cc1:calendarextender id="txtBillDate_Calendarextender1" format="dd.MM.yyyy" runat="server" targetcontrolid="txtBillDate" animated="True"></cc1:calendarextender>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Fatura No :</label></div>
                                        <div class="col1-2"><asp:TextBox runat="server" ID="txtBillNo" MaxLength="40"></asp:TextBox></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col1-1">
                            
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Müşteri Şikayeti :</label></div>
                                        <div class="col1-2">
                                            <asp:DropDownList ID="ddlPlaint" runat="server">
                                            <asp:ListItem Value="0">--Seçiniz--</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Servis Notu</label></div>
                                        <div class="col1-2"><asp:TextBox runat="server" ID="txtPlaint" TextMode="MultiLine" MaxLength="400" Height="100px"></asp:TextBox></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Arızası :</label></div>
                                        <div class="col1-2"><asp:DropDownList ID="ddlFault" runat="server"></asp:DropDownList></div>
                                    </div>
                                    <div class="row">
                                        <div class="colThree"><label class="leftTitle">Arıza Sonuc :</label></div>
                                        <div class="col1-2"><asp:DropDownList ID="ddlResault" runat="server"></asp:DropDownList></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <!--COLS END-->
                <!--DATATABLE-->
                <div class="tab" id="tab_2">
                	<div class="dataForm">
                        <div class="row clearfix">
                            <asp:Panel ID="pnlOpt" runat="server">
                            <div class="col1-2">
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colTwo">
                                        <label><asp:Label ID="txtOpt1" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt1" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="colTwo">
                                        <label><asp:Label ID="txtOpt2" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt2" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                        <label><asp:Label ID="txtOpt3" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt3" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="colTwo">
                                        <label><asp:Label ID="txtOpt4" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt4" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                        <label><asp:Label ID="txtOpt5" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt5" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="colTwo">
                                        <label><asp:Label ID="txtOpt6" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt6" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                        <label><asp:Label ID="txtOpt7" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt7" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="colTwo">
                                        <label><asp:Label ID="txtOpt8" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt8" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                        <label><asp:Label ID="txtOpt9" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt9" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="colTwo">
                                        <label><asp:Label ID="txtOpt10" runat="server"></asp:Label></label>
                                        <asp:DropDownList ID="servicesOpt10" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col1-2">
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>&nbsp;</label>
                                            <label class="labelInput"><asp:CheckBox ID="cbOpt1" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                        </div>
                                        <div class="colTwo">
                                            <label>&nbsp;</label>
                                            <label class="labelInput"><asp:CheckBox ID="cbOpt2" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>&nbsp;</label>
                                            <label class="labelInput"><asp:CheckBox ID="cbOpt3" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                        </div>
                                        <div class="colTwo">
                                            <label>&nbsp;</label>
                                            <label class="labelInput"><asp:CheckBox ID="cbOpt4" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>&nbsp;</label>
                                            <label class="labelInput"><asp:CheckBox ID="cbOpt5" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                        </div>
                                        <div class="colTwo">
                                            <label>&nbsp;</label>
                                            <label class="labelInput"><asp:CheckBox ID="cbOpt6" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>&nbsp;</label>
                                            <label class="labelInput"><asp:CheckBox ID="cbOpt7" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                        </div>
                                        <div class="colTwo">
                                            <label>&nbsp;</label>
                                            <label class="labelInput"><asp:CheckBox ID="cbOpt8" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>&nbsp;</label>
                                            <label class="labelInput"><asp:CheckBox ID="cbOpt9" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                        </div>
                                        <div class="colTwo">
                                            <label>&nbsp;</label>
                                            <label class="labelInput"><asp:CheckBox ID="cbOpt10" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </asp:Panel>
                        </div>
                    </div>
                </div>
                <div class="row buttonGroup">
                    <asp:HyperLink ID="lnkAddNew" runat="Server" CssClass="btnDefault"><i class="fa fa-plus"></i> Yeni Ürün Ekle </asp:HyperLink>
                    <asp:Button ID="btnSaveClose" runat="server" CssClass="btnDefault" Text="Kaydet/Kapat" />
                    <asp:Button ID="btnclose" runat="server" CssClass="btnDefault" Text="Çık" />
                    <asp:Button ID="btnPdf" runat="server" CssClass="btnDefault" Text="Export" />
                </div>
                <div class="dataTable" style="height:300px; overflow: scroll;">
                    <asp:GridView ID="GWServicesPartLİst" runat="server" CssClass="datalist" AutoGenerateColumns="False" DataKeyNames="id,JobID,PersonID,UnitID,ProductID" Width="100%" ShowFooter="True" showheaderwhenempty="true">
                    <HeaderStyle CssClass="title" />
                        <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate >
                                <asp:LinkButton ID="LinkButt1n1" runat="server" CssClass="btnIcon" CausesValidation="True" CommandName="Update"><i class="fa fa-save"></i></asp:LinkButton> 
                            </EditItemTemplate>
                            
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkBu1tton1" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btnIcon"><i class="fa fa-pencil"></i></asp:LinkButton>
                                  </ItemTemplate>
                            <ItemStyle HorizontalAlign="center" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate> 
                                <asp:LinkButton ID="LinkButton23" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" CssClass="btnIcon"><i class="fa fa-close"></i></asp:LinkButton>
                            </EditItemTemplate>
                            
                            <ItemTemplate> 
                                <asp:LinkButton ID="LinkButton26" runat="server" CausesValidation="False" CommandName="Delete" CssClass="btnIcon" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');"><i class="fa fa-trash-o"></i></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="İş Türü" SortExpression="JobName">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlJobTypes" runat="server"></asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblJobName" runat="server" Text='<%# eval("JobName") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Barkod" SortExpression="Barcode">
                            <ItemTemplate>
                                <asp:Label ID="lblBarcode" runat="server" Text='<%# Bind("Barcode") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Stok Kodu" SortExpression="StockCode">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtProductCode" runat="server" Text='<%# Bind("ProductCode")%>' Enabled="False"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblProductCode" runat="server" Text='<%# Bind("ProductCode")%>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Stok Adı" SortExpression="StockName">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtProductName" runat="server" Text='<%# Bind("ProductName")%>' Enabled="False"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblProductName" runat="server" Text='<%# Bind("ProductName")%>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Açıklama" SortExpression="PersonDesc">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPersonDesc" runat="server" Text='<%# Bind("PersonDesc") %>' TextMode="MultiLine" Height="100"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPersonDesc" runat="server" Text='<%# Bind("PersonDesc") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
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
                        <asp:TemplateField HeaderText="Miktar" SortExpression="PartQty">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPartQty" runat="server" Text='<%# Container.DataItem("PartQty")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPartQty" runat="server" Text='<%# Bind("PartQty") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fiyat" SortExpression="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPrice" runat="server" Text='<%# Container.DataItem("Price")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price")%>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Hiz. Fiyatı" SortExpression="ServicePrice">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtServicePrice" runat="server" Text='<%# Bind("ServicePrice")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblServicePrice" runat="server" Text='<%# Bind("ServicePrice")%>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="İsk1" SortExpression="Discount1">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDiscount1" runat="server" Text='<%# Bind("Discount1") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDiscount1" runat="server" Text='<%# Bind("Discount1") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="İsk2" SortExpression="Discount2">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDiscount2" runat="server" Text='<%# Bind("Discount2") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDiscount2" runat="server" Text='<%# Bind("Discount2") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="İsk3" SortExpression="Discount3">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDiscount3" runat="server" Text='<%# Bind("Discount3") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDiscount3" runat="server" Text='<%# Bind("Discount3") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="İsk4" SortExpression="Discount4">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDiscount4" runat="server" Text='<%# Bind("Discount4") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDiscount4" runat="server" Text='<%# Bind("Discount4") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="İsk5" SortExpression="Discount5">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDiscount5" runat="server" Text='<%# Bind("Discount5") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDiscount5" runat="server" Text='<%# Bind("Discount5") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Toplam Tutar" SortExpression="TotalPrice">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtTotalPrice" runat="server" Text='<%# Bind("TotalPrice") %>' Enabled="False"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblTotalPrice" runat="server" Text='<%# Bind("TotalPrice") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="İskTopTut" SortExpression="DiscTotPrice">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDiscTotPrice" runat="server" Text='<%# Bind("DiscTotPrice")%>' Enabled="False"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDiscTotPrice" runat="server" Text='<%# Bind("DiscTotPrice") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NetTopTut" SortExpression="NetTotPrice">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtNetTotPrice" runat="server" Text='<%# Bind("NetTotPrice") %>' Enabled="False"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblNetTotPrice" runat="server" Text='<%# Bind("NetTotPrice") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="KDV" SortExpression="KdvRate">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtKdvRate" runat="server" Text='<%# Bind("KdvRate")%>' Enabled="False"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblKdvRate" runat="server" Text='<%# Bind("KdvRate")%>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="KdvTopTut" SortExpression="KdvTotPrice" Visible="false">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtKdvNetTotPrice" runat="server" Text='<%# Bind("KdvNetTotPrice")%>' Enabled="False"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblKdvNetTotPrice" runat="server" Text='<%# Bind("KdvNetTotPrice")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--///////////////////////////////////////////////////////////////////////--%>
                        <asp:TemplateField HeaderText="Dip İsk 1" SortExpression="DeepDisc1" Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lblDeepDisc1" runat="server" Text='<%# Bind("DeepDisc1")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Dip İsk 2" SortExpression="DeepDisc2" Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lblDeepDisc2" runat="server" Text='<%# Bind("DeepDisc2")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="TopTut" SortExpression="KdvTotPrice" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblKdvNetTotPrice2" runat="server" Text='<%# Bind("GenTotal")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Dip İsk Gen Top 1" SortExpression="GenTotal" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblGenTotal" runat="server" Text='<%# Bind("DeepGenDiscTotal1")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Dip İsk Top 1" SortExpression="GenTotal" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblGenTotal2" runat="server" Text='<%# Bind("DeepDiscTotal1")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Dip İsk1 Kdv" SortExpression="GenTotal" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblDeepDiscKdv1" runat="server" Text='<%# Bind("DeepDiscKdv1")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Dip İsk Gen Top 2" SortExpression="GenTotal" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblGenTotal3" runat="server" Text='<%# Bind("DeepGenDiscTotal2")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Dip İsk Top 2" SortExpression="GenTotal" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblGenTotal4" runat="server" Text='<%# Bind("DeepDiscTotal2")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Dip İsk2 Kdv" SortExpression="GenTotal" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblDeepDiscKdv2" runat="server" Text='<%# Bind("DeepDiscKdv2")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--/////////////////////////////////////////////////////////////////--%>
                        <asp:TemplateField HeaderText="Personel" SortExpression="PersonName">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlPersonel" runat="server"></asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPersonel" runat="server" Text='<%# Eval("PersonName")%>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
                        </asp:TemplateField>
                        </Columns>
                	</asp:GridView>
                </div>
                <div class="dataCount">
                        <ul>
                            <li>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>	
                            <li>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                            <li>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                            <li><asp:Label ID="msg" runat="server" Visible="False"></asp:Label></li>
                            <li><asp:Label ID="lblSort" runat="server" Visible="False" CssClass="Admin_Normal_Label" Text=""></asp:Label></li>
                            <li><asp:Label ID="Label1" runat="server" Visible="False"></asp:Label></li>
                        </ul>
                    </div>
                <!--DATATABLE END-->
                <div class="dataForm">
                	<div class="row">
                        <div class="colThree">
                       		<div class="row" style="margin-top:20px;">
                            	<div class="colThree" style="margin:0px;"><label class="leftTitle textRed" style="margin:0px;">Parça Toplamı :</label></div>
                                <div class="col1-2" style="margin:0px;"><label style="margin-top:9px;"><asp:Label ID="lblparttotal" runat="server"></asp:Label></label></div>
                            </div>
                            <div class="row">
                            	<div class="colThree"><label class="leftTitle textRed">Hizmet Toplamı :</label></div>
                                <div class="col1-2"><label style="margin-top:9px;"><asp:Label ID="lblServicesPrice" runat="server"></asp:Label></label></div>
                            </div>
                        </div>
                        <div class="colThree">
                        	<div class="row">
                            	<div class="colThree"><label class="leftTitle">İskonto 1% :</label></div>
                                <div class="col1-2"><asp:TextBox runat="server" ID="txtDeepDisc1" AutoPostBack="True" Text="0"></asp:TextBox></div>
                            </div>
                            <div class="row">
                            	<div class="colThree"><label class="leftTitle">İskonto 2% :</label></div>
                                <div class="col1-2"><asp:TextBox runat="server" ID="txtDeepDisc2" AutoPostBack="True" Text="0"></asp:TextBox></div>
                            </div>
                            <div class="row">
                            	<div class="colThree"><label class="leftTitle">İskonto 1 Tutar :</label></div>
                                <div class="col1-2"><asp:TextBox runat="server" ID="txtDeepDiscPrice1" AutoPostBack="True" Style="text-align: right">0</asp:TextBox></div>
                            </div>
                            <div class="row">
                            	<div class="colThree"><label class="leftTitle">İskonto 2 Tutar :</label></div>
                                <div class="col1-2"><asp:TextBox runat="server" ID="txtDeepDiscPrice2" AutoPostBack="True">0</asp:TextBox></div>
                            </div>
                        </div>
                        <div class="colThree">
                        	<div class="row">
                            	<div class="colThree"><label class="leftTitle">Matrah :</label></div>
                                <div class="col1-2"><label class="labelInput"><asp:Label ID="lblMatrah" runat="server"></asp:Label></label></div>
                            </div>
                            <div class="row">
                            	<div class="colThree"><label class="leftTitle">İskonto :</label></div>
                                <div class="col1-2"><label class="labelInput"><asp:Label ID="lblDiscTotale" runat="server"></asp:Label></label></div>
                            </div>
                            <div class="row">
                            	<div class="colThree"><label class="leftTitle">Ara Toplam :</label></div>
                                <div class="col1-2"><label class="labelInput"><asp:Label ID="lblSpaceTotal" runat="server"></asp:Label></label></div>
                            </div>
                            <div class="row">
                            	<div class="colThree"><label class="leftTitle">KDV :</label></div>
                                <div class="col1-2"><label class="labelInput"><asp:Label ID="lblKdv" runat="server"></asp:Label></label></div>
                            </div>
                            <div class="row">
                            	<div class="colThree"><label class="leftTitle">Genel Toplam :</label></div>
                                <div class="colTwo"><label class="labelInput"><asp:Label ID="lblTotal" runat="server"></asp:Label></label></div>
                            </div>
                        </div>
                    </div>
                </div>
        	</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
