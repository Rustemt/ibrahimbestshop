<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RpCariHesap.aspx.vb" Inherits="ASPNetPortal.RpCariHesap" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>WebForm1</title>
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
    <meta content="C#" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <script language="javascript" src="pagenav.js"> </script>
    <link href="../portal.css" type="text/css" rel="stylesheet">
</head>
<body runat="server">
    <form id="Form1" method="post" runat="server">
        <asp:Panel ID="Page1" runat="server">
            <table id="Table3" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <td>
                        <div id="DIV1" style="width: 792px; position: relative; height: 53px" runat="server"
                            ms_positioning="GridLayout">
                            <div id="lblFAdi" style="display: inline; font-weight: normal; font-size: 10pt; z-index: 101; left: 6px; width: 464px; position: absolute; top: 12px; height: 15px"
                                runat="server" ms_positioning="FlowLayout">
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:DataList ID="DataGrid1" runat="server" Width="392px" Height="118px">
                            <HeaderTemplate>
                                <div class="RIStyle" id="DIV2" style="width: 783px; border-bottom: black 1px solid; position: relative; height: 19px"
                                    align="center" runat="server" ms_positioning="GridLayout">
                                    <div class="RIStyle" id="Div8" style="z-index: 27; left: 12px; width: 44px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Tarih
                                    </div>
                                    <div class="RIStyle" id="Div9" style="z-index: 27; left: 88px; width: 37px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Belge No
                                    </div>
                                    <div class="RIStyle" id="Div22" style="z-index: 29; left: 140px; width: 44px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Ýzahat
                                    </div>
                                    <div class="RIStyle" id="ad" style="left: 184px; width: 62px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Kod1
                                    </div>
                                    <div class="RIStyle" id="Div6" style="z-index: 27; left: 248px; width: 57px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Kod2
                                    </div>
                                    <div class="RIStyle" id="Div10" style="z-index: 27; left: 336px; width: 42px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Kod3
                                    </div>
                                    <div class="RIStyle" id="Div11" style="z-index: 27; left: 480px; width: 39px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Kod4
                                    </div>
                                    <div class="RIStyle" id="Div12" style="z-index: 27; left: 536px; width: 67px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        <%#IIf(doviz = True, "D.Borç", "Borç")%>
                                    </div>
                                    <div class="RIStyle" id="Div13" style="z-index: 27; left: 624px; width: 56px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        <%#IIf(doviz = True, "D.Alacak", "Alacak")%>
                                    </div>
                                    <div class="RIStyle" id="Div14" style="z-index: 27; left: 684px; width: 80px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        <%#IIf(doviz = True, "D.Bakiye", "Bakiye")%>
                                    </div>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="RIStyle" id="Div3" style="width: 791px; position: relative; height: 19px"
                                    runat="server" ms_positioning="GridLayout">
                                    <input class="RIStyle" style="z-index: 27; left: 8px; width: 62px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="5" value='<%# IIf(doviz = True,DataBinder.Eval(Container.DataItem, "TARIH","{0:dd/MM/yyyy}"), "") %>'>
                                    <input class="RIStyle" style="z-index: 27; left: 76px; width: 62px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="5" value='<%# DataBinder.Eval(Container.DataItem, "EVRAKNO")%>'>
                                    <input class="RIStyle" style="z-index: 29; left: 144px; width: 46px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="2" value='<%# DataBinder.Eval(Container.DataItem, "IZAHAT")%>'>
                                    <input class="RIStyle" style="z-index: 69; left: 204px; width: 46px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="2" value='<%# DataBinder.Eval(Container.DataItem, "BASLIKOZELKOD1")%>'>
                                    <input class="RIStyle" id="TcKimNo" style="z-index: 69; left: 260px; width: 50px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="3" value='<%# DataBinder.Eval(Container.DataItem, "BASLIKOZELKOD2")%>'>
                                    <input class="RIStyle" id="Text3" style="z-index: 27; left: 316px; width: 154px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="5" value='<%# DataBinder.Eval(Container.DataItem, "BASLIKOZELKOD3")%>'>
                                    <input class="RIStyle" id="Text5" style="z-index: 27; left: 480px; width: 46px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="2" value='<%#DataBinder.Eval(Container.DataItem, "BASLIKOZELKOD4")%>'>
                                    <input class="RIStyle" id="NorGun" style="z-index: 69; left: 548px; width: 58px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="4" value='<%# IIf(doviz = True, formatCur(DataBinder.Eval(Container.DataItem, "DOVIZBORC")), formatCur(DataBinder.Eval(Container.DataItem, "BORC")))%>'>
                                    <input class="RIStyle" id="Text7" style="z-index: 27; left: 628px; width: 58px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="4" value='<%#IIf(doviz = True, formatCur(DataBinder.Eval(Container.DataItem, "DOVIZALACAK")), formatCur(DataBinder.Eval(Container.DataItem, "ALACAK")))%>'>
                                    <input class="RIStyle" id="Text9" style="z-index: 27; left: 712px; width: 58px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="4" value='<%#IIf(doviz = True, formatCur(DataBinder.Eval(Container.DataItem, "DOVIZBAKIYE")), formatCur(DataBinder.Eval(Container.DataItem, "BAKIYE")))%>'>
                                </div>
                            </ItemTemplate>
                        </asp:DataList></td>
                </tr>
                <tr>
                    <td id="endofpage" runat="server">
                        <div class="RIStyle" id="Div29" style="border-top: black 1px solid; border-bottom-width: 1px; border-bottom-color: black; width: 784px; position: relative; height: 18px"
                            align="left" runat="server" ms_positioning="GridLayout">
                        </div>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
