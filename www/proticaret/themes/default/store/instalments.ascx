<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.instalments" EnableViewState="False" Codebehind="instalments.ascx.vb" %>
<div id="installments" class="module">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
<div>
<label><asp:Label ID="lblProductName" runat="server"></asp:Label></label>
<p>
<label>
<%=GetGlobalResourceObject("lang", "IncludeTax")%> : 
<asp:Label ID="lblMainPrice" runat="server"></asp:Label> TL
</label>
</p>
<p>
<label>
<%=GetGlobalResourceObject("lang", "PriceTrasfer")%> : 
<asp:Label ID="lblTransferFiyat" runat="server"></asp:Label> TL
 </label>
</p>
<p runat="server" id="KR1">
<label>
<%=GetGlobalResourceObject("lang", "TotalWithCreditCart")%> : 
<asp:Label ID="lblKrediKartiFiyat" runat="server"></asp:Label> TL
</label>
</p>
<asp:DataList ID="BankList" runat="server" RepeatDirection="Horizontal" CellPadding="5" Width="100%">
<ItemStyle VerticalAlign="Top" />
<ItemTemplate>
<asp:Label ID="LblBankId" runat="server" Visible="False" Text='<%# container.dataitem("BankId") %>'></asp:Label>
<p>
<asp:Image runat="server" ID="imgLogo" AlternateText='<%# ChkNullString( container.dataitem("BankDesc"),container.dataitem("BankName")) %>' ImageUrl='<%# container.dataitem("logo") %>' />
</p>
<p>
<asp:Label ID="lblName" runat="server" Text='<%# ChkNullString( container.dataitem("BankDesc"),container.dataitem("BankName")) %>'></asp:Label>
</p>
<asp:DataGrid ID="TaksitList" CellPadding="4" runat="server" AutoGenerateColumns="False" Width="100%">
<ItemStyle CssClass="row1" />
<AlternatingItemStyle  CssClass="row2"/>
<Columns>
<asp:TemplateColumn HeaderText="<%$ Resources:lang, Installment%>">
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
<itemstyle HorizontalAlign="Center"></itemstyle>
<ItemTemplate>
<label><asp:Label ID="lblTaksitl" runat="server" Text='<%# iif(ChkNullString(container.dataitem("Description"))="",container.dataitem("Taksit"),container.dataitem("Description")) %>' Font-Bold='<%# IIf (container.dataitem("Rate") = 0,"TRUE","FALSE")  %>'></asp:Label></label>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="<%$ Resources:lang, Cost%>">
<HeaderStyle HorizontalAlign="Right"></HeaderStyle>
<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
<ItemTemplate>
<label><asp:Label runat="server" Text='<%# formatCurTL(CalcKdvDahil(Price, DataBinder.Eval(Container, "DataItem.Rate"))/container.dataitem("Taksit"))   %>' Font-Bold='<%# IIf (container.dataitem("Rate") = 0,"TRUE","FALSE")  %>'></asp:Label></label>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="<%$ Resources:lang, Total%>">
<HeaderStyle HorizontalAlign="Right"></HeaderStyle>
<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
<ItemTemplate>
<label><asp:Label runat="server" Text='<%# formatCurTL(CalcKdvDahil(Price, DataBinder.Eval(Container, "DataItem.Rate")))   %>' ID="Label2" NAME="Label2" Font-Bold='<%# IIf (container.dataitem("Rate") = 0,"TRUE","FALSE")  %>'></asp:Label></label>
</ItemTemplate>
</asp:TemplateColumn>
</Columns>
</asp:DataGrid>
</ItemTemplate>
</asp:DataList>
</div>
</div>
</div>
<script type="text/javascript">
jQuery(document).ready(function (){
 jQuery(window).bind("load", function () {
 var frameWidth = jQuery(document).width();
 var frameHeight = jQuery(document).height() + 20;
 parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
 });
});
</script>
