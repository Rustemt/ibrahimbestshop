<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UserSelect.aspx.vb" Inherits="userselectsperson" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Servis tip Ekle</title>
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>

    <form id="form1" runat="server">
    	<div class="pagePopup" runat="server">
            <div class="boxToggle">
                <div class="toggleTitle">
                	<div class="titleText">ÜYE LİSTESİ</div>
                </div>
                <div class="toggleContent dataForm" runat="server">
                    <label id="lblError" runat="server"></label>
                    <asp:Label runat="server" ID="lblMessage"></asp:Label>
                    <div class="row">
                        <div class="colTwo colBtn">
                        	<label>Tüm Alanlarda Arama : </label>
                            <asp:TextBox ID="txtFullName" runat="server" ></asp:TextBox>
                            <a href="#" class="btnDefault"><i class="fa fa-search"></i>  Ara</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colOne">
                            <div class="dataTable">
                                <asp:GridView ID="gvUsers" runat="server"  GridLines="None" PageSize="20" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
                                    <Columns>
                                        <asp:BoundField DataField="UserID" HeaderText="ID" />
                                        <asp:BoundField DataField="FullName" HeaderText="Ad" />
                                        <asp:BoundField DataField="CompanyName" HeaderText="Şirket" />
                                        <asp:BoundField DataField="CompanyVdNo" HeaderText="Vergi No" />
                                        <asp:BoundField DataField="Email" HeaderText="Mail" />
                                        <asp:BoundField DataField="MobilePhone" HeaderText="Telefon" />
                                        <asp:ButtonField Text="Seç" CommandName="Select" Visible="False">
                                        <ItemStyle CssClass="" />
                                        </asp:ButtonField>
                                        <asp:ButtonField Text="Değiştir" CommandName="Select" Visible="False">
                                        <ItemStyle CssClass="button" />
                                        </asp:ButtonField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
          </div>
         </form>
            <asp:Label Text="" runat="server" ID="lbl" />
            <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
