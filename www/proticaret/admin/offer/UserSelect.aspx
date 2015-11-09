<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UserSelect.aspx.vb" Inherits="userselects" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
    <title>TEKLİF FORMU Ekle</title>
</head>
<body>

    <form id="form1" runat="server">
        <div id="module" class="pagePopup">
            <div class="boxToggle" runat="server">
                <div class="toggleTitle">
                    <div class="titleText">Firma Listesi</div>
                </div>

                <div class="toggleContent">
                    <label id="lblError" runat="server"></label>
                    <asp:Label runat="server" ID="lblMessage"></asp:Label>
                    <div class="dataForm">
                        <div class="row">
                            <div class="colOne">
                            	<div class="row">
                                	<div class="colTwo colBtn">
                                    	<label>Tüm Alanlarda Arama:</label>
                                        <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                                        <a href="#" class="btnDefault"><i class="fa fa-search"></i>  Ara</a>
                                    </div>
                                </div>
							</div>
                         </div>
                    </div>
                    <div class="dataTable">
                        <asp:GridView ID="gvUsers" runat="server" AllowPaging="True" EnableModelValidation="True" Width="100%" AutoGenerateColumns="False" DataKeyNames="UserID" EnableViewState="False">
                            <Columns>
                                <asp:BoundField DataField="UserID" HeaderText="ID" />
                                <asp:BoundField DataField="FullName" HeaderText="Ad" />
                                <asp:BoundField DataField="CompanyName" HeaderText="Şirket" />
                                <asp:BoundField DataField="CompanyVdNo" HeaderText="Vergi No" />
                                <asp:BoundField DataField="Email" HeaderText="Mail" />
                                <asp:BoundField DataField="MobilePhone" HeaderText="Telefon" />
                                <asp:ButtonField Text="Seç" CommandName="Update" Visible="False">
                                    <ItemStyle CssClass="button" />
                                </asp:ButtonField>
                                <asp:ButtonField Text="Seç" CommandName="Update" Visible="False" ControlStyle-CssClass="btnDefault">
                                    <ItemStyle CssClass="btnDefault" />
                                </asp:ButtonField>

                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>

            <asp:Label Text="" runat="server" ID="lbl" />
        </div>
    </form>
</body>
</html>
