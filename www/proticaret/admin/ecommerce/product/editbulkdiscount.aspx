<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editbulkdiscount.aspx.vb" Inherits="ASPNetPortal.editbulkdiscount" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Birim Düzenle</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Çoklu İndirim Düzenle</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
                        <tr>
                            <td>
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "Status")%> :</label>
                                            <label class="labelInput">
                                                <asp:CheckBox ID="chkIsActive" runat="server" Checked="True"></asp:CheckBox>
                                                Aktif/Pasif</label>
                                        </div>
                                        <div class="colTwo">
                                            <label>Birim Türü :</label>
                                            <asp:DropDownList runat="server" AutoPostBack="True" ID="ddlUnitType"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>Başlangıç Miktari :</label>
                                            <ew:NumericBox runat="server" PositiveNumber="true" ID="txtStartQty">1</ew:NumericBox>
                                        </div>
                                        <div class="colTwo">
                                            <label>Bitiş Miktari :</label>
                                            <ew:NumericBox runat="server" PositiveNumber="true" ID="txtEndQty">1</ew:NumericBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo colHalf">
                                            <label><%=GetGlobalResourceObject("admin", "DiscountType")%> :</label>
                                            <asp:DropDownList AutoPostBack="true" runat="server" ID="ddlDiscountType">
                                                <asp:ListItem Value="1">Yüzde (%) </asp:ListItem>
                                                <asp:ListItem Value="2">Tutar</asp:ListItem>
                                            </asp:DropDownList>
                                            <%--<ew:NumericBox ID="txtDiscountAmount2" onkeyup="Calc()" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>--%>
                                            <asp:TextBox ID="txtDiscountAmount" onkeyup="Calc()" runat="server" TextAlign="Right">0</asp:TextBox>
                                            <cc1:FilteredTextBoxExtender runat="server" ID="ftbe1" TargetControlID="txtDiscountAmount" FilterType="Custom" ValidChars="1234567890,."></cc1:FilteredTextBoxExtender>
                                        </div>
                                        <div class="colTwo">
                                            <label>
                                                Birim Fiyat :
                                                <asp:Label runat="server" CssClass="textRed" ID="lblUnitPrice"></asp:Label></label>
                                            <asp:TextBox ID="txtUnitPrice" runat="server"></asp:TextBox>
                                            <cc1:FilteredTextBoxExtender runat="server" ID="ftbe2" TargetControlID="txtUnitPrice" FilterType="Custom" ValidChars="1234567890,."></cc1:FilteredTextBoxExtender>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="buttonGroup">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
                        <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" CausesValidation="False"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
        <div class="visible" style="display:none">
            <asp:TextBox runat="server" ID="txtUnitPrice2"></asp:TextBox>
        </div>
    </form>
</body>
</html>
<script type="text/javascript">
    function Calc() {
        var amount = document.getElementById('<%=txtDiscountAmount.ClientID%>').value;
        var type = document.getElementById('<%=ddlDiscountType.ClientID%>').value;
        var unitprice = document.getElementById('<%=txtUnitPrice2.ClientID%>').value;
      
        if (type == 1) {

            var b = (unitprice.replace(",", ".") * (1 - (amount / 100)));



            document.getElementById('<%= txtUnitPrice.ClientID%>').value = b;

        }

        else {

            var b = (unitprice.replace(",", ".") - amount);

            document.getElementById('<%= txtUnitPrice.ClientID%>').value = b;

        }

    }

</script>
