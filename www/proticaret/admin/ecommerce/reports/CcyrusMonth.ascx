<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="CcyrusMonth.ascx.vb" Inherits="CcyrusMonth" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageReportsMonth">
	<div class="dataFilter boxToggle">
		<div class="toggleTitle toggleMini">
			<div class="titleTab">
				<ul class="tabMenu">
					<li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li>
				</ul>
			</div>
			<div class="titleToggle"></div>
		</div>
		<div class="toggleContent">
			<div class="tabContent">
				<div class="tab">
					<div class="colGroup">
						<div class="col">
							<label>Yıl</label>
							<asp:DropDownList runat="server" ID="ddlYear"></asp:DropDownList>
							<asp:RequiredFieldValidator runat="server" ID="rqYear" ControlToValidate="ddlYear" ErrorMessage="Yıl Seçiniz" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
						</div>
						<div class="col">
							<label>&nbsp;</label>
							<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<asp:Label ID="lblScript" runat="server" />
	<div id='cyrusTotalMonth'></div>
	<div id='cyrusTotalMonthTable'></div>
</div>
