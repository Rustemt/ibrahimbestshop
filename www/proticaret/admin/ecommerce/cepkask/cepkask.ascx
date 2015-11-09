<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cepkask.ascx.vb" Inherits="ASPNetPortal.cepkask" %>

<div id="cepkask" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
            <div id="module_title"> 
                <span> 
                    <span id="module_title_icon"></span> 
                    <%=ModuleTitle%>
            <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
            <% End If%>
                </span>
            </div>
        <% End If%>
        
        <div id="configs">
            <table cellpadding="2">
                <tbody>
                    <tr>
                        <td align="right">
                            CepKask Modülü: 
                        </td>
                        <td>
                            <asp:CheckBox ID="chkKaskIsActive" runat="server" ToolTip="CepKask Aktif / Pasif" Text="Aktif / Pasif" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Kontrol Tarih Değeri: 
                        </td>
                        <td>
                            <asp:TextBox ID="txtControlDayValue" runat="server" Text="30" ToolTip="Seçilen tarihin kaç gün kadar kontrol edileceğini belirleyin"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnSaveKask" runat="server" Text="Ayarları Kaydet" CssClass="savebutton" />
                        </td>
                    </tr>
                </tbody>
            </table>
            <asp:Label ID="lblmsg" runat="server" Visible="false"></asp:Label>    
        </div>
    </div>
</div>