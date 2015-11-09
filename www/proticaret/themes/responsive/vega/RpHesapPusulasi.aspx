<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RpHesapPusulasi.aspx.vb" Inherits="ASPNetPortal.RpHesapPusulasi"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="javascript" src="pagenav.js"> </script>
		<LINK href="../portal.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body bottomMargin="0" leftMargin="0" topMargin="0" rightMargin="0">
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Page1" runat="server">
				<TABLE id="Table3" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD>
							<DIV id="DIV1" style="POSITION: relative" runat="server" ms_positioning="GridLayout"></DIV>
						</TD>
					</TR>
					<TR>
						<TD colSpan="3">
							<asp:DataList id="DataGrid1" runat="server">
								<ItemTemplate>
									<DIV class="RIStyle" id="Div3" style="LEFT: 0px; WIDTH: 676px; POSITION: relative; TOP: 0px; HEIGHT: 350px; BACKGROUND-COLOR: transparent"
										runat="server" ms_positioning="GridLayout">
										<DIV style="DISPLAY: inline; Z-INDEX: 180; LEFT: 0px; WIDTH: 40px; POSITION: absolute; TOP: 64px; HEIGHT: 15px"
											ms_positioning="FlowLayout">Sicil No</DIV>
										<INPUT class=RIStyle id=sskno style="Z-INDEX: 172; LEFT: 8px; WIDTH: 56px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "SICILNO") %>'><INPUT class=RIStyle id=NorGun style="Z-INDEX: 176; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 136px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "CALISTIGIGUN" ,"{0:0}")%>'><INPUT class=RIStyle id=NorGun style="Z-INDEX: 173; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 148px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "HAFTATATILI" ,"{0:0}")%>'><INPUT class=RIStyle id=BayTat style="Z-INDEX: 174; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 172px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "CALISILMAYANRESMITATIL" ,"{0:0}")%>'><INPUT class=RIStyle id=YilIzn style="Z-INDEX: 167; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 184px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "YILLIKIZIN" ,"{0:0}")%>'><INPUT class=RIStyle id=fazCal style="Z-INDEX: 171; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 212px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "FAZLACALISMA" ,"{0:0}")%>'><INPUT class=RIStyle id=FazCalHs style="Z-INDEX: 169; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 224px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "VAR5" ,"{0:0}")%>'><INPUT class=RIStyle id=FazCalB style="Z-INDEX: 163; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 236px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "VAR5" ,"{0:0}")%>'><INPUT class=RIStyle id=TopGun style="Z-INDEX: 175; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 160px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "TOPLAMGUN" ,"{0:0}")%>'><INPUT class=RIStyle id=sskMat style="Z-INDEX: 166; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 148px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=9 value='<%# DataBinder.Eval(Container.DataItem, "SSKMATRAHI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=sskPIsPay style="Z-INDEX: 168; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 236px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=7 value='<%# DataBinder.Eval(Container.DataItem, "SSKPRIMIISCIPAYI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=IIpayi style="Z-INDEX: 170; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 272px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "ISSIZLIKISCIPAYI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=VMat style="Z-INDEX: 177; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 160px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=8 value='<%# DataBinder.Eval(Container.DataItem, "VERGIMATRAHI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=GVergi style="Z-INDEX: 178; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 248px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=7 value='<%# DataBinder.Eval(Container.DataItem, "GELIRVERGISI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=DamV style="Z-INDEX: 179; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 260px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=7 value='<%# DataBinder.Eval(Container.DataItem, "DAMGAVERGISI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=ele style="Z-INDEX: 162; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 212px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "ELEGECEN" ,"{0:0.00}")%>'>
										<DIV style="DISPLAY: inline; Z-INDEX: 131; LEFT: 64px; WIDTH: 17px; POSITION: absolute; TOP: 64px; HEIGHT: 15px"
											ms_positioning="FlowLayout">Adý</DIV>
										<INPUT class=RIStyle id=Text21 style="Z-INDEX: 146; LEFT: 64px; WIDTH: 92px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=10 value='<%# DataBinder.Eval(Container.DataItem, "AD") %>'><INPUT class=RIStyle id=Text22 style="Z-INDEX: 133; LEFT: 164px; WIDTH: 92px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=10 value='<%# DataBinder.Eval(Container.DataItem, "SOYAD") %>'>
										<DIV style="DISPLAY: inline; Z-INDEX: 154; LEFT: 164px; WIDTH: 40px; POSITION: absolute; TOP: 64px; HEIGHT: 15px"
											ms_positioning="FlowLayout">Soyadý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 135; LEFT: 268px; WIDTH: 68px; POSITION: absolute; TOP: 64px; HEIGHT: 18px"
											ms_positioning="FlowLayout">Ýþe Giriþ Tarihi</DIV>
										<INPUT class=RIStyle id=Text25 style="Z-INDEX: 148; LEFT: 268px; WIDTH: 68px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=6 value='<%# DataBinder.Eval(Container.DataItem, "ISEGIRISTARIHI") %>'><INPUT class=RIStyle id=Text27 style="Z-INDEX: 112; LEFT: 344px; WIDTH: 68px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=6 value='<%# DataBinder.Eval(Container.DataItem, "SSKSICILNO") %>'>
										<DIV style="DISPLAY: inline; Z-INDEX: 113; LEFT: 340px; WIDTH: 78px; POSITION: absolute; TOP: 64px; HEIGHT: 14px"
											ms_positioning="FlowLayout">SSK Sicil No</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 115; LEFT: 428px; WIDTH: 36px; POSITION: absolute; TOP: 64px; HEIGHT: 14px"
											ms_positioning="FlowLayout">Cinsiyet</DIV>
										<INPUT class=RIStyle id=Text29 style="Z-INDEX: 117; LEFT: 428px; WIDTH: 32px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "CINSIYET") %>'>
										<DIV style="DISPLAY: inline; Z-INDEX: 119; LEFT: 472px; WIDTH: 52px; POSITION: absolute; TOP: 64px; HEIGHT: 14px"
											ms_positioning="FlowLayout">Medeni Hal</DIV>
										<INPUT class=RIStyle id=Text31 style="Z-INDEX: 121; LEFT: 480px; WIDTH: 32px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "MEDENIHAL") %>'>
										<DIV style="DISPLAY: inline; Z-INDEX: 123; LEFT: 528px; WIDTH: 56px; POSITION: absolute; TOP: 64px; HEIGHT: 14px"
											ms_positioning="FlowLayout">Çocuk Sayýsý</DIV>
										<INPUT class=RIStyle id=Text33 style="Z-INDEX: 125; LEFT: 536px; WIDTH: 36px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "COCUKSAY") %>'>
										<DIV style="DISPLAY: inline; Z-INDEX: 127; LEFT: 588px; WIDTH: 48px; POSITION: absolute; TOP: 64px; HEIGHT: 14px"
											ms_positioning="FlowLayout">Ücret Nevi</DIV>
										<INPUT class=RIStyle id=Text34 style="Z-INDEX: 129; LEFT: 596px; WIDTH: 36px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "UCRETNEVI") %>'>
										<HR style="Z-INDEX: 100; LEFT: 8px; WIDTH: 96.65%; POSITION: absolute; TOP: 80px; HEIGHT: 1px"
											width="96.65%" SIZE="1">
										<DIV style="DISPLAY: inline; Z-INDEX: 132; LEFT: 0px; WIDTH: 50px; POSITION: absolute; TOP: 172px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Resmi Tatil</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 134; LEFT: 0px; WIDTH: 42px; POSITION: absolute; TOP: 184px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Yýllýk Ýzin</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 136; LEFT: 0px; WIDTH: 50px; POSITION: absolute; TOP: 224px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Hafta Sonu</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 137; LEFT: 0px; WIDTH: 42px; POSITION: absolute; TOP: 212px; HEIGHT: 8px"
											align="left" ms_positioning="FlowLayout">Hafta Ýçi</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 139; LEFT: 0px; WIDTH: 70px; POSITION: absolute; TOP: 160px; HEIGHT: 4px"
											align="left" ms_positioning="FlowLayout">Normal Ýstihkak</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 9pt; Z-INDEX: 141; LEFT: 0px; WIDTH: 96px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 120px; HEIGHT: 15px"
											align="left" ms_positioning="FlowLayout">KAZANÇLAR</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; Z-INDEX: 143; LEFT: 0px; WIDTH: 78px; POSITION: absolute; TOP: 136px; HEIGHT: 11px"
											align="left" ms_positioning="FlowLayout">Normal Çalýþma</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 145; LEFT: 0px; WIDTH: 54px; POSITION: absolute; TOP: 148px; HEIGHT: 4px"
											align="left" ms_positioning="FlowLayout">Hafta Tatili</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 9pt; Z-INDEX: 147; LEFT: 100px; WIDTH: 56px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 120px; HEIGHT: 15px"
											align="left" ms_positioning="FlowLayout">GUNLER</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 9pt; Z-INDEX: 149; LEFT: 160px; WIDTH: 64px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 120px; HEIGHT: 15px"
											align="left" ms_positioning="FlowLayout">TUTARLAR</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 9pt; Z-INDEX: 151; LEFT: 228px; WIDTH: 84px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 120px; HEIGHT: 15px"
											align="left" ms_positioning="FlowLayout">KESINTILER</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 9pt; Z-INDEX: 153; LEFT: 344px; WIDTH: 72px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 120px; HEIGHT: 15px"
											align="left" ms_positioning="FlowLayout">TUTARLAR</DIV>
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 136px; HEIGHT: 1px"
											width="98.97%" SIZE="1">
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 9pt; Z-INDEX: 159; LEFT: 0px; WIDTH: 104px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 196px; HEIGHT: 15px"
											align="left" ms_positioning="FlowLayout">FAZLA ÇALIÞMA</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 160; LEFT: 0px; WIDTH: 50px; POSITION: absolute; TOP: 236px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Resmi Tatil</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 111; LEFT: 228px; WIDTH: 68px; POSITION: absolute; TOP: 224px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Damga Matrahý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 156; LEFT: 228px; WIDTH: 68px; POSITION: absolute; TOP: 212px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Kümülatif Vergi</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 130; LEFT: 228px; WIDTH: 100px; POSITION: absolute; TOP: 200px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Kümülatif Vergi Matrahý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 144; LEFT: 228px; WIDTH: 88px; POSITION: absolute; TOP: 184px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Vergiye Tabi Matrah</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 128; LEFT: 228px; WIDTH: 60px; POSITION: absolute; TOP: 172px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Özel Ýndirim</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 152; LEFT: 228px; WIDTH: 88px; POSITION: absolute; TOP: 160px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Gelir Vergisi Matrahý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 126; LEFT: 228px; WIDTH: 72px; POSITION: absolute; TOP: 148px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Sigorta Matrahý</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; Z-INDEX: 142; LEFT: 228px; WIDTH: 68px; POSITION: absolute; TOP: 136px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Sigorta Günü</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 124; LEFT: 228px; WIDTH: 46px; POSITION: absolute; TOP: 236px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">SSK Prim</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 155; LEFT: 228px; WIDTH: 58px; POSITION: absolute; TOP: 248px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Gelir Vergisi</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 122; LEFT: 228px; WIDTH: 68px; POSITION: absolute; TOP: 260px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Damga Vergisi</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 140; LEFT: 228px; WIDTH: 94px; POSITION: absolute; TOP: 272px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Ýþsizlik Sigortasý Primi</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 120; LEFT: 452px; WIDTH: 126px; POSITION: absolute; TOP: 136px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Fazla Çalýþmalar Toplamý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 150; LEFT: 452px; WIDTH: 88px; POSITION: absolute; TOP: 148px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Eklentiler Toplamý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 118; LEFT: 452px; WIDTH: 102px; POSITION: absolute; TOP: 160px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Yasal Kesintiler Toplamý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 138; LEFT: 452px; WIDTH: 102px; POSITION: absolute; TOP: 172px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Diðer Kesintiler Toplamý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 116; LEFT: 452px; WIDTH: 66px; POSITION: absolute; TOP: 184px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Net Ödenecek</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 157; LEFT: 452px; WIDTH: 102px; POSITION: absolute; TOP: 200px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Tüm Kesintiler Toplamý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 114; LEFT: 452px; WIDTH: 68px; POSITION: absolute; TOP: 212px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Kazanç Toplamý</DIV>
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 148px; HEIGHT: 1px"
											width="98.34%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 160px; HEIGHT: 1px"
											width="97.97%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 172px; HEIGHT: 1px"
											width="92.36%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 184px; HEIGHT: 1px"
											width="92.36%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 196px; HEIGHT: 1px"
											width="92.47%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 212px; HEIGHT: 1px"
											width="92.36%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 224px; HEIGHT: 1px"
											width="92.46%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 236px; HEIGHT: 1px"
											width="92.42%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 248px; HEIGHT: 1px"
											width="92.44%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 260px; HEIGHT: 1px"
											width="92.4%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 272px; HEIGHT: 1px"
											width="92.42%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 284px; HEIGHT: 1px"
											width="92.36%" SIZE="1">
										<INPUT class=RIStyle id=Text36 style="FONT-WEIGHT: bold; FONT-SIZE: 10pt; Z-INDEX: 104; LEFT: 32px; WIDTH: 290px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 24px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=43 value='<%# AyAciklama(DataBinder.Eval(Container.DataItem, "AY")) %> - <%# DataBinder.Eval(Container.DataItem, "YIL") %> HESAP PUSULASI'><INPUT class=RIStyle id=Text1 style="Z-INDEX: 183; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 136px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=9 value='<%# DataBinder.Eval(Container.DataItem, "TOPLAMGUN" ,"{0:0}")%>' name=Text1><INPUT class=RIStyle id=Text2 style="Z-INDEX: 184; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 172px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=8 value='<%# DataBinder.Eval(Container.DataItem, "OZELINDIRIM" ,"{0:0.00}")%>' name=Text2><INPUT class=RIStyle id=Text3 style="Z-INDEX: 185; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 184px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=8 value='<%# DataBinder.Eval(Container.DataItem, "VERGIMATRAHI" ,"{0:0.00}")%>' name=Text3><INPUT class=RIStyle id=Text4 style="Z-INDEX: 186; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 200px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=8 value='<%# DataBinder.Eval(Container.DataItem, "KUMULATIFVERGIMATRAHI" ,"{0:0.00}")%>' name=Text3><INPUT class=RIStyle id=Text5 style="Z-INDEX: 187; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 212px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=8 value='<%# DataBinder.Eval(Container.DataItem, "KUMULATIFVERGI" ,"{0:0.00}")%>' name=Text3><INPUT class=RIStyle id=Text6 style="Z-INDEX: 188; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 224px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=8 value='<%# DataBinder.Eval(Container.DataItem, "DAMGAVMATRAHI" ,"{0:0.00}")%>' name=Text3><INPUT class=RIStyle id=Text7 style="Z-INDEX: 189; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 136px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "TOPLAMFAZLACALISMA" ,"{0:0.00}")%>' name=Text1><INPUT class=RIStyle id=Text8 style="Z-INDEX: 190; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 148px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "EKLENTITOP" ,"{0:0.00}")%>' name=Text1><INPUT class=RIStyle id=Text9 style="Z-INDEX: 191; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 160px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "KESINTILERTOPLAMI" ,"{0:0.00}")%>' name=Text1><INPUT class=RIStyle id=Text10 style="Z-INDEX: 192; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 172px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "KESINTITOP" ,"{0:0.00}")%>' name=Text1><INPUT class=RIStyle id=Text11 style="Z-INDEX: 193; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 184px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "TUMGELTOP" ,"{0:0.00}")%>' name=Text1><INPUT class=RIStyle id=Text12 style="Z-INDEX: 194; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 200px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "TUMKESTOP" ,"{0:0.00}")%>' name=Text1><INPUT class=RIStyle id=Text59 style="Z-INDEX: 24; LEFT: 25px; WIDTH: 88px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 292px; HEIGHT: 12px; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=9 value='<%# AyAciklama(DataBinder.Eval(Container.DataItem, "AY")) %>  <%# DataBinder.Eval(Container.DataItem, "YIL") %>'><INPUT class="RIStyle" id="Text60" style="Z-INDEX: 24; LEFT: 120px; WIDTH: 408px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 292px; HEIGHT: 12px; BORDER-BOTTOM-STYLE: solid"
											readOnly type="text" size="62" value="ayýna ait yukarýda müfredatý yazýlý istihkakým yekunundan kesintiler çýktýktan sonra geriye kalan"><INPUT class=RIStyle id=Text61 style="Z-INDEX: 24; LEFT: 528px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 292px; HEIGHT: 12px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "ELEGECEN" ,"{0:0.00}")%>'></DIV>
								</ItemTemplate>
								<AlternatingItemTemplate>
									<DIV class="RIStyle" id="Div2" style="WIDTH: 676px; POSITION: relative; HEIGHT: 350px; BACKGROUND-COLOR: transparent"
										runat="server" ms_positioning="GridLayout">
										<DIV style="DISPLAY: inline; Z-INDEX: 180; LEFT: 0px; WIDTH: 40px; POSITION: absolute; TOP: 64px; HEIGHT: 15px"
											ms_positioning="FlowLayout">Sicil No</DIV>
										<INPUT class=RIStyle id=Text65 style="Z-INDEX: 172; LEFT: 8px; WIDTH: 56px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "SICILNO") %>'><INPUT class=RIStyle id=Text66 style="Z-INDEX: 176; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 136px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "CALISTIGIGUN" ,"{0:0}")%>'><INPUT class=RIStyle id=Text67 style="Z-INDEX: 173; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 148px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "HAFTATATILI" ,"{0:0}")%>'><INPUT class=RIStyle id=Text68 style="Z-INDEX: 174; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 172px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "CALISILMAYANRESMITATIL" ,"{0:0}")%>'><INPUT class=RIStyle id=Text69 style="Z-INDEX: 167; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 184px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "YILLIKIZIN" ,"{0:0}")%>'><INPUT class=RIStyle id=Text70 style="Z-INDEX: 171; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 212px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "FAZLACALISMA" ,"{0:0}")%>'><INPUT class=RIStyle id=Text71 style="Z-INDEX: 169; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 224px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "VAR5" ,"{0:0}")%>'><INPUT class=RIStyle id=Text72 style="Z-INDEX: 163; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 236px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "VAR5" ,"{0:0}")%>'><INPUT class=RIStyle id=Text73 style="Z-INDEX: 175; LEFT: 100px; VERTICAL-ALIGN: sub; WIDTH: 38px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 160px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "TOPLAMGUN" ,"{0:0}")%>'><INPUT class=RIStyle id=Text74 style="Z-INDEX: 166; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 148px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=9 value='<%# DataBinder.Eval(Container.DataItem, "SSKMATRAHI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=Text75 style="Z-INDEX: 168; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 236px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=7 value='<%# DataBinder.Eval(Container.DataItem, "SSKPRIMIISCIPAYI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=Text76 style="Z-INDEX: 170; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 272px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "ISSIZLIKISCIPAYI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=Text77 style="Z-INDEX: 177; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 160px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=8 value='<%# DataBinder.Eval(Container.DataItem, "VERGIMATRAHI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=Text78 style="Z-INDEX: 178; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 248px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=7 value='<%# DataBinder.Eval(Container.DataItem, "GELIRVERGISI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=Text79 style="Z-INDEX: 179; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 260px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=7 value='<%# DataBinder.Eval(Container.DataItem, "DAMGAVERGISI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=Text80 style="Z-INDEX: 162; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 212px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "ELEGECEN" ,"{0:0.00}")%>'>
										<DIV style="DISPLAY: inline; Z-INDEX: 131; LEFT: 64px; WIDTH: 17px; POSITION: absolute; TOP: 64px; HEIGHT: 15px"
											ms_positioning="FlowLayout">Adý</DIV>
										<INPUT class=RIStyle id=Text81 style="Z-INDEX: 146; LEFT: 64px; WIDTH: 92px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=10 value='<%# DataBinder.Eval(Container.DataItem, "AD") %>'><INPUT class=RIStyle id=Text82 style="Z-INDEX: 133; LEFT: 164px; WIDTH: 92px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=10 value='<%# DataBinder.Eval(Container.DataItem, "SOYAD") %>'>
										<DIV style="DISPLAY: inline; Z-INDEX: 154; LEFT: 164px; WIDTH: 40px; POSITION: absolute; TOP: 64px; HEIGHT: 15px"
											ms_positioning="FlowLayout">Soyadý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 135; LEFT: 268px; WIDTH: 68px; POSITION: absolute; TOP: 64px; HEIGHT: 18px"
											ms_positioning="FlowLayout">Ýþe Giriþ Tarihi</DIV>
										<INPUT class=RIStyle id=Text83 style="Z-INDEX: 148; LEFT: 268px; WIDTH: 68px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=6 value='<%# DataBinder.Eval(Container.DataItem, "ISEGIRISTARIHI") %>'><INPUT class=RIStyle id=Text84 style="Z-INDEX: 112; LEFT: 344px; WIDTH: 68px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=6 value='<%# DataBinder.Eval(Container.DataItem, "SSKSICILNO") %>'>
										<DIV style="DISPLAY: inline; Z-INDEX: 113; LEFT: 340px; WIDTH: 78px; POSITION: absolute; TOP: 64px; HEIGHT: 14px"
											ms_positioning="FlowLayout">SSK Sicil No</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 115; LEFT: 428px; WIDTH: 36px; POSITION: absolute; TOP: 64px; HEIGHT: 14px"
											ms_positioning="FlowLayout">Cinsiyet</DIV>
										<INPUT class=RIStyle id=Text85 style="Z-INDEX: 117; LEFT: 428px; WIDTH: 32px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "CINSIYET") %>'>
										<DIV style="DISPLAY: inline; Z-INDEX: 119; LEFT: 472px; WIDTH: 52px; POSITION: absolute; TOP: 64px; HEIGHT: 14px"
											ms_positioning="FlowLayout">Medeni Hal</DIV>
										<INPUT class=RIStyle id=Text86 style="Z-INDEX: 121; LEFT: 480px; WIDTH: 32px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "MEDENIHAL") %>'>
										<DIV style="DISPLAY: inline; Z-INDEX: 123; LEFT: 528px; WIDTH: 56px; POSITION: absolute; TOP: 64px; HEIGHT: 14px"
											ms_positioning="FlowLayout">Çocuk Sayýsý</DIV>
										<INPUT class=RIStyle id=Text87 style="Z-INDEX: 125; LEFT: 536px; WIDTH: 36px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "COCUKSAY") %>'>
										<DIV style="DISPLAY: inline; Z-INDEX: 127; LEFT: 588px; WIDTH: 48px; POSITION: absolute; TOP: 64px; HEIGHT: 14px"
											ms_positioning="FlowLayout">Ücret Nevi</DIV>
										<INPUT class=RIStyle id=Text88 style="Z-INDEX: 129; LEFT: 596px; WIDTH: 36px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 88px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "UCRETNEVI") %>'>
										<HR style="Z-INDEX: 100; LEFT: 8px; WIDTH: 96.65%; POSITION: absolute; TOP: 80px; HEIGHT: 1px"
											width="96.65%" SIZE="1">
										<DIV style="DISPLAY: inline; Z-INDEX: 132; LEFT: 0px; WIDTH: 50px; POSITION: absolute; TOP: 172px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Resmi Tatil</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 134; LEFT: 0px; WIDTH: 42px; POSITION: absolute; TOP: 184px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Yýllýk Ýzin</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 136; LEFT: 0px; WIDTH: 50px; POSITION: absolute; TOP: 224px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Hafta Sonu</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 137; LEFT: 0px; WIDTH: 42px; POSITION: absolute; TOP: 212px; HEIGHT: 8px"
											align="left" ms_positioning="FlowLayout">Hafta Ýçi</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 139; LEFT: 0px; WIDTH: 70px; POSITION: absolute; TOP: 160px; HEIGHT: 4px"
											align="left" ms_positioning="FlowLayout">Normal Ýstihkak</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 9pt; Z-INDEX: 141; LEFT: 0px; WIDTH: 96px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 120px; HEIGHT: 15px"
											align="left" ms_positioning="FlowLayout">KAZANÇLAR</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; Z-INDEX: 143; LEFT: 0px; WIDTH: 78px; POSITION: absolute; TOP: 136px; HEIGHT: 11px"
											align="left" ms_positioning="FlowLayout">Normal Çalýþma</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 145; LEFT: 0px; WIDTH: 54px; POSITION: absolute; TOP: 148px; HEIGHT: 4px"
											align="left" ms_positioning="FlowLayout">Hafta Tatili</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 9pt; Z-INDEX: 147; LEFT: 100px; WIDTH: 56px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 120px; HEIGHT: 15px"
											align="left" ms_positioning="FlowLayout">GUNLER</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 9pt; Z-INDEX: 149; LEFT: 160px; WIDTH: 64px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 120px; HEIGHT: 15px"
											align="left" ms_positioning="FlowLayout">TUTARLAR</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 9pt; Z-INDEX: 151; LEFT: 228px; WIDTH: 84px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 120px; HEIGHT: 15px"
											align="left" ms_positioning="FlowLayout">KESINTILER</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 9pt; Z-INDEX: 153; LEFT: 344px; WIDTH: 72px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 120px; HEIGHT: 15px"
											align="left" ms_positioning="FlowLayout">TUTARLAR</DIV>
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 136px; HEIGHT: 1px"
											width="98.97%" SIZE="1">
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 9pt; Z-INDEX: 159; LEFT: 0px; WIDTH: 104px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 196px; HEIGHT: 15px"
											align="left" ms_positioning="FlowLayout">FAZLA ÇALIÞMA</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 160; LEFT: 0px; WIDTH: 50px; POSITION: absolute; TOP: 236px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Resmi Tatil</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 111; LEFT: 228px; WIDTH: 68px; POSITION: absolute; TOP: 224px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Damga Matrahý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 156; LEFT: 228px; WIDTH: 68px; POSITION: absolute; TOP: 212px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Kümülatif Vergi</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 130; LEFT: 228px; WIDTH: 100px; POSITION: absolute; TOP: 200px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Kümülatif Vergi Matrahý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 144; LEFT: 228px; WIDTH: 88px; POSITION: absolute; TOP: 184px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Vergiye Tabi Matrah</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 128; LEFT: 228px; WIDTH: 60px; POSITION: absolute; TOP: 172px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Özel Ýndirim</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 152; LEFT: 228px; WIDTH: 88px; POSITION: absolute; TOP: 160px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Gelir Vergisi Matrahý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 126; LEFT: 228px; WIDTH: 72px; POSITION: absolute; TOP: 148px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Sigorta Matrahý</DIV>
										<DIV style="DISPLAY: inline; FONT-WEIGHT: bold; Z-INDEX: 142; LEFT: 228px; WIDTH: 68px; POSITION: absolute; TOP: 136px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Sigorta Günü</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 124; LEFT: 228px; WIDTH: 46px; POSITION: absolute; TOP: 236px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">SSK Prim</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 155; LEFT: 228px; WIDTH: 58px; POSITION: absolute; TOP: 248px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Gelir Vergisi</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 122; LEFT: 228px; WIDTH: 68px; POSITION: absolute; TOP: 260px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Damga Vergisi</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 140; LEFT: 228px; WIDTH: 94px; POSITION: absolute; TOP: 272px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Ýþsizlik Sigortasý Primi</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 120; LEFT: 452px; WIDTH: 126px; POSITION: absolute; TOP: 136px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Fazla Çalýþmalar Toplamý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 150; LEFT: 452px; WIDTH: 88px; POSITION: absolute; TOP: 148px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Eklentiler Toplamý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 118; LEFT: 452px; WIDTH: 102px; POSITION: absolute; TOP: 160px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Yasal Kesintiler Toplamý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 138; LEFT: 452px; WIDTH: 102px; POSITION: absolute; TOP: 172px; HEIGHT: 12px"
											align="left" ms_positioning="FlowLayout">Diðer Kesintiler Toplamý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 116; LEFT: 452px; WIDTH: 66px; POSITION: absolute; TOP: 184px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Net Ödenecek</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 157; LEFT: 452px; WIDTH: 102px; POSITION: absolute; TOP: 200px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Tüm Kesintiler Toplamý</DIV>
										<DIV style="DISPLAY: inline; Z-INDEX: 114; LEFT: 452px; WIDTH: 68px; POSITION: absolute; TOP: 212px; HEIGHT: 2px"
											align="left" ms_positioning="FlowLayout">Kazanç Toplamý</DIV>
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 148px; HEIGHT: 1px"
											width="98.34%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 160px; HEIGHT: 1px"
											width="97.97%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 172px; HEIGHT: 1px"
											width="92.36%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 184px; HEIGHT: 1px"
											width="92.36%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 196px; HEIGHT: 1px"
											width="92.47%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 212px; HEIGHT: 1px"
											width="92.36%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 224px; HEIGHT: 1px"
											width="92.46%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 236px; HEIGHT: 1px"
											width="92.42%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 248px; HEIGHT: 1px"
											width="92.44%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 260px; HEIGHT: 1px"
											width="92.4%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 272px; HEIGHT: 1px"
											width="92.42%" SIZE="1">
										<HR style="Z-INDEX: 100; LEFT: 0px; WIDTH: 98%; POSITION: absolute; TOP: 284px; HEIGHT: 1px"
											width="92.36%" SIZE="1">
										<INPUT class=RIStyle id=Text89 style="FONT-WEIGHT: bold; FONT-SIZE: 10pt; Z-INDEX: 104; LEFT: 32px; WIDTH: 290px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 24px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=43 value='<%# AyAciklama(DataBinder.Eval(Container.DataItem, "AY")) %> - <%# DataBinder.Eval(Container.DataItem, "YIL") %> HESAP PUSULASI'><INPUT class=RIStyle id=Text90 style="Z-INDEX: 183; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 136px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=9 value='<%# DataBinder.Eval(Container.DataItem, "TOPLAMGUN" ,"{0:0}")%>' name=Text1><INPUT class=RIStyle id=Text91 style="Z-INDEX: 184; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 172px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=8 value='<%# DataBinder.Eval(Container.DataItem, "OZELINDIRIM" ,"{0:0.00}")%>' name=Text2><INPUT class=RIStyle id=Text92 style="Z-INDEX: 185; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 184px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=8 value='<%# DataBinder.Eval(Container.DataItem, "VERGIMATRAHI" ,"{0:0.00}")%>' name=Text3><INPUT class=RIStyle id=Text93 style="Z-INDEX: 186; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 200px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=8 value='<%# DataBinder.Eval(Container.DataItem, "KUMULATIFVERGIMATRAHI" ,"{0:0.00}")%>' name=Text3><INPUT class=RIStyle id=Text94 style="Z-INDEX: 187; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 212px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=8 value='<%# DataBinder.Eval(Container.DataItem, "KUMULATIFVERGI" ,"{0:0.00}")%>' name=Text3><INPUT class=RIStyle id=Text95 style="Z-INDEX: 188; LEFT: 340px; VERTICAL-ALIGN: sub; WIDTH: 78px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 224px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=8 value='<%# DataBinder.Eval(Container.DataItem, "DAMGAVMATRAHI" ,"{0:0.00}")%>' name=Text3><INPUT class=RIStyle id=Text96 style="Z-INDEX: 189; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 136px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "TOPLAMFAZLACALISMA" ,"{0:0.00}")%>' name=Text1><INPUT class=RIStyle id=Text97 style="Z-INDEX: 190; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 148px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "EKLENTITOP" ,"{0:0.00}")%>' name=Text1><INPUT class=RIStyle id=Text98 style="Z-INDEX: 191; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 160px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "KESINTILERTOPLAMI" ,"{0:0.00}")%>' name=Text1><INPUT class=RIStyle id=Text99 style="Z-INDEX: 192; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 172px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "KESINTITOP" ,"{0:0.00}")%>' name=Text1><INPUT class=RIStyle id=Text100 style="Z-INDEX: 193; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 184px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "TUMGELTOP" ,"{0:0.00}")%>' name=Text1><INPUT class=RIStyle id=Text101 style="Z-INDEX: 194; LEFT: 576px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 200px; HEIGHT: 12px; BACKGROUND-COLOR: transparent; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "TUMKESTOP" ,"{0:0.00}")%>' name=Text1><INPUT class=RIStyle id=Text102 style="Z-INDEX: 24; LEFT: 25px; WIDTH: 88px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 292px; HEIGHT: 12px; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=9 value='<%# AyAciklama(DataBinder.Eval(Container.DataItem, "AY")) %>  <%# DataBinder.Eval(Container.DataItem, "YIL") %>'><INPUT class="RIStyle" id="Text103" style="Z-INDEX: 24; LEFT: 120px; WIDTH: 408px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 292px; HEIGHT: 12px; BORDER-BOTTOM-STYLE: solid"
											readOnly type="text" size="62" value="ayýna ait yukarýda müfredatý yazýlý istihkakým yekunundan kesintiler çýktýktan sonra geriye kalan"><INPUT class=RIStyle id=Text104 style="Z-INDEX: 24; LEFT: 528px; VERTICAL-ALIGN: sub; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 292px; HEIGHT: 12px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "ELEGECEN" ,"{0:0.00}")%>'></DIV>
								</AlternatingItemTemplate>
							</asp:DataList></TD>
					</TR>
					<TR>
						<TD id="endofpage" runat="server">
							<DIV class="RIStyle" id="Div29" style="POSITION: relative" runat="server" ms_positioning="GridLayout"></DIV>
						</TD>
					</TR>
				</TABLE>
			</asp:panel></form>
	</body>
</HTML>
