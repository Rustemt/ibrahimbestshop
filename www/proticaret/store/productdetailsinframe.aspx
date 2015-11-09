<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.productdetailsinframe" ValidateRequest="false" EnableEventValidation="false" SmartNavigation="False" CodeBehind="productdetailsinframe.aspx.vb" %>
<%@ Register Assembly="System.Web.Extensions" Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
    <title runat="server" id="ptitle"></title>
    <meta name="robots" content="INDEX,FOLLOW" />
    <meta name="robots" content="all" />
    <meta name="description" content="description" runat="server" id="description" />
    <meta name="keywords" content="keys" runat="server" id="keywords" />
    <meta http-equiv="Content-Type" content="text/html;" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<script type="text/javascript" src="<% =getThemePath() %>/js/ajax.poster.min.js"></script>
<!-- Dependencies -->
<script type="text/javascript" src="http://yui.yahooapis.com/2.7.0/build/utilities/utilities.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.7.0/build/slider/slider-min.js"></script>

<!-- Color Picker source files for CSS and JavaScript -->
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.7.0/build/colorpicker/assets/skins/sam/colorpicker.css" />
<script type="text/javascript" src="http://yui.yahooapis.com/2.7.0/build/colorpicker/colorpicker-min.js"></script>
<style type="text/css">
    /*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.7.0*/
.yui-picker-panel {
	background: #e3e3e3;
	border-color: #888;
}
.yui-picker-panel .hd {
	background-color: #ccc;
	font-size: 100%;
	line-height: 100%;
	border: 1px solid #e3e3e3;
	font-weight: bold;
	overflow: hidden;
	padding: 6px;
	color: #000;
}
.yui-picker-panel .bd {
	background: #e8e8e8;
	margin: 1px;
	height: 200px;
}
.yui-picker-panel .ft {
	background: #e8e8e8;
	margin: 1px;
	padding: 1px;
	/*
text-align: center;
*/
}
.yui-picker {
	position: relative;
}
.yui-picker-hue-thumb {
	cursor: default;
	width: 18px;
	height: 18px;
	top: -8px;
	left: -2px;
	z-index: 9;
	position: absolute;
}
.yui-picker-hue-bg {
	-moz-outline: none;
	outline: 0px none;
	position: absolute;
	left: 200px;
	height: 183px;
	width: 14px;
	background: url("../uploads/poster/images/hue_bg.png") no-repeat;
	top: 4px;
}
.yui-picker-bg {
	-moz-outline: none;
	outline: 0px none;
	position: absolute;
	top: 4px;
	left: 4px;
	height: 182px;
	width: 182px;
	background-color: #F00;
	background-image: url("../uploads/poster/images/picker_mask.png");
}
*html .yui-picker-bg {
	background-image: none;
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/uploads/poster/images/picker_mask.png', sizingMethod='scale');
}
.yui-picker-mask {
	position: absolute;
	z-index: 1;
	top: 0px;
	left: 0px;
}
.yui-picker-thumb {
	cursor: default;
	width: 11px;
	height: 11px;
	z-index: 9;
	position: absolute;
	top: -4px;
	left: -4px;
}
.yui-picker-swatch {
	position: absolute;
	left: 160px;
	top: -30px;
	height: 20px;
	width: 35px;
	border: 1px solid #888;
}
.yui-picker-websafe-swatch {
	position: absolute;
	left: 304px;
	top: 4px;
	height: 24px;
	width: 24px;
	border: 1px solid #888;
}
.yui-picker-controls {
	z-index: -1;
	position: absolute;
	top: -50px;
	left: 0px;
	font: 1em monospace;
}
.yui-picker-controls .hd {
	background: transparent;
	border-width: 0px !important;
}

.yui-picker-controls .bd {
	height: 100px;
	border-width: 0px !important;
}

.yui-picker-controls ul {
	float: left;
	padding: 0 2px 0 0;
	margin: 0;
}

.yui-picker-controls li {
	padding: 2px;
	margin: 0;
	list-style: none;
}

.yui-picker-controls input {
	font-size: 0.85em;
	width: 2.4em;
}
.yui-picker-hex-controls {
	width: 150px;
	clear: both;
	padding: 2px;
}
.yui-picker-hex-controls input {
	width: 4.6em;
}
.yui-picker-controls a {
	font: 1em arial,helvetica,clean,sans-serif;
	display: block;
	*display: inline-block; /* IE */
	padding: 0;
	color: #000;
}
.poster .nextButton{
	padding					: 10px 15px;
	color					: #FFF;
	font-size				: 14px;
	font-weight				: 600;
	-webkit-border-radius	: 7px;
	-moz-border-radius		: 7px;
	border-radius			: 7px;
	border					: 1px solid #EA6E15;
	background				: #EA6E15 url("../themes/default/css/images/ui-bg_glass_75_ea6e15_1x400.png") 50% 50% repeat-x;
}
.poster .nextButton:hover {
	border					: 1px solid #ea9715;
	background				: #ea9715 url("../themes/default/css/images/ui-bg_glass_75_ea9715_1x400.png") 50% 50% repeat-x;
}
</style>


<body class="poster" style="margin: 0" onload="setFrame('<%=ProductId%>','01'); ">
<form id="Form1" name="Form1" runat="server">
<table id="zz" cellspacing="0" cellpadding="0" border="0">
<tr>
<td></td>
<td>
<table id="Table2" cellspacing="0" cellpadding="0" width="100%" border="0">
<tr valign="top">
<td class="cerv_middle_left_seperator middle_left_seperator"></td>
<td id="left" runat="server" visible="false"></td>
<td valign="top">
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tr valign="top">
            <td id="top_left" runat="server" visible="false"></td>
            <td class="cerv_ustpane_seperator2 ustpane_seperator2"></td>
            <td id="top_center" runat="server" visible="false"></td>
            <td class="cerv_ustpane_seperator2 ustpane_seperator2"></td>
            <td id="top_right" runat="server" visible="false"></td>
        </tr>
    </table>
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tr valign="top">
            <td id="middle_left" runat="server" visible="false"></td>
            <td class="cerv_pane_seperator2 pane_seperator2"></td>
            <td id="middle_center" runat="server">

                <table class="cerv_Global_Modul_Modul Global_Modul_Modul" width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td></td>
                                    <td>
                                        <table width="100%" style="background-image: url(/uploads/poster/banner/cervbanner.gif); background-repeat: no-repeat; width: 100%; height: 63px;" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td valign="bottom">
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="740" style="text-align: center; vertical-align: bottom;">
                                                                <% 'içerik %>
                                                                <table width="740">
                                                                    <tr>
                                                                        <td class="cerv_postercer_ikon_sol postercer_ikon_sol">&nbsp;</td>
                                                                        <td><a href="/uploads/yardim1.html" class="cerv_postercer_ikon1 postercer_ikon1" target="_blank" style="display:none;">
                                                                            <img src="/uploads/poster/yardim1.gif" style="border: 0px;" alt="" /></a><a href="/uploads/yardim2.html" class="cerv_postercer_ikon2 postercer_ikon2" target="_blank" style="display:none;"><img src="/uploads/poster/yardim2.gif" style="border: 0px;" alt="" /></a></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td width="740">
                                                                <br />
                                                                <br />
                                                                <table border="0" align="left" cellpadding="0" cellspacing="0">
                                                                    <tr>
                                                                        <td>
                                                                            <a href="#" onclick="Javascript:menuid=1; document.getElementById('nextMenuimg').style.display='block'; SetTab('1');">
                                                                                <img alt="" src="/uploads/poster/images/frmbt01_o.jpg" width="80" height="40" border="0" id="tabIMG01" /></a></td>
                                                                        <td>
                                                                            <a href="#" onclick="Javascript:menuid=2; document.getElementById('nextMenuimg').style.display='block'; SetTab('2');">
                                                                                <img alt="" src="/uploads/poster/images/frmbt02.jpg" width="80" height="40" border="0" id="tabIMG02" /></a></td>
                                                                        <td>
                                                                            <a href="#"  onclick="Javascript:menuid=3; SetTab('3');">
                                                                                <img alt="" src="/uploads/poster/images/frmbt03.jpg" width="80" height="40" border="0" id="tabIMG03" /></a></td>
                                                                        <td>&nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="800px" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="500px" valign="top">
                                        <span id="LYRProductDetail"></span>
                                    </td>
                                    <td width="230px" valign="top">
                                        <input name="temp_wall_color" type="hidden" id="temp_wall_color" value="F5F2F2" />
                                        <table border="0" align="center" id="cerceve" style="display: block;">
                                            <tr align="center">
                                                <td>
                                                    <div style="overflow: scroll; border: 1px solid #666; height: 500px; width: 230px; padding: 6px; display: none;"
                                                        id="Tab2">

                                                        <table width="90%" border="0">
                                                            <tr>
                                                                <td colspan="3" class="cerv_Global_Bold_Label Global_Bold_Label">
                                                                    <label>2. Çerçeve Modelini Seçiniz.</label>
                                                                    <a href="javascript:var PopUpWin = window.open('/uploads/poster/documents/frame.html','','width=400,height=400,scrollbars=no,status=0,toolbar=0,resizable=1')">
                                                                        <img style="border: 0" alt="info" src="/uploads/poster/images/info.gif" /></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="45" colspan="3" align="center" class="cerv_Global_Normal_Label Global_Normal_Label">
                                                                    <select name="select2" class="cerv_Global_Normal_ComboBox Global_Normal_ComboBox" onchange="SetFrameProperty(this.selectedIndex,<%=dvFrameProperties.Count %>,<%=ProductId%>);">
                                                                        <%  For i As Integer = 0 To dvFrameProperties.Count - 1
                                                                        %>
                                                                        <option value="<%=i%>">
                                                                            <%=dvFrameProperties(i)(0).ToString()%>
                                                                        </option>
                                                                        <%      
                                                                        Next%>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <br />
                                                                    <%  
                                                                        Dim firstFrame As String = "--Tümü--" ' dvFrames(0)("FrameProperty").ToString()
                                                                        Dim display As String = "block"
                                                                        Dim z As Integer = -1
                                                                    %>

                                                                    <%  For i As Integer = 0 To dvFrames.Count - 1%>

                                                                    <%  
                                                                        If (firstFrame <> dvFrames(i)("FrameProperty").ToString()) Then
                                    
                                  
                                                                            firstFrame = dvFrames(i)("FrameProperty").ToString()
                                                                            z += 1
                                                                            If z > 0 Then
                                                                                display = "none"
                                                                            End If
                                                                    %>

                                                                    <div id="FP<%=z %>" title="<%=dvFrames(i)("FrameCode").ToString().Trim()%>" style="display: <%=display %>">
                                                                        <% End If%>
                                                                        <table>
                                                                            <tr>
                                                                                <td>
                                                                                    <a style="cursor: pointer" onclick="setFrame('<%=ProductId%>','<%=dvFrames(i)("FrameCode").ToString().Trim()%>');">
                                                                                        <img alt="" src="/uploads/poster/frames/<%=dvFrames(i)("FrameCode").ToString().Trim()%>/thumbnail.gif" width="100"
                                                                                            height="100" /></a>
                                                                                    <a style="display:none;" href="javascript:var PopUpWin = window.open('../uploads/poster/frames/<%=dvFrames(i)("FrameCode").ToString().Trim()%>/detail.html','','width=780,height=800,scrollbars=yes,status=0,toolbar=0,resizable=0')">detay</a>
                                                                                    <%--<a  rel='lightbox' href='<%=Baseurl %>/store/makethumb.aspx?file="<%=dvFrames(i)("FrameCode").ToString().Trim()%>/thumbnail_big.gif&intSize=500' id='imgLink'>detay</a> --%>
                                                                                    <%--<a  rel='lightbox' href='<%=BaseUrl %>/store/makethumb.aspx?file=../../<%=dvFrames(i)("FrameCode").ToString().Trim()%>/thumbnail_big.gif&intSize=500' id='imgLink'>detay</a>--%>
                                                                                    <table width="100%" border="0">
                                                                                        <tr>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Bold_Label Global_Bold_Label">Ürün Kod</span></td>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Bold_Label Global_Bold_Label">:</span></td>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Normal_Label Global_Normal_Label">
                                                                                                    <label>#</label>
                                                                                                    <%=dvFrames(i)("FrameCode").ToString()%>
                                                                                                </span>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Bold_Label Global_Bold_Label">Malzeme</span></td>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Bold_Label Global_Bold_Label">:</span></td>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Normal_Label Global_Normal_Label">
                                                                                                    <%=dvFrames(i)("Material").ToString()%>
                                                                                                </span>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Bold_Label Global_Bold_Label">Renk</span></td>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Bold_Label Global_Bold_Label">:</span></td>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Normal_Label Global_Normal_Label">
                                                                                                    <%=dvFrames(i)("Type").ToString()%>
                                                                                                </span>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Bold_Label Global_Bold_Label">Geniþlik</span></td>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Bold_Label Global_Bold_Label">:</span></td>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Normal_Label Global_Normal_Label">
                                                                                                    <%=dvFrames(i)("Width").ToString()%>
                                                            cm.</span></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Bold_Label Global_Bold_Label">Kalýnlýk</span></td>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Bold_Label Global_Bold_Label">:</span></td>
                                                                                            <td>
                                                                                                <span class="cerv_Global_Normal_Label Global_Normal_Label">
                                                                                                    <%=dvFrames(i)("Thickness").ToString()%>
                                                            cm.</span></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td colspan="3" align="center" class="cerv_Global_Bold_Label Global_Bold_Label">
                                                                                                <a style="cursor: pointer" onclick="setFrame('<%=ProductId%>','<%=dvFrames(i)("FrameCode").ToString().Trim()%>');">SE&Ccedil;</a><br />
                                                                                                <br />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>

                                                                        <%  If (dvFrames.Count > i + 1) Then
                                                                                If (firstFrame <> dvFrames(i + 1)("FrameProperty").ToString()) Then%>
                                                                    </div>
                                                                    <%  End If
                                                                    End If%>
                                                                    <% Next%>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div style="overflow: scroll; border: 1px solid #666; height: 500px; width: 230px; padding: 6px; display: none;" id="Tab3">
                                                        <table id="tblpaspartu" width="90%" border="0">
                                                            <tr>
                                                                <td colspan="3" class="cerv_Global_Bold_Label Global_Bold_Label">3. Paspartu Seçiniz. 
                                                                    <a href="javascript:var PopUpWin = window.open('/uploads/poster/documents/paspartu.html','','width=400,height=400,scrollbars=no,status=0,toolbar=0,resizable=0')">
                                                                        <img style="border: 0" alt="info" src="/uploads/poster/images/info.gif" /></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="45" colspan="3" class="cerv_Global_Normal_Label Global_Normal_Label">
                                                                    <label>Paspartu Kalýnlýðý :</label>
                                                                    <select class="cerv_Global_Normal_ComboBox Global_Normal_ComboBox" name="select" id="spaspartuborder" onchange="setPaspartu2('<%=ProductId%>',document.getElementById('paspartucolor').value,document.getElementById('paspartuid').value);">
                                                                        <option value="0">Paspartusuz</option>
                                                                        <option value="4">4 cm</option>
                                                                        <option value="5">5 cm</option>
                                                                        <option value="6">6 cm</option>
                                                                        <option value="7">7 cm</option>
                                                                        <option value="8">8 cm</option>
                                                                        <option value="9">9 cm</option>
                                                                        <option value="10">10 cm</option>
                                                                        <option value="11">11 cm</option>
                                                                        <option value="12">12 cm</option>
                                                                        <option value="13">13 cm</option>
                                                                        <option value="14">14 cm</option>
                                                                        <option value="15">15 cm</option>
                                                                    </select>
                                                                </td>
                                                            </tr>

                                                            <% 
                                                                Dim ii As Integer = 0
                                                                For i As Integer = 0 To dvPaspartu.Count - 1
                                                                    If ii = 0 Then
                                                            %>
                                                            <tr>
                                                                <%  End If
                                                                    ii += 1
                                                                %>

                                                                <td align="center">
                                                                    <br />
                                                                    <span class="cerv_Global_Normal_Label Global_Normal_Label"><a style="cursor: pointer" onclick="setPaspartu('<%=ProductId%>','<%=dvPaspartu(i)("PaspartuColor").ToString() %>','<%=dvPaspartu(i)("ID").ToString() %>')">
                                                                        <img alt="" style="background-color: #<%=dvPaspartu(i)("PaspartuColor").ToString() %>;" src="/uploads/poster/paspartu/template.gif" width="24" height="24" /></a><br />
                                                                        <%=dvPaspartu(i)("PaspartuCode").ToString() %><br />
                                                                        <br />
                                                                    </span>
                                                                </td>
                                                                <% If ii = 3 Then%>
                                                            </tr>
                                                            <% 
                                                                ii = 0
                                                            End If
                                                        Next
                                                            %>
                                            </tr>

                                        </table>
                                        </div>
            <div style="overflow: scroll; border: 1px solid #666; height: 500px; width: 230px; padding: 6px; display: block; position: relative;" id="Tab1">
                <div id="divduvarrengi" align="left">
                    <table id="tblduvarrengi" border="0">
                        <tr>
                            <td class="cerv_Global_Bold_Label Global_Bold_Label">1. Duvar Rengini Seçiniz. <a href="javascript:var PopUpWin = window.open('/uploads/poster/documents/wall.html','','width=400,height=400,scrollbars=no,status=0,toolbar=0,resizable=0')">
                                <img style="border: 0" alt="info" src="/uploads/poster/images/info.gif" /></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <%--<img  alt="" style="cursor: pointer" src="/uploads/poster/images/spacer.gif" border="0" width="15" height="15"
                                                                        class="ColorCell" onclick="changeWall('8C715A');" />--%>

                                <%-- color pickr--%>


                                <div style="height: 50px"></div>

                                <%--<div id="ddcolorpickeralt" style="position:relative;  height:250px"></div>--%>

                                <div id="container" style="position: relative;"></div>


                                <script type="text/javascript">

                                    //ddcolorpicker.init({
                                    //	colorcontainer: ['ddcolorwidgetalt', 'ddcolorpickeralt'],
                                    //	displaymode: 'inline',
                                    //	floatattributes: ['DD Color Picker Widget', 'width=250px,height=250px,resize=0,scrolling=0,center=1'],
                                    //	fields: ['field3alt']
                                    //})



                                    var picker = new YAHOO.widget.ColorPicker("container", {
                                        showhsvcontrols: false,
                                        showhexcontrols: true,
                                        showhexsummary: false,
                                        showhsvcontrols: false,
                                        showrgbcontrols: false,
                                        showwebsafe: false,
                                        images: { PICKER_THUMB: "/uploads/poster/images/picker_thumb.png", HUE_THUMB: "/uploads/poster/images/hue_thumb.png" },
                                        txt: { HEX: "Renk: #" }
                                    });





                                    // Add the change event to update the colors
                                    picker.on('rgbChange', function (e) {
                                        var RGB = e.newValue.toString().split(",");
                                        changeWall(RGBtoHex(RGB[0], RGB[1], RGB[2]));
                                    });

                                    function RGBtoHex(R, G, B) { return toHex(R) + toHex(G) + toHex(B) }
                                    function toHex(N) {
                                        if (N == null) return "00";
                                        N = parseInt(N); if (N == 0 || isNaN(N)) return "00";
                                        N = Math.max(0, N); N = Math.min(N, 255); N = Math.round(N);
                                        return "0123456789ABCDEF".charAt((N - N % 16) / 16)
                                             + "0123456789ABCDEF".charAt(N % 16);
                                    }

                                </script>
                                <%-- color pickr--%>

                                                                        
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td>
                                        <a href="#" id="nextMenuimg" class="nextButton" onclick="nextMenu();">Sonraki Adýma Geç</a></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <%-- <div id="LYRCart" style="height: 1px; width: 1px; display: block;">
</div>--%>
</td>
<td class="cerv_pane_seperator2 pane_seperator2"></td>
<td id="middle_right" runat="server"></td>
</tr>
</table>
<table cellspacing="0" cellpadding="0" width="100%" border="0">
<tr valign="top">
<td id="bottom_left" runat="server" visible="false"></td>
<td class="cerv_altpane_seperator2 altpane_seperator2"></td>
<td id="bottom_center" runat="server"></td>
<td class="cerv_altpane_seperator2 altpane_seperator2"></td>
<td id="bottom_right" runat="server" visible="false"></td>
</tr>
</table>
</td>
<td class="cerv_middle_right_seperator middle_right_seperator"></td>
<td id="right" runat="server" visible="false"></td>
</tr>
</table>
</td>
<td></td>
</tr>
</table>
<table id="xxy" cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="cerv_leftfooter_seperator leftfooter_seperator"></td>
<td></td>
<td class="cerv_rightfooter_seperator rightfooter_seperator"></td>
</tr>
<tr class="cerv_xxy_tr xxy_tr">
<td></td>
<td></td>
<td></td>
</tr>
</table>

</form>
    <%-- <script  type="text/javascript">
  var mytext = document.getElementById("field3alt"); 
mytext.focus(); 
mytext.select();  



</script>--%>
</body>
</html>
