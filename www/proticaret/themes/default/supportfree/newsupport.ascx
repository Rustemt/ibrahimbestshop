<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="newsupport.ascx.vb" Inherits=".newsupport1" %>
<div id="statuslist" class="module">
    <div id="module_content">
        <div id="module_title">
            <span><span id="module_title_icon"></span>
                <%=ModuleTitle%>
            </span>
        </div>
        <div>
            <div id="alert" runat="server" visible="false" class="alert">
                <p>
                    Destek talebi olusturmadan once <a href='/icerik/yardim.aspx' target='_blank'>Sıkca Sorulan Sorulari</a> ve <a href='/contact.aspx' target='_blank'>Bilgi Bankasini</a> okumanizi tavsiye ederiz
                    <br />
                    <asp:Label runat="server" ID="lblMessage"></asp:Label>
                </p>
            </div>
            <div class="module_box">
                <asp:Panel runat="server" ID="pnlSupport" Visible="false">
                    <table border="0" cellpadding="4" cellspacing="0">
                        <tr>
                            <td>Kategori
                            </td>
                            <td>
                                <asp:DropDownList runat="server" ID="ddlCategory">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Sipariş No
                            </td>
                            <td>
                                <asp:TextBox ID="txtorderno" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Başlık
                            </td>
                            <td>
                                <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Detay
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtBody" Height="80px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBody" ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Dosya Yükle
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
