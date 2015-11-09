<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="newsupport.ascx.vb" Inherits=".newsupport1" %>
<div id="statuslist" class="module">
	<div class="moduleTitle">
    	<%=ModuleTitle%>
	</div>
    <div class="moduleContent moduleContentCol1">
        <div id="alert" runat="server" visible="false" class="alert">
                <div class="title2">Destek talebi olusturmadan once <a href='/icerik/yardim.aspx' target='_blank'>Sıkca Sorulan Sorulari</a> ve <a href='/contact.aspx' target='_blank'>Bilgi Bankasini</a> okumanizi tavsiye ederiz</div>
                <asp:Label runat="server" ID="lblMessage"></asp:Label>
        </div>
        <div class="moduleContentCol2 inputFull">
            <asp:Panel runat="server" ID="pnlSupport" Visible="false">
            <label>Kategori</label>
            
            <asp:DropDownList runat="server" ID="ddlCategory">
            </asp:DropDownList>
            <label>Sipariş No</label>
            
            <asp:TextBox ID="txtorderno" runat="server"></asp:TextBox>
            <label>Başlık</label>
            
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator>
            <label>Detay</label>
            
            <asp:TextBox runat="server" ID="txtBody" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBody" ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator>
            <label>Dosya Yükle</label>
            
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="btnSave" runat="server" Text="Talebi Gönder" CssClass="button"></asp:Button>
            
            </asp:Panel>
		</div>
    </div>
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=900,height=800,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
