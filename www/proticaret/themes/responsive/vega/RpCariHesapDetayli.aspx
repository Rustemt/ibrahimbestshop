<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RpCariHesapDetayli.aspx.vb" Inherits="ASPNetPortal.RpCariHesapDetayli" %>

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
                                    <div class="RIStyle" id="Div9" style="z-index: 27; left: 65px; width: 67px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        BelgeNo
                                    </div>
                                    <div class="RIStyle" id="Div22" style="z-index: 29; left: 140px; width: 44px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Ýzahat
                                    </div>
                                    <div class="RIStyle" id="ad" style="left: 190px; width: 62px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Vade
                                    </div>
                                    <div class="RIStyle" id="Div6" style="z-index: 27; left: 260px; width: 57px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Kod1
                                    </div>
                                    <div class="RIStyle" id="Div10" style="z-index: 27; left: 336px; width: 42px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Kod2
                                    </div>
                                    <div class="RIStyle" id="Div11" style="z-index: 27; left: 400px; width: 39px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Kod3
                                    </div>
                                    <div class="RIStyle" id="Div12" style="z-index: 27; left: 455px; width: 40px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Kod4
                                    </div>
                                    <div class="RIStyle" id="Div13" style="z-index: 27; left: 520px; width: 95px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        StokKodu
                                    </div>
                                    <div class="RIStyle" id="Div15" style="z-index: 27; left: 656px; width: 80px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        MalýnCinsi
                                    </div>
                                    <div class="RIStyle" id="Div16" style="z-index: 27; left: 736px; width: 80px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        Miktar
                                    </div>
                                    <div class="RIStyle" id="Div17" style="z-index: 27; left: 816px; width: 80px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        B.Adý
                                    </div>
                                    <div class="RIStyle" id="Div18" style="z-index: 27; left: 896px; width: 80px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        B.Fiyatý
                                    </div>
                                    <div class="RIStyle" id="Div19" style="z-index: 27; left: 976px; width: 80px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                       <%=IIf(doviz = True, "D.Borç", "Borç")%> 
                                    </div>
                                    <div class="RIStyle" id="Div20" style="z-index: 27; left: 1056px; width: 80px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                        <%=IIf(doviz = True, "D.Alacak", "Alacak")%> 
                                    </div>
                                    <div class="RIStyle" id="Div21" style="z-index: 27; left: 1136px; width: 80px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                        align="center">
                                      <%=IIf(doviz = True, "D.Bakiye", "Bakiye")%>    
                                    </div>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="RIStyle" id="Div3" style="width: 791px; position: relative; height: 19px"
                                    runat="server" ms_positioning="GridLayout">
                                    <input class="RIStyle" style="z-index: 27; left: 8px; width: 62px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="5" value='<%# IIf(doviz = True,DataBinder.Eval(Container.DataItem, "TARIH","{0:dd/MM/yyyy}"), "") %>'>
                                    <input class="RIStyle" style="z-index: 27; left: 76px; width: 62px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="5" value='<%# DataBinder.Eval(Container.DataItem, "BELGENO")%>'>
                                    <input class="RIStyle" style="z-index: 29; left: 144px; width: 46px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="2" value='<%# DataBinder.Eval(Container.DataItem, "IZAHAT")%>'>
                                    <input class="RIStyle" style="z-index: 69; left: 193px; width: 70px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="2" value='<%# IIf(doviz = True, DataBinder.Eval(Container.DataItem, "VADE", "{0:dd/MM/yyyy}"), "")%>'>
                                    <input class="RIStyle" id="Kod1" style="z-index: 69; left: 270px; width: 50px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="3" value='<%# DataBinder.Eval(Container.DataItem, "BASLIKOZELKOD1")%>'>
                                    <input class="RIStyle" id="Kod2" style="z-index: 27; left: 330px; width: 50px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="5" value='<%# DataBinder.Eval(Container.DataItem, "BASLIKOZELKOD2")%>'>
                                    <input class="RIStyle" id="Kod3" style="z-index: 27; left: 390px; width: 50px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="2" value='<%#DataBinder.Eval(Container.DataItem, "BASLIKOZELKOD3")%>'>
                                    <input class="RIStyle" id="Kod4" style="z-index: 69; left: 450px; width: 50px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="4" value='<%# DataBinder.Eval(Container.DataItem, "BASLIKOZELKOD4")%>'>
                                    <input class="RIStyle" id="StockCode" style="z-index: 27; left: 520px; width: 110px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="4" value='<%#DataBinder.Eval(Container.DataItem, "STOKKODU")%>'>
                                    <input class="RIStyle" id="type" style="z-index: 27; left: 650px; width: 80px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="4" value='<%#DataBinder.Eval(Container.DataItem, "MALINCINSI")%>'>
                                    <input class="RIStyle" id="count" style="z-index: 27; left: 745px; width: 65px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="4" value='<%# formatNumberEx(DataBinder.Eval(Container.DataItem, "MIKTAR"))%>'>
                                    <input class="RIStyle" id="unit" style="z-index: 27; left: 825px; width: 65px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="4" value='<%#DataBinder.Eval(Container.DataItem, "BIRIMADI")%>'>
                                    <input class="RIStyle" id="fiyat" style="z-index: 27; left: 900px; width: 65px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="4" value='<%#IIf(doviz = True, formatCur(DataBinder.Eval(Container.DataItem, "BIRIMFIYATI")), formatCur(DataBinder.Eval(Container.DataItem, "BIRIMFIYATI")))%>'>
                                    <input class="RIStyle" id="borc" style="z-index: 27; left: 980px; width: 65px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="4" value='<%#IIf(doviz = True, formatCur(DataBinder.Eval(Container.DataItem, "DOVIZBORC")), formatCur(DataBinder.Eval(Container.DataItem, "BORC")))%>'>
                                    <input class="RIStyle" id="alacak" style="z-index: 27; left: 1060px; width: 65px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="4" value='<%#IIf(doviz = True, formatCur(DataBinder.Eval(Container.DataItem, "DOVIZALACAK")), formatCur(DataBinder.Eval(Container.DataItem, "ALACAK")))%>'>
                                    <input class="RIStyle" id="bakiye" style="z-index: 27; left: 1145px; width: 65px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid" readonly type="text" size="4" value='<%#IIf(doviz = True, formatCur(DataBinder.Eval(Container.DataItem, "BAKIYE")), formatCur(DataBinder.Eval(Container.DataItem, "BAKIYE")))%>'>
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
