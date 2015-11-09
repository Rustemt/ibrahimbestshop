<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="productreturnedsettings.ascx.vb" Inherits="ASPNetPortal.productreturnedsettings" %>
<div class="pageProductReturnSettings">
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="<%$ Resources:admin,MarketSettingsMsg1 %>" ShowMessageBox="True" ShowSummary="False" />
    <div class="dataForm">
        <div class="row">
            <div class="col1-2">
                <div class="row">
                    <div class="colTwo">
                        <label>Ürün İade Özelliği :</label>
                        <label class="labelInput">
                            <asp:CheckBox ID="chkProductReturnActive" runat="server"></asp:CheckBox>
                            Aktif/Pasif</label>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label>Ürün İade Genel Süresi(Gün) :</label>
                        <asp:TextBox ID="txtReturnDay" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label>Ürüne Özel İade Süresi(Gün)(Ürün Kodu) :</label>
                        <asp:DropDownList ID="ddlProductCode" runat="server">
                            <asp:ListItem Value="Code1">Kod1</asp:ListItem>
                            <asp:ListItem Value="Code2">Kod2</asp:ListItem>
                            <asp:ListItem Value="Code3">Kod3</asp:ListItem>
                            <asp:ListItem Value="Code4">Kod4</asp:ListItem>
                            <asp:ListItem Value="Code5">Kod5</asp:ListItem>
                            <asp:ListItem Value="Code6">Kod6</asp:ListItem>
                            <asp:ListItem Value="Code7">Kod7</asp:ListItem>
                            <asp:ListItem Value="Code8">Kod8</asp:ListItem>
                            <asp:ListItem Value="Code9">Kod9</asp:ListItem>
                            <asp:ListItem Value="Code10">Kod10</asp:ListItem>
                            <asp:ListItem Value="Code11">Kod11</asp:ListItem>
                            <asp:ListItem Value="Code12">Kod12</asp:ListItem>
                            <asp:ListItem Value="Code13">Kod13</asp:ListItem>
                            <asp:ListItem Value="Code14">Kod14</asp:ListItem>
                            <asp:ListItem Value="Code15">Kod15</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>


                <div class="row">
                    <div class="colTwo">
                        <label>İade Edilebilecek Sipariş Durumları :</label>
                        <div class="dataTable" style="padding: 10px; border: 1px solid #d8d9db;">
                            <style type="text/css">
                                .dataTable .dataTableInput input {
                                    display: inline-block;
                                    margin-right: 10px;
                                }

                                .dataTable .dataTableInput label {
                                    display: inline-block;
                                }
                            </style>
                            <asp:CheckBoxList CssClass="dataTableInput" ID="cbl" runat="server"></asp:CheckBoxList>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
