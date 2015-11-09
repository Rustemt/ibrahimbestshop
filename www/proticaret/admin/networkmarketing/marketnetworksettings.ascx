<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="marketnetworksettings.ascx.vb" Inherits="ASPNetPortal.NetworkMarketSettings" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<div id="pageNetworkMarketSettings">
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" HeaderText="Lütfen Bilgileri Kontrol ediniz..."></asp:ValidationSummary>
<div class="boxToggle  publicTab" id="TabContainer" runat="server">
    <div class="toggleTitle toggleMini">
        <div class="titleText"><%=GetGlobalResourceObject("admin", "GeneralSettings")%></div>
        <div class="titleTab">
            <ul class="tabMenu">
                <li><a href="#tab_1"><%=GetGlobalResourceObject("admin", "NetworkMarketingSettings")%></a></li>
                <li><a href="#tab_2"><%=GetGlobalResourceObject("admin", "Levels")%></a></li>
                <li><a href="#tab_3"><%=GetGlobalResourceObject("admin", "BonusandRank")%></a></li>
                <li><a href="#tab_4"><%=GetGlobalResourceObject("admin", "PrimeMatrix")%></a></li>
            </ul>
        </div>
    </div>
    <div class="toggleContent">
        <div class="tabContent">
            <div class="tab" id="tab_1">
                <div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "TotalLevel")%> :</label>
                            <asp:TextBox ID="ToplamSeviye" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "BonusCalculateMethod")%> :</label>
                            <asp:DropDownList ID="ddlPrimHesaplamaSekliSecimi" runat="server" onChange="primHesapChange()">
                            <asp:ListItem Text="<%$ Resources:admin,ShoppingDegreeAvails %>" Value="3"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,ShoppingFixedAmount %>" Value="2">Her Alışverişte Sabit Tutar</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><asp:Label ID="lblPrimHesaplama" runat="server"><%=GetGlobalResourceObject("admin", "InstallmentRate")%> :</asp:Label></label>
                            <asp:TextBox ID="PrimHesaplamaSekli" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "BonusIncludedTax")%>:</label>
                            <label class="labelInput"><asp:CheckBox ID="PrimeKdvdahil" runat="server" /><%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "FollowingPeriodofBonusUp")%> :</label>
                            <asp:DropDownList ID="PrimTakipPeriyodu" runat="server">
                            <asp:ListItem Text="<%$ Resources:admin,OneMonth %>" Selected="True" Value="30"></asp:ListItem>  
                            <asp:ListItem Text="<%$ Resources:admin,ThreeMonth %>" Value="90"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,SixMonth %>" Value="180"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "NMMsg1")%></label>
                            <label class="labelInput"><asp:CheckBox ID="KendiSatisindanPrim" runat="server" /><%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "NMMsg3")%></label>
                            <label class="labelInput"><asp:CheckBox ID="KariyerTakibi" runat="server" /><%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "NMMsg2")%></label>
                            <label class="labelInput"><asp:CheckBox ID="UyeliktenPuanKazanma" runat="server" /><%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "BonusRateProductBase")%>?</label>
                            <label class="labelInput"><asp:CheckBox ID="PrimOraniUrunBazli" runat="server" /><%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "ProductBonusField")%> :</label>
                            <asp:DropDownList ID="PrimOranUrunKod" runat="server">
                            <asp:ListItem Text="<%$ Resources:admin,Code1 %>" Selected="True" Value="1"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code2 %>" Value="2"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code3 %>" Value="3"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code4 %>" Value="4"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code5 %>" Value="5"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code6 %>" Value="6"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code7 %>" Value="7"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code8 %>" Value="8"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code9 %>" Value="9"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code10 %>" Value="10"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code11 %>" Value="11"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code12 %>" Value="12"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code13 %>" Value="13"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code14 %>" Value="14"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Code15 %>" Value="15"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "OrderStatustobeDistributedBonus")%>:</label>
                            <asp:DropDownList ID="ddlStatus" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab" id="tab_2">
                <div class="dataForm">
                	<div class="row">
                        <div class="colTwo">
                            <div class="row">
                                <div class="colOne">
                                <label>1. <%=GetGlobalResourceObject("admin", "Level")%> (<%=GetGlobalResourceObject("admin", "GeneralManager")%>) :</label>
                                <asp:TextBox ID="seviye1" runat="server"></asp:TextBox>
                                </div>
                                <div class="colOne">
                                <label>2. <%=GetGlobalResourceObject("admin", "Level")%> (<%=GetGlobalResourceObject("admin", "Manager2")%>) :</label>
                                <asp:TextBox ID="seviye2" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                <label>3. <%=GetGlobalResourceObject("admin", "Level")%> (<%=GetGlobalResourceObject("admin", "AssistantManager")%>) :</label>
                                <asp:TextBox ID="seviye3" runat="server"></asp:TextBox>
                                </div>
                                <div class="colOne">
                                <label>4. <%=GetGlobalResourceObject("admin", "Level")%> (<%=GetGlobalResourceObject("admin", "Supervizor")%>) :</label>
                                <asp:TextBox ID="seviye4" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                <label>5. <%=GetGlobalResourceObject("admin", "Level")%> (<%=GetGlobalResourceObject("admin", "SalesRepresentative")%>) :</label>
                                <asp:TextBox ID="seviye5" runat="server"></asp:TextBox>
                                </div>
                                <div class="colOne">
                                <label>6. <%=GetGlobalResourceObject("admin", "Level")%> (<%=GetGlobalResourceObject("admin", "MembersCustomer")%>) :</label>
                                <asp:TextBox ID="seviye6" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                <label>7. <%=GetGlobalResourceObject("admin", "Level")%> (<%=GetGlobalResourceObject("admin", "Salesman2")%>) :</label>
                                <asp:TextBox ID="seviye7" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab" id="tab_3">
                <table cellpadding="5" cellspacing="0" border="0">
                      <tr>
                        <td align="right"><b><%=GetGlobalResourceObject("admin", "Levels")%> :</b></td>
                        <td align="right"><b><%=GetGlobalResourceObject("admin", "BonusRate")%> :</b></td>
                        <td align="right"><b><%=GetGlobalResourceObject("admin", "DegreePoints")%> :</b></td>
                      </tr>
                      <tr>
                        <td align="right"><%=GetGlobalResourceObject("admin", "GeneralManager")%> :</td>
                        <td><asp:TextBox ID="seviye1_Prim" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="seviye1_Rutbe" runat="server"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td align="right"><%=GetGlobalResourceObject("admin", "Manager2")%> :</td>
                        <td><asp:TextBox ID="seviye2_Prim" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="seviye2_Rutbe" runat="server"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td align="right"><%=GetGlobalResourceObject("admin", "AssistantManager")%> :</td>
                        <td><asp:TextBox ID="seviye3_Prim" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="seviye3_Rutbe" runat="server"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td align="right"><%=GetGlobalResourceObject("admin", "Supervizor")%> :</td>
                        <td><asp:TextBox ID="seviye4_Prim" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="seviye4_Rutbe" runat="server"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td align="right"><%=GetGlobalResourceObject("admin", "SalesRepresentative")%> :</td>
                        <td><asp:TextBox ID="seviye5_Prim" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="seviye5_Rutbe" runat="server"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td align="right"><%=GetGlobalResourceObject("admin", "MembersCustomer")%>:</td>
                        <td><asp:TextBox ID="seviye6_Prim" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="seviye6_Rutbe" runat="server"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td align="right"><%=GetGlobalResourceObject("admin", "Salesman2")%>:</td>
                        <td><asp:TextBox ID="seviye7_Prim" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="seviye7_Rutbe" runat="server"></asp:TextBox></td>
                      </tr>
                </table>
            </div>
            <div class="tab" id="tab_4">
                <table cellpadding="5" cellspacing="0" border="0">
                  <tr>
                    <td align="right"><b><label><%=GetGlobalResourceObject("admin", "Levels")%> :</label> :</b></td>
                    <td align="right"><b><label><%=GetGlobalResourceObject("admin", "GeneralManager")%> :</label></b></td>
                    <td align="right"><b><label><%=GetGlobalResourceObject("admin", "Manager2")%> :</label></b></td>
                    <td align="right"><b><label><%=GetGlobalResourceObject("admin", "AssistantManager")%> :</label></b></td>
                    <td align="right"><b><label><%=GetGlobalResourceObject("admin", "Supervizor")%> :</label></b></td>
                    <td align="right"><b><label><%=GetGlobalResourceObject("admin", "SalesRepresentative")%> :</label></b></td>
                    <td align="right"><b><label><%=GetGlobalResourceObject("admin", "MembersCustomer")%> :</label></b></td>
                    <td align="right"><b><label><%=GetGlobalResourceObject("admin", "Salesman2")%> :</label></b></td>
                  </tr>
                  <tr>
                    <td align="right"><b><%=GetGlobalResourceObject("admin", "GeneralManager")%> :</b></td>
                    <td><asp:TextBox ID="Seviye1_1" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye1_2" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye1_3" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye1_4" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye1_5" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye1_6" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye1_7" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right"><b><%=GetGlobalResourceObject("admin", "Manager2")%> :</b></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td><asp:TextBox ID="Seviye2_3" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye2_4" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye2_5" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye2_6" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye2_7" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right"><b><%=GetGlobalResourceObject("admin", "AssistantManager")%> :</b></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td><asp:TextBox ID="Seviye3_4" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye3_5" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye3_6" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye3_7" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right"><b><%=GetGlobalResourceObject("admin", "Supervizor")%> :</b></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td><asp:TextBox ID="Seviye4_5" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye4_6" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye4_7" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right"><b><%=GetGlobalResourceObject("admin", "SalesRepresentative")%> :</b></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td><asp:TextBox ID="Seviye5_6" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="Seviye5_7" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right"><b><%=GetGlobalResourceObject("admin", "MembersCustomer")%> :</b></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td align="right"></td>
                    <td><asp:TextBox ID="Seviye6_7" runat="server"></asp:TextBox></td>
                  </tr>
                </table>
            </div>
            <div class="buttonGroup">
				<asp:LinkButton ID="applyBtn" runat="server" CssClass="btnDefault" CausesValidation="false" ><i class="fa fa-floppy-o"></i>  <%= GetGlobalResourceObject("admin","SaveSettings") %></asp:LinkButton>
        	</div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function primHesapChange() {
        var type = document.getElementById("<%= ddlPrimHesaplamaSekliSecimi.ClientID%>").value
        if (type == 2) {
            document.getElementById("<%= lblPrimHesaplama.ClientID%>").innerHTML = "Sabit Tutar :"
            document.getElementById("<%= PrimHesaplamaSekli.ClientID%>").disabled = false;
        }
        if (type == 3) {
            document.getElementById("<%= PrimHesaplamaSekli.ClientID%>").disabled = true;
            document.getElementById("<%= PrimHesaplamaSekli.ClientID%>").value = null;
            document.getElementById("<%= lblPrimHesaplama.ClientID%>").innerHTML = "Oran % :"
        }
    }
</script>
