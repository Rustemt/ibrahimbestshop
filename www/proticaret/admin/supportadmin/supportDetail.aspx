<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="supportDetail.aspx.vb" Inherits=".supportDetail3" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Talep Detay</title>
</head>
<body>
<form id="Form1" runat="server">
<div id="supportDetail" class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Talep Detay</div>
		</div>
		<div class="toggleContent">
        	<div class="alert alert-info" id="alert" runat="server" visible="false" ><asp:Label runat="server" ID="lblMessage"></asp:Label></div>
            <div class="dataForm">
                <div class="row">
                    <div class="colTwo">
                    	<div class="dataFilter boxToggle">
                            <div class="toggleTitle toggleMini">
                                <div class="titleText"><asp:Label runat="server" ID="lblTicketCount"></asp:Label></div>
                            </div>
                            <div class="toggleContent">
                                <div class="colGroup">
                                    <div class="col">
                                        <label>Ücreti Ödendi</label>
                                        <asp:DropDownList runat="server" ID="ddlIsPayed">
                                        <asp:ListItem Text="-Seçiniz-" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="Evet" Value="True"></asp:ListItem>
                                        <asp:ListItem Text="Hayır" Value="False"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>Kategori <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Seçiniz" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator></label>
                                        <asp:DropDownList runat="server" ID="ddlCategory"> </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>Durumu <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Seçiniz" ControlToValidate="ddlStatus" InitialValue="0"></asp:RequiredFieldValidator></label>
                                        <asp:DropDownList runat="server" ID="ddlStatus"> </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>Sorumlu Personel <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Seçiniz" ControlToValidate="ddlUser" InitialValue="0"></asp:RequiredFieldValidator></label>
                                        <asp:DropDownList runat="server" ID="ddlUser"> </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>&nbsp;</label>
                                        <asp:Button ID="btnSave" runat="server" Text="Kaydet" CssClass="btnDefault"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="colTwo">
                    	<div class="dataFilter boxToggle">
                            <div class="toggleTitle toggleMini">
                                <div class="titleText">Düşürülen Ticket Sayısı : <asp:Label runat="server" ID="lblDusurulenTicketCount"></asp:Label></div>
                            </div>
                            <div class="toggleContent">
                                <div class="colGroup">
                                    <div class="col">
                                        <label>Ticket Sayısından Düşür <asp:RequiredFieldValidator ID="RequiredFieldValidator5s" ValidationGroup="dusur" runat="server" ErrorMessage="Seçiniz" ControlToValidate="ddlTicketDusur" InitialValue="0"></asp:RequiredFieldValidator></label>
                                        <asp:DropDownList runat="server" ID="ddlTicketDusur">
                                        <asp:ListItem Enabled="true" Text="-Seçiniz-" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>&nbsp;</label>
                                        <asp:Button runat="server" ID="btnTicketDusur" ValidationGroup="dusur" CssClass="btnDefault" Text="Ticket Düşür" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Ticket Bilgileri</div>
                </div>
                <div class="toggleContent">
                    <div class="dataForm">
                        <asp:Label Text="" Visible="false" ID="lblUserId" runat="server" />
                        <div class="row">
                            <div class="colTwo">
                                <label>Talep Id :</label>
                                <label class="labelInput"><asp:Label runat="server" ID="lblSupportId"></asp:Label></label>
                            </div>
                            <div class="colTwo">
                                <label>Konu :</label>
                                <label class="labelInput"><asp:Label runat="server" ID="lblSubject"></asp:Label></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Konuyu Açan :</label>
                                <label class="labelInput"><asp:Label runat="server" ID="lblUserName"></asp:Label></label>
                            </div>
                            <div class="colTwo">
                                <label>E-Posta :</label>
                                <label class="labelInput"><asp:Label runat="server" ID="lblUserMail"></asp:Label></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label>Dosyalar:</label>
                                <asp:Repeater runat="server" ID="rptFile">
                                <headertemplate><ul></headertemplate>
                                <ItemTemplate>
                                    <li><asp:LinkButton runat="server" CausesValidation="false" ID="lnk" CommandName="download" CssClass="textRed" CommandArgument="<%# Container.DataItem %>" Text=" <%# Container.DataItem %>"></asp:LinkButton></li>
                                </ItemTemplate>
                                <footertemplate></ul></footertemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label>Cevap Yaz <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Boş Bırakılamaz" ControlToValidate="txtCevap" ValidationGroup="1"></asp:RequiredFieldValidator></label>
                                <asp:TextBox runat="server" TextMode="MultiLine" Rows="10" ID="txtCevap" ValidationGroup="1"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Dosya Yükle</label>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                            <div class="colTwo">
                                <label>&nbsp;</label>
                                <asp:Button ID="btnCevapYaz" runat="server" Text="Cevap Yaz" CssClass="btnDefault" ValidationGroup="1"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <p></p>
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Mesajlar</div>
                </div>
                <div class="toggleContent">
                    <asp:Repeater runat="server" ID="rptComment">
                        <ItemTemplate>
                            <div class='<%# iif(Eval("IsAnswer"),"alert alert-info","alert") %>'>
                                <p><b><asp:Label runat="server" ID="lblMail"></asp:Label></b> &nbsp;<small><asp:Label runat="server" ID="lblDate" Text='<%# Eval("Date") %>'></asp:Label></small></p>
                                <asp:Literal runat="server" ID="lblBody" Text='<%# Eval("Message") %>'></asp:Literal>
                                <asp:Label runat="server" ID="lblAssignedUserDetail" ToolTip='<%# Eval("assignedUserDetail") %>' Text='<%# Eval("IsAnswer") %>' Visible="false"></asp:Label>
                                <asp:Label runat="server" ID="lblUserDetail" ToolTip='<%# Eval("UserDetail") %>' Text='<%# Eval("IsAnswer") %>' Visible="false"></asp:Label>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
	</div>
</div>
</form>

</body>
</html>
