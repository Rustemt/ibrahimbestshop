<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="offernote.ascx.vb" Inherits="offernote" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>



<div id="module" class="module">
<div id="module_content">
<div id="module_title"> <span> <span id="module_title_icon"></span>Teklif Tanımları Listesi
            </span>
        </div>
        <asp:Label runat="server" ID="lblError"></asp:Label>
<br />
    <span>Burdaki Bilgileri Google Chrome dışındaki bir browserdan tanımlamanız gerekmektedir.</span><br />
    <asp:TextBox ID="txtOfferDeepNoteTitle" runat="server" Width="600" MaxLength="200"></asp:TextBox>
        <br /><br />
                      <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Width="550px" Height="300px"
                        ToolbarSet="BasicPlus" BasePath="/FCKeditor/">
                    </FCKeditorV2:FCKeditor>
        
        <br />
    <asp:Button ID="btnSaveDeepNote" runat="server" Text="Kaydet" CssClass="button" CausesValidation="True"/>
</div>
</div> 