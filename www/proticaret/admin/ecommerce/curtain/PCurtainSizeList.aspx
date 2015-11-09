<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PCurtainSizeList.aspx.vb" Inherits=".PCurtainSizeList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Değer Listesi</title>
</head>
<body>
<form id="Form2" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText"><asp:Literal ID="ltrUnitSize" runat="server"></asp:Literal> Değer Listesi</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblSort" runat="server" Visible="False" Text=""></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<div class="buttonGroup">
                <a href="javascript:void(0)" runat="server" class="btnDefault" onclick="AddNew()"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNewValue") %></a>
			</div>
			<div class="dataTable">
				<asp:GridView ID="gwCurtainSizeList" runat="server" Gridlines="None" HeaderStyle-CssClass="title" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True">
					<Columns>
					<asp:BoundField DataField="id" HeaderText="IND"></asp:BoundField>
					<asp:BoundField DataField="CurtainSize" HeaderText="<%$ Resources:admin,Value %>"></asp:BoundField>
					<asp:BoundField DataField="CurtainRoundSize" HeaderText="<%$ Resources:admin,RoundingValue %>"></asp:BoundField>
					<asp:BoundField DataField="CurtainSizeFactor" HeaderText="<%$ Resources:admin,TransactionValue %>"></asp:BoundField>
					<%--
					<asp:BoundField DataField="CurtainSizeFactorsProcess" HeaderText="İşlem"></asp:BoundField>
					<asp:BoundField DataField="CurtainSizeFactorType" HeaderText="Etkileme Türü"></asp:BoundField>
					<asp:CheckBoxField DataField="CuratinDefault" HeaderText="Default" SortExpression="CuratinDefault" />
					<asp:CheckBoxField DataField="CurtainActive" HeaderText="Aktif" SortExpression="CurtainActive" />
					--%>
					
					<asp:TemplateField HeaderText="<%$ Resources:admin,Edit %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
					<ItemTemplate>
					<a href="javascript:void(0)" class="btnIcon" onclick="<%# "popupWindow(615,240,50,'/admin/ecommerce/curtain/PCurtainSizeEdit.aspx?ID=" & DataBinder.Eval(Container.DataItem, "id") & "&SID=" & Request.QueryString("SID") & "','popup');" %>"><i class="fa fa-pencil"></i></a>
                    </ItemTemplate>
					</asp:TemplateField>
					
					<asp:TemplateField HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash"></i></asp:LinkButton>
					</ItemTemplate>
					</asp:TemplateField>
					</Columns>
				</asp:GridView>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
<script type="text/javascript">
    function AddNew() {
        var a = "<%= IND%>";
        var b = "<%= COLID%>";

        popupWindow(615, 240, 50, '/admin/ecommerce/curtain/PCurtainSizeEdit.aspx?ID='+ a + ',&SID=' + b +',&ADD=NEW', 'popup');
    }
</script>
