<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="newothermail.ascx.vb" Inherits=".newothermail1" %>
<div id="billings" class="module">
        <div class="moduleTitle">
            Yeni Bilgi Talebi          
        </div>
    <div class="moduleContent moduleContentCol1">
            <div id="alert" runat="server" visible="false" class="title2">
	            <asp:Label runat="server" ID="lblMessage"></asp:Label>
            </div>
            <div class="moduleContentCol2">
                <asp:Panel runat="server" ID="pnlSupport" Visible="false">
                    <label>Özel Kod1:</label>
                        <asp:TextBox runat="server" ID="txt1" />
                    <label>Özel Kod2:</label>
                        <asp:TextBox runat="server" ID="txt2" />
                    <label>Özel Kod3:</label>
                        <asp:TextBox runat="server" ID="txt3" />
                    <label>Mail Adresi</label>
                        <asp:DropDownList runat="server" ID="ddlmail"></asp:DropDownList>                        
                    <label>Kategori</label>
                        <asp:DropDownList runat="server" ID="ddlCategory"></asp:DropDownList>
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
