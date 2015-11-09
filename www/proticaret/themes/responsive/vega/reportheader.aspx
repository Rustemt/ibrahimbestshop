<%@ Page Language="vb" AutoEventWireup="false" Codebehind="reportheader.aspx.vb" Inherits="ASPNetPortal.reportheader" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript (ECMAScript)">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="javascript">
	function setFocus()
	{
		parent.report.focus();
		
	}
		</script>
		<LINK href="../portal.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body bgcolor="#c0c0c0" MS_POSITIONING="GridLayout">
		<form runat="server" id="ReportHeader" method="post">
			<DIV align="left" id="DIV1" runat="server" style="BACKGROUND-COLOR: #c0c0c0">
				<TABLE style="WIDTH: 746px">
					<TR align="left">
						<TD align="left" vAlign="top">
							<INPUT id="btnPrint" name="btnPrint" style="WIDTH : 13.77mm; HEIGHT : 20px; BACKGROUND-COLOR : transparent"
								onclick="javascript:setFocus();parent.report.print()" type="button" value="Yazdýr"
								class="Style"> <INPUT id="btnPageMoveFirst" name="btnPageMoveFirst" style="WIDTH : 8mm; BACKGROUND-COLOR : transparent"
								onclick="javascript:setFocus();parent.report.showFirstPage();" type="button" value="<<" class="Style">
							<INPUT id="btnPageMovePrev" name="btnPageMovePrev" style="WIDTH : 8mm; BACKGROUND-COLOR : transparent"
								onclick="javascript:setFocus();parent.report.showPrevPage();" type="button" value="<-"
								class="Style"> <INPUT id="btnPageMoveNext" name="btnPageMoveNext" style="WIDTH : 8mm; BACKGROUND-COLOR : transparent"
								onclick="javascript:setFocus();parent.report.showNextPage();" type="button" value="->" class="Style">
							<INPUT id="btnPageMoveLast" name="btnPageMoveLast" style="WIDTH : 8mm; BACKGROUND-COLOR : transparent"
								onclick="javascript:setFocus();parent.report.showLastPage();" type="button" value=">>"
								class="Style"> <INPUT id="btnClose" name="btnClose" style="WIDTH : 15mm; BACKGROUND-COLOR : transparent"
								onclick="javascript:parent.window.close()" type="button" value="Kapat" class="Style">&nbsp;
						</TD>
					</TR>
				</TABLE>
			</DIV>
		</form>
	</body>
</HTML>
