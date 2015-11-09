<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RpStokMaliyetRaporu.aspx.vb" Inherits="ASPNetPortal.RpStokMaliyetRaporu" %>

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

    <asp:Panel ID="Page1" runat="server">
        <table id="Table3" cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td>
                    <div id="DIV1" style="width: 483px; position: relative; height: 53px" runat="server"
                        ms_positioning="GridLayout">
                        <div id="lblBaslik" style="display: inline; font-weight: normal; font-size: 10pt; z-index: 101; left: 6px; width: 264px; position: absolute; top: 12px; height: 15px"
                            runat="server" ms_positioning="FlowLayout">
                            Stok Maliyet Raporu
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:DataList ID="DataGrid1" runat="server" Width="392px" Height="118px">
                        <HeaderTemplate>
                            <div class="RIStyle" id="DIV2" style="width: 462px; border-bottom: black 1px solid; position: relative; height: 19px"
                                align="center" runat="server" ms_positioning="GridLayout">
                                <div class="RIStyle" id="Div22" style="z-index: 29; left: 16px; width: 81px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                    align="center">
                                    Malýn Cinsi
                                </div>
                                <div class="RIStyle" id="Div9" style="z-index: 28; left: 216px; width: 42px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                    align="center">
                                    Fiyat
                                </div>
                                <div class="RIStyle" id="Div10" style="z-index: 28; left: 280px; width: 47px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                    align="center">
                                    Mevcut
                                </div>
                                <div class="RIStyle" id="Div12" style="z-index: 28; left: 360px; width: 81px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; border-bottom-style: solid"
                                    align="center">
                                    Tutar
                                </div>
                            </div>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="RIStyle" id="Div3" style="width: 457px; position: relative; height: 19px"
                                runat="server" ms_positioning="GridLayout">
                                <input class="RIStyle" style="z-index: 27; left: 8px; width: 194px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: left; border-bottom-style: solid" readonly type="text" size="27" value='<%# DataBinder.Eval(Container.DataItem, "MALINCINSI") %>'>
                                <input class="RIStyle" style="z-index: 27; left: 200px; width: 54px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: right; border-bottom-style: solid" readonly type="text" size="3" value='<%# DataBinder.Eval(Container.DataItem, "FIYAT","{0:0.00}") %>'>
                                <input class="RIStyle" style="z-index: 27; left: 272px; width: 54px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: right; border-bottom-style: solid" readonly type="text" size="3" value='<%# DataBinder.Eval(Container.DataItem, "MEVCUT","{0:0}") %>'>
                                <input class="RIStyle" style="z-index: 27; left: 344px; width: 70px; border-top-style: solid; border-right-style: solid; border-left-style: solid; position: absolute; top: 0px; height: 15px; text-align: right; border-bottom-style: solid" readonly type="text" size="6" value='<%# Format(DataBinder.Eval(Container.DataItem, "MEVCUT","{0:0}")*DataBinder.Eval(Container.DataItem, "FIYAT","{0:0.00}"),"###,##0.00") %>'>
                            </div>
                        </ItemTemplate>
                    </asp:DataList></td>
            </tr>
            <tr>
                <td id="endofpage" runat="server">
                    <div class="RIStyle" id="Div29" style="border-top: black 1px solid; border-bottom-width: 1px; border-bottom-color: black; width: 480px; position: relative; height: 18px"
                        align="left" runat="server" ms_positioning="GridLayout">
                    </div>
                </td>
            </tr>
        </table>
    </asp:Panel>
</body>
</html>
