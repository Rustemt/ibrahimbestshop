<%@ Control Language="vb" Inherits="ASPNetPortal.newsletter" AutoEventWireup="false" Codebehind="newsletter.ascx.vb" EnableViewState="False" %>
<div id="bulten">
  <div id="bulten">
    <div>
    <div id="info" runat="server" class="information"><asp:Label ID="lblInfo" runat="Server"></asp:Label></div>
      <label class="clearFix">
          <asp:textbox id="txtEbultenMail" runat="server"></asp:textbox>
          <asp:Button ID="btnEbultenEkle" runat="server" OnClick="btnEbultenEkle_Click" Text="<%$ Resources:lang, NewsletterAddMeToList%>" ValidationGroup="bulten" CssClass="bulten-btn" />
      </label>      
    </div>
  </div>
</div>
<div class="clear"></div>