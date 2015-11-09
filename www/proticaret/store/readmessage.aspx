<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="readmessage.aspx.vb" Inherits=".readmessage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mesaj Oku</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Mesaj Oku</div>
                </div>
                <div class="toggleContent">
                    <div class="dataForm">
                    	<div class="row">
                        	<div class="colOne">
                            	<label>Mesajın Konusu:</label>
            					<asp:TextBox ID="txtsubject" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                        	<div class="colOne">
                            	<label><asp:Label runat="server" ID="lblx" Text="Mesaj:"></asp:Label></label>
                                <asp:TextBox runat="server" ID="txtmessage" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="buttonGroup">
                            <asp:Button runat="server" ID="btncancel" Text="Kapat" CssClass="btnDefault" CausesValidation="False" />
                            <asp:Button runat="server" ID="btnreply" Text="Cevap Yaz" CssClass="btnDefault" />
                            <asp:Panel runat="server" ID="pnlreply" Visible="false">
                                <label>Mesajın Konusu</label>
                                <asp:TextBox runat="server" ID="txtmessagesubject"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvf" runat="server" ControlToValidate="txtmessagesubject" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <label>Mesaj:</label>
                                <asp:TextBox runat="server" ID="txtreply" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvf2" runat="server" ControlToValidate="txtreply" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:Label runat="server" ID="lblerror" ForeColor="Red"></asp:Label>
                                <asp:Button runat="server" ID="btnsend" Text="Gönder" CssClass="btnDefault" />
                                <asp:Button runat="server" ID="btncancelreply" Text="İptal" CssClass="btnDefault" />
                                <asp:Button runat="server" ID="btnclose" Text="Kapat" CssClass="btnDefault" />
                            </asp:Panel>	
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
