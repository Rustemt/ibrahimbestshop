<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="readsendmessages.aspx.vb" Inherits=".readsendmessages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Mesaj Oku</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <form id="form1" runat="server">
    <div class="pagePopup">
        <div class="boxToggle">
            <div class="toggleTitle">
                <div class="titleText">Mesajını Oku</div>
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
                        	<asp:Label runat="server" ID="lblx" Text="Mesaj:"></asp:Label>
                   			<asp:TextBox runat="server" ID="txtmessage" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                        </div>
                    </div>
                    <div class="buttonGroup">
                        <asp:Button runat="server" ID="btncancel" Text="Kapat" CssClass="btnDefault" CausesValidation="False" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
