<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="newsupport.ascx.vb" Inherits=".newsupport3" %>
<div id="statuslist" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
        </div>
    <% end if %>        
    <div id="alert" runat="server" visible="false" class="alert title2"><asp:Label runat="server" ID="lblMessage"></asp:Label></div>
    <asp:Panel runat="server" ID="pnlSupport" Visible="false">
        <table border="0" cellpadding="4" cellspacing="0">
            <tr>
                <td>
                    Kategori
                </td>
                <td>
                    <asp:DropDownList runat="server" ID="ddlCategory">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Başlık
                </td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Detay
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtBody" Height="80px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBody" ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Dosya Yükle
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Button ID="btnSave" runat="server" Text="Talebi Gönder" CssClass="button"></asp:Button>
                </td>
            </tr>
        </table>
    </asp:Panel>
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=900,height=800,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
