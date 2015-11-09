<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RpSskViziteIsci.aspx.vb" Inherits="ASPNetPortal.RpSskViziteIsci"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
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
				<TABLE id="Table3" style="WIDTH: 712px" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD align="left">
							<DIV id="DIV1" style="Z-INDEX: 100; LEFT: 0px; WIDTH: 650px; POSITION: relative; TOP: 8px; HEIGHT: 536px"
								runat="server" ms_positioning="GridLayout" DESIGNTIMEDRAGDROP="956">
								<DIV style="FONT-SIZE: 10pt; Z-INDEX: 102; LEFT: 200px; WIDTH: 240px; POSITION: absolute; TOP: 0px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">SOSYAL SÝGORTALAR KURUMU</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 103; LEFT: 608px; WIDTH: 30px; POSITION: absolute; TOP: 16px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">EK-4</DIV>
								<DIV style="FONT-SIZE: 12pt; Z-INDEX: 104; LEFT: 248px; WIDTH: 136px; POSITION: absolute; TOP: 16px; HEIGHT: 19px"
									align="left" ms_positioning="FlowLayout">VÝZÝTE KAÐIDI</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 105; LEFT: 264px; WIDTH: 80px; POSITION: absolute; TOP: 32px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Sigortalýya Ait</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 106; LEFT: 416px; WIDTH: 136px; POSITION: absolute; TOP: 40px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Belgenin Düzenlendiði Tarih:</DIV>
								<DIV id="lblDTarihi" style="FONT-SIZE: 8pt; Z-INDEX: 107; LEFT: 552px; WIDTH: 88px; POSITION: absolute; TOP: 40px; HEIGHT: 4px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; Z-INDEX: 109; LEFT: 280px; WIDTH: 100px; POSITION: absolute; TOP: 56px; HEIGHT: 12px"
									align="left" ms_positioning="FlowLayout">A- SÝGORTALININ</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 110; LEFT: 8px; WIDTH: 148px; POSITION: absolute; TOP: 168px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Uyruðu(Yabancý ise Ülke Adý)</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 111; LEFT: 8px; WIDTH: 80px; POSITION: absolute; TOP: 150px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Cinsiyeti:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 112; LEFT: 8px; WIDTH: 80px; POSITION: absolute; TOP: 130px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Baba Adý:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 113; LEFT: 8px; WIDTH: 80px; POSITION: absolute; TOP: 112px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Adý ve Soyadý:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 114; LEFT: 8px; WIDTH: 80px; POSITION: absolute; TOP: 96px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Sigorta Sicil No:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 115; LEFT: 8px; WIDTH: 80px; POSITION: absolute; TOP: 72px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">T. C. Kimlik No:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 116; LEFT: 8px; WIDTH: 156px; POSITION: absolute; TOP: 296px; HEIGHT: 28px"
									align="left" ms_positioning="FlowLayout">Son Bir Yýl Ýçindeki Toplam Ücretli 
									Ýzin Gün Sayýsý</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 117; LEFT: 8px; WIDTH: 156px; POSITION: absolute; TOP: 264px; HEIGHT: 28px"
									align="left" ms_positioning="FlowLayout">Viziteye Çýkmak Ýçin Ýþyerinden 
									Ayrýldýðý Tarih ve Saat</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 118; LEFT: 8px; WIDTH: 136px; POSITION: absolute; TOP: 248px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Ýstihdam Durumu:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 119; LEFT: 8px; WIDTH: 136px; POSITION: absolute; TOP: 224px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Ýþe Giriþ Tarihi:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 120; LEFT: 8px; WIDTH: 96px; POSITION: absolute; TOP: 208px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Öðrenim Durumu:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 121; LEFT: 8px; WIDTH: 152px; POSITION: absolute; TOP: 192px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Doðum Yeri/Doðum Tarihi:</DIV>
								<DIV id="lblMernisNo" style="FONT-SIZE: 8pt; Z-INDEX: 122; LEFT: 176px; WIDTH: 132px; POSITION: absolute; TOP: 75px; HEIGHT: 14px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblSSKNo" style="FONT-SIZE: 8pt; Z-INDEX: 123; LEFT: 176px; WIDTH: 132px; POSITION: absolute; TOP: 96px; HEIGHT: 14px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblAdSoyad" style="FONT-SIZE: 8pt; Z-INDEX: 124; LEFT: 176px; WIDTH: 132px; POSITION: absolute; TOP: 115px; HEIGHT: 14px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblBabaAdi" style="FONT-SIZE: 8pt; Z-INDEX: 125; LEFT: 176px; WIDTH: 130px; POSITION: absolute; TOP: 130px; HEIGHT: 14px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblUyruk" style="FONT-SIZE: 8pt; Z-INDEX: 126; LEFT: 288px; WIDTH: 88px; POSITION: absolute; TOP: 168px; HEIGHT: 4px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblDogumTar" style="FONT-SIZE: 8pt; Z-INDEX: 127; LEFT: 384px; WIDTH: 88px; POSITION: absolute; TOP: 192px; HEIGHT: 4px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblIZINKULLANILANGUNS" style="FONT-SIZE: 8pt; Z-INDEX: 128; LEFT: 176px; WIDTH: 88px; POSITION: absolute; TOP: 296px; HEIGHT: 4px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="Div19" style="FONT-SIZE: 8pt; Z-INDEX: 129; LEFT: 216px; WIDTH: 88px; POSITION: absolute; TOP: 272px; HEIGHT: 4px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblIseGirisTarihi" style="FONT-SIZE: 8pt; Z-INDEX: 130; LEFT: 176px; WIDTH: 88px; POSITION: absolute; TOP: 228px; HEIGHT: 4px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblDgumYeri" style="FONT-SIZE: 8pt; Z-INDEX: 131; LEFT: 176px; WIDTH: 88px; POSITION: absolute; TOP: 192px; HEIGHT: 4px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 132; LEFT: 176px; WIDTH: 32px; POSITION: absolute; TOP: 150px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Erkek:</DIV>
								<INPUT id="chkErkek" style="Z-INDEX: 133; LEFT: 208px; POSITION: absolute; TOP: 150px; BACKGROUND-COLOR: transparent"
									disabled type="checkbox" name="Checkbox2" runat="server"><INPUT id="ChkKadin" style="Z-INDEX: 134; LEFT: 272px; POSITION: absolute; TOP: 150px"
									disabled type="checkbox" name="Checkbox1" runat="server">
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 135; LEFT: 240px; WIDTH: 32px; POSITION: absolute; TOP: 150px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Kadýn:</DIV>
								<INPUT id="chkIlkOkul" style="Z-INDEX: 136; LEFT: 220px; POSITION: absolute; TOP: 208px"
									disabled type="checkbox" name="Checkbox1" runat="server">
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 137; LEFT: 176px; WIDTH: 32px; POSITION: absolute; TOP: 208px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Ýlk:</DIV>
								<INPUT id="chkOrtaOkul" style="Z-INDEX: 138; LEFT: 296px; POSITION: absolute; TOP: 208px"
									disabled type="checkbox" name="Checkbox2" runat="server">
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 139; LEFT: 248px; WIDTH: 32px; POSITION: absolute; TOP: 208px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Orta:</DIV>
								<INPUT id="chkLise" style="Z-INDEX: 140; LEFT: 360px; POSITION: absolute; TOP: 208px" disabled
									type="checkbox" name="Checkbox3" runat="server">
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 141; LEFT: 328px; WIDTH: 32px; POSITION: absolute; TOP: 208px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Lise:</DIV>
								<INPUT id="chkYuksekOkul" style="Z-INDEX: 142; LEFT: 448px; POSITION: absolute; TOP: 208px"
									disabled type="checkbox" name="Checkbox4" runat="server">
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 143; LEFT: 384px; WIDTH: 64px; POSITION: absolute; TOP: 208px; HEIGHT: 12px"
									align="left" ms_positioning="FlowLayout">Yüksek Okul:</DIV>
								<INPUT id="chkOkurYazar" style="Z-INDEX: 144; LEFT: 536px; POSITION: absolute; TOP: 208px"
									disabled type="checkbox" name="Checkbox5" runat="server">
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 145; LEFT: 472px; WIDTH: 60px; POSITION: absolute; TOP: 208px; HEIGHT: 12px"
									align="left" ms_positioning="FlowLayout">Okur Yazar:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 146; LEFT: 560px; WIDTH: 32px; POSITION: absolute; TOP: 208px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Diðer:</DIV>
								<DIV id="lblOkulDiger" style="FONT-SIZE: 8pt; Z-INDEX: 147; LEFT: 592px; WIDTH: 48px; POSITION: absolute; TOP: 208px; HEIGHT: 14px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<INPUT id="chkTC" style="Z-INDEX: 148; LEFT: 208px; POSITION: absolute; TOP: 168px" disabled
									type="checkbox" name="Checkbox1" runat="server">
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 149; LEFT: 176px; WIDTH: 32px; POSITION: absolute; TOP: 168px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">T.C:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 150; LEFT: 240px; WIDTH: 48px; POSITION: absolute; TOP: 168px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Ülke Adý:</DIV>
								<INPUT style="Z-INDEX: 151; LEFT: 220px; POSITION: absolute; TOP: 248px" disabled type="checkbox">
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 152; LEFT: 176px; WIDTH: 32px; POSITION: absolute; TOP: 248px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Devamlý:</DIV>
								<INPUT style="Z-INDEX: 153; LEFT: 296px; POSITION: absolute; TOP: 248px" disabled type="checkbox">
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 154; LEFT: 248px; WIDTH: 32px; POSITION: absolute; TOP: 248px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Mevsimlik:</DIV>
								<INPUT style="Z-INDEX: 155; LEFT: 360px; POSITION: absolute; TOP: 248px" disabled type="checkbox">
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 156; LEFT: 328px; WIDTH: 32px; POSITION: absolute; TOP: 248px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Geçici:</DIV>
								<INPUT style="Z-INDEX: 157; LEFT: 448px; POSITION: absolute; TOP: 248px" disabled type="checkbox">
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 158; LEFT: 384px; WIDTH: 64px; POSITION: absolute; TOP: 248px; HEIGHT: 12px"
									align="left" ms_positioning="FlowLayout">Full-Time:</DIV>
								<INPUT style="Z-INDEX: 159; LEFT: 536px; POSITION: absolute; TOP: 248px" disabled type="checkbox">
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 160; LEFT: 472px; WIDTH: 60px; POSITION: absolute; TOP: 248px; HEIGHT: 12px"
									align="left" ms_positioning="FlowLayout">Part-Time:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 161; LEFT: 560px; WIDTH: 32px; POSITION: absolute; TOP: 248px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Diðer:</DIV>
								<DIV id="Div16" style="FONT-SIZE: 8pt; Z-INDEX: 162; LEFT: 592px; WIDTH: 48px; POSITION: absolute; TOP: 248px; HEIGHT: 14px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 163; LEFT: 176px; WIDTH: 32px; POSITION: absolute; TOP: 272px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Tarih:</DIV>
								<DIV id="Div20" style="FONT-SIZE: 8pt; Z-INDEX: 164; LEFT: 368px; WIDTH: 88px; POSITION: absolute; TOP: 272px; HEIGHT: 4px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 165; LEFT: 328px; WIDTH: 32px; POSITION: absolute; TOP: 272px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Saat:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 166; LEFT: 392px; WIDTH: 88px; POSITION: absolute; TOP: 80px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Ýkametgah Adresi:</DIV>
								<DIV id="lblAdres" style="FONT-SIZE: 8pt; Z-INDEX: 167; LEFT: 392px; WIDTH: 248px; POSITION: absolute; TOP: 96px; HEIGHT: 52px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 168; LEFT: 552px; WIDTH: 60px; POSITION: absolute; TOP: 152px; HEIGHT: 12px"
									align="left" ms_positioning="FlowLayout">Posta Kodu:</DIV>
								<DIV id="lblPostaKod" style="FONT-SIZE: 8pt; Z-INDEX: 169; LEFT: 608px; WIDTH: 24px; POSITION: absolute; TOP: 152px; HEIGHT: 14px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 170; LEFT: 376px; WIDTH: 36px; POSITION: absolute; TOP: 168px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Ev Tel:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 171; LEFT: 504px; WIDTH: 44px; POSITION: absolute; TOP: 168px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Cep Tel:</DIV>
								<DIV id="lblTelKod2" style="FONT-SIZE: 8pt; Z-INDEX: 172; LEFT: 552px; WIDTH: 29px; POSITION: absolute; TOP: 168px; HEIGHT: 14px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblTelKod1" style="FONT-SIZE: 8pt; Z-INDEX: 173; LEFT: 416px; WIDTH: 28px; POSITION: absolute; TOP: 168px; HEIGHT: 14px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblTel2" style="FONT-SIZE: 8pt; Z-INDEX: 174; LEFT: 584px; WIDTH: 52px; POSITION: absolute; TOP: 168px; HEIGHT: 14px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblTel1" style="FONT-SIZE: 8pt; Z-INDEX: 175; LEFT: 448px; WIDTH: 52px; POSITION: absolute; TOP: 168px; HEIGHT: 14px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; Z-INDEX: 176; LEFT: 292px; WIDTH: 100px; POSITION: absolute; TOP: 328px; HEIGHT: 13px"
									align="left" ms_positioning="FlowLayout">B- ÝÞ KAZASININ</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 177; LEFT: 8px; WIDTH: 156px; POSITION: absolute; TOP: 448px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Olduðu Günkü Ýþbaþý Saati</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 178; LEFT: 8px; WIDTH: 156px; POSITION: absolute; TOP: 432px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">OlduðuTarih ve Saat:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 179; LEFT: 8px; WIDTH: 136px; POSITION: absolute; TOP: 416px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Meydana Geldiði Yer:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 180; LEFT: 8px; WIDTH: 136px; POSITION: absolute; TOP: 392px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Oluþ Þekli:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 181; LEFT: 8px; WIDTH: 200px; POSITION: absolute; TOP: 360px; HEIGHT: 30px"
									align="left" ms_positioning="FlowLayout">Olduðu Sýrada
									<BR>
									Sigortalýnýn Yaptýðý Ýþ ve Bu Ýþin Mahiyeti:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 182; LEFT: 8px; WIDTH: 204px; POSITION: absolute; TOP: 344px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Olduðu Tarihte Çalýþam Toplam Ýþçi 
									Sayýsý:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 183; LEFT: 8px; WIDTH: 220px; POSITION: absolute; TOP: 472px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Olduðunu Gören Tanýklarýn Adlarý ve 
									Soyadlarý:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 184; LEFT: 8px; WIDTH: 220px; POSITION: absolute; TOP: 488px; HEIGHT: 38px"
									align="left" ms_positioning="FlowLayout">Prim Ödeme Halinin Sona Erip 
									Ermediðini 'Sona Erdi' veya 'Sona Ermedi' Þeklinde ve El Yazýnýz ile Yandaki 
									Haneye Yazýnýz</DIV>
								<DIV style="DISPLAY: inline; FONT-SIZE: 1pt; Z-INDEX: 185; LEFT: 168px; BORDER-LEFT: 1px dotted; WIDTH: 2px; POSITION: absolute; TOP: 72px; HEIGHT: 250px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="DISPLAY: inline; FONT-SIZE: 1pt; Z-INDEX: 186; LEFT: 376px; BORDER-LEFT: 1px dotted; WIDTH: 2px; POSITION: absolute; TOP: 72px; HEIGHT: 128px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 187; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 635px; POSITION: absolute; TOP: 72px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV id="DIV4" style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; Z-INDEX: 101; LEFT: 0px; BORDER-LEFT: 1px solid; WIDTH: 640px; BORDER-BOTTOM: 1px solid; POSITION: absolute; TOP: 56px; HEIGHT: 270px"
									runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 188; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 376px; POSITION: absolute; TOP: 88px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 189; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 635px; POSITION: absolute; TOP: 224px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 190; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 635px; POSITION: absolute; TOP: 204px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 191; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 635px; POSITION: absolute; TOP: 184px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 192; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 376px; POSITION: absolute; TOP: 164px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 193; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 376px; POSITION: absolute; TOP: 144px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 194; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 376px; POSITION: absolute; TOP: 128px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 195; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 376px; POSITION: absolute; TOP: 112px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 196; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 635px; POSITION: absolute; TOP: 288px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 197; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 635px; POSITION: absolute; TOP: 264px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 198; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 635px; POSITION: absolute; TOP: 240px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV id="Div5" style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; Z-INDEX: 100; LEFT: 0px; BORDER-LEFT: 1px solid; WIDTH: 640px; BORDER-BOTTOM: 1px solid; POSITION: absolute; TOP: 328px; HEIGHT: 206px"
									runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 199; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 632px; POSITION: absolute; TOP: 408px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 200; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 632px; POSITION: absolute; TOP: 392px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 201; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 632px; POSITION: absolute; TOP: 360px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 202; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 632px; POSITION: absolute; TOP: 344px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 203; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 632px; POSITION: absolute; TOP: 480px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 204; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 632px; POSITION: absolute; TOP: 464px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 205; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 632px; POSITION: absolute; TOP: 448px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 206; LEFT: 4px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 632px; POSITION: absolute; TOP: 424px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="DISPLAY: inline; FONT-SIZE: 1pt; Z-INDEX: 207; LEFT: 228px; BORDER-LEFT: 1px dotted; WIDTH: 2px; POSITION: absolute; TOP: 344px; HEIGHT: 190px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="DISPLAY: inline; FONT-SIZE: 1pt; Z-INDEX: 208; LEFT: 488px; BORDER-LEFT: 1px dotted; WIDTH: 2px; POSITION: absolute; TOP: 488px; HEIGHT: 48px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 209; LEFT: 496px; WIDTH: 80px; POSITION: absolute; TOP: 496px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Sona Erdi Ýse:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 210; LEFT: 496px; WIDTH: 80px; POSITION: absolute; TOP: 512px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Erdiði Tarih:</DIV>
							</DIV>
							<BR>
							<asp:DataList id="DataGrid1" runat="server" Width="568px" BorderStyle="Solid" BorderWidth="1px"
								BorderColor="#404040">
								<HeaderTemplate>
									<DIV class="RIStyle" id="DIV2" style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black; WIDTH: 640px; POSITION: relative; HEIGHT: 48px"
										align="center" runat="server" ms_positioning="GridLayout">
										<DIV class="RIStyle" id="ad" style="Z-INDEX: 100; LEFT: 12px; WIDTH: 34px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 28px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Yýl</DIV>
										<DIV class="RIStyle" id="sskno" style="Z-INDEX: 105; LEFT: 49px; WIDTH: 56px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 28px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Ay</DIV>
										<DIV class="RIStyle" id="TcKimNo" style="Z-INDEX: 104; LEFT: 113px; WIDTH: 39px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 20px; HEIGHT: 23px; BORDER-BOTTOM-STYLE: solid"
											align="center">Prim Öd Gün Sy.</DIV>
										<DIV class="RIStyle" id="YilIzn" style="Z-INDEX: 101; LEFT: 432px; WIDTH: 89px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 20px; HEIGHT: 23px; BORDER-BOTTOM-STYLE: solid"
											align="center">Prim veya Ýkramiye Gibi Ek Ödemeler</DIV>
										<DIV class="RIStyle" id="Brut" style="Z-INDEX: 107; LEFT: 520px; WIDTH: 115px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 8px; HEIGHT: 35px; BORDER-BOTTOM-STYLE: solid"
											align="center">Brüt ÜcretÝþv. veya Mahk. Öd.Karar Ver.Ücr.Prim ve 
											&nbsp;Ýkramiyeler
										</DIV>
										<DIV style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; Z-INDEX: 108; LEFT: 232px; WIDTH: 224px; POSITION: absolute; TOP: 0px; HEIGHT: 14px"
											align="left" ms_positioning="FlowLayout">C-SÝGORTALININ PRÝM ÖDEME GÜN SAYISI</DIV>
										<DIV class="RIStyle" id="Div25" style="Z-INDEX: 109; LEFT: 160px; WIDTH: 56px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 28px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Rakamla</DIV>
										<DIV class="RIStyle" id="Div31" style="Z-INDEX: 110; LEFT: 256px; WIDTH: 77px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 28px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Yazýyla</DIV>
									</DIV>
								</HeaderTemplate>
								<FooterTemplate>
									<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 608px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
										ms_positioning="FlowLayout"></DIV>
									<BR>
									<BR>
								</FooterTemplate>
								<ItemTemplate>
									<DIV class="RIStyle" id="Div3" style="WIDTH: 600px; POSITION: relative; HEIGHT: 22px"
										runat="server" ms_positioning="GridLayout"><INPUT class=RIStyle id=ad style="LEFT: 16px; WIDTH: 40px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 4px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "YIL") %>'><INPUT class=RIStyle id=Text5 style="Z-INDEX: 102; LEFT: 228px; WIDTH: 226px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 4px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=32 value='<%# xparacevir(DataBinder.Eval(Container.DataItem, "SSKMATRAHI"))%>' name=Text5>
										<DIV style="DISPLAY: inline; FONT-SIZE: 1pt; Z-INDEX: 208; LEFT: 164px; BORDER-LEFT: 1px dotted; WIDTH: 2px; POSITION: absolute; TOP: 4px; HEIGHT: 14px"
											ms_positioning="FlowLayout"></DIV>
										<DIV style="DISPLAY: inline; FONT-SIZE: 1pt; Z-INDEX: 208; LEFT: 112px; BORDER-LEFT: 1px dotted; WIDTH: 2px; POSITION: absolute; TOP: 4px; HEIGHT: 14px"
											ms_positioning="FlowLayout"></DIV>
										<INPUT class=RIStyle id=ay style="Z-INDEX: 69; LEFT: 64px; WIDTH: 50px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 4px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=3 value='<%# ayaciklama(DataBinder.Eval(Container.DataItem, "AY")) %>'><INPUT class=RIStyle id=TcKimNo style="Z-INDEX: 69; LEFT: 120px; WIDTH: 34px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 4px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "TOPLAMGUN","{0:0}") %>'><INPUT class=RIStyle id=NorGun style="Z-INDEX: 69; LEFT: 176px; WIDTH: 46px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 4px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "SSKMATRAHI" ,"{0:0.00}")%>'>
										<DIV style="DISPLAY: inline; FONT-SIZE: 1pt; Z-INDEX: 208; LEFT: 56px; BORDER-LEFT: 1px dotted; WIDTH: 2px; POSITION: absolute; TOP: 4px; HEIGHT: 14px"
											ms_positioning="FlowLayout"></DIV>
										<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 203; LEFT: 0px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 592px; POSITION: absolute; TOP: 0px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
											ms_positioning="FlowLayout"></DIV>
										<DIV style="DISPLAY: inline; FONT-SIZE: 1pt; Z-INDEX: 209; LEFT: 228px; BORDER-LEFT: 1px dotted; WIDTH: 2px; POSITION: absolute; TOP: 4px; HEIGHT: 14px"
											ms_positioning="FlowLayout"></DIV>
										<DIV style="DISPLAY: inline; FONT-SIZE: 1pt; Z-INDEX: 210; LEFT: 460px; BORDER-LEFT: 1px dotted; WIDTH: 2px; POSITION: absolute; TOP: 4px; HEIGHT: 14px"
											ms_positioning="FlowLayout"></DIV>
										<DIV style="DISPLAY: inline; FONT-SIZE: 1pt; Z-INDEX: 102; LEFT: 544px; BORDER-LEFT: 1px dotted; WIDTH: 2px; POSITION: absolute; TOP: 4px; HEIGHT: 14px"
											ms_positioning="FlowLayout"></DIV>
									</DIV>
								</ItemTemplate>
							</asp:DataList></TD>
					</TR>
					<TR>
						<TD id="endofpage" runat="server">
							<DIV class="RIStyle" id="Div29" style="Z-INDEX: 101; LEFT: 0px; WIDTH: 656px; POSITION: relative; TOP: 0px; HEIGHT: 194px"
								align="left" runat="server" ms_positioning="GridLayout">
								<DIV id="Div8" style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; Z-INDEX: 100; LEFT: 0px; BORDER-LEFT: 1px solid; WIDTH: 648px; BORDER-BOTTOM: 1px solid; POSITION: absolute; TOP: 4px; HEIGHT: 186px"
									runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; Z-INDEX: 101; LEFT: 240px; WIDTH: 176px; POSITION: absolute; TOP: 8px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">D- BEYAN VE TAAHHÜTLER</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 102; LEFT: 0px; WIDTH: 220px; POSITION: absolute; TOP: 28px; HEIGHT: 12px"
									align="left" ms_positioning="FlowLayout">Ýþverenin Adý - Soyadý / Ünvaný</DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 103; LEFT: 0px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 648px; POSITION: absolute; TOP: 24px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV id="lblIsyeriUnvan" style="FONT-SIZE: 8pt; Z-INDEX: 104; LEFT: 0px; WIDTH: 272px; POSITION: absolute; TOP: 52px; HEIGHT: 30px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 105; LEFT: 8px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 264px; POSITION: absolute; TOP: 44px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 107; LEFT: 0px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 648px; POSITION: absolute; TOP: 88px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<TABLE id="Table1" style="FONT-SIZE: 8px; Z-INDEX: 108; LEFT: 280px; WIDTH: 363px; POSITION: absolute; TOP: 28px; HEIGHT: 60px"
									borderColor="#000000" cellSpacing="0" cellPadding="0" width="363" align="center" border="1">
									<TR>
										<TD noWrap align="center" colSpan="15">ÝÞYERÝ SÝCÝL NO</TD>
									</TR>
									<TR>
										<TD style="WIDTH: 17px; HEIGHT: 6px" noWrap align="center">M</TD>
										<TD style="WIDTH: 36px" noWrap align="center">ÝÞ KOLU<BR>
											KODU</TD>
										<TD style="WIDTH: 54px; HEIGHT: 6px" noWrap align="center" colSpan="2">ÜNÝTE KODU<BR>
											YENI&nbsp;&nbsp;&nbsp; ESKÝ</TD>
										<TD style="WIDTH: 55px; HEIGHT: 6px" noWrap align="center">ÝÞYERÝ&nbsp; SIRA 
											NUMARASI</TD>
										<TD style="WIDTH: 52px; HEIGHT: 6px" noWrap align="center" colSpan="3">Ýl
											<BR>
											KODU</TD>
										<TD style="WIDTH: 37px; HEIGHT: 6px" noWrap align="center" colSpan="2">ÝLÇE
											<BR>
											KODU</TD>
										<TD style="WIDTH: 36px; HEIGHT: 6px" noWrap align="center" colSpan="2">KONTROL</TD>
										<TD style="HEIGHT: 6px" noWrap align="center" colSpan="3">ARACI KODU</TD>
									</TR>
									<TR>
										<TD id="lblSNoM" style="WIDTH: 17px" noWrap align="center" runat="server"></TD>
										<TD id="lblSNoIsKoluKodu" style="WIDTH: 36px" noWrap align="center" runat="server"></TD>
										<TD id="lblSNoUnKoEs" style="WIDTH: 3px" noWrap align="center" runat="server"></TD>
										<TD id="lblSNoUnKoYen" style="WIDTH: 2px" noWrap align="center" runat="server"></TD>
										<TD id="lblSNoSiraNo" style="WIDTH: 55px" noWrap align="center" runat="server"></TD>
										<TD id="lblIlKod1" style="WIDTH: 14px" noWrap align="center" runat="server"></TD>
										<TD id="lblIlKod2" style="WIDTH: 19px" noWrap align="center" runat="server"></TD>
										<TD id="lblIlKod3" style="WIDTH: 15px" noWrap align="center" runat="server"></TD>
										<TD id="lblIlceKod1" style="WIDTH: 15px" noWrap align="center" runat="server"></TD>
										<TD id="lblIlceKod2" style="WIDTH: 14px" noWrap align="center" runat="server"></TD>
										<TD id="lblKontrolKod1" style="WIDTH: 17px" noWrap align="center" runat="server"></TD>
										<TD id="lblKontrolKod2" style="WIDTH: 17px" noWrap align="center" runat="server"></TD>
										<TD noWrap align="center">&nbsp;</TD>
										<TD noWrap align="center">&nbsp;</TD>
										<TD noWrap align="center">&nbsp;</TD>
									</TR>
								</TABLE>
								<DIV style="DISPLAY: inline; FONT-SIZE: 1pt; Z-INDEX: 109; LEFT: 120px; BORDER-LEFT: 1px dotted; WIDTH: 2px; POSITION: absolute; TOP: 92px; HEIGHT: 40px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="BORDER-TOP: 1px dotted; DISPLAY: inline; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 1px; Z-INDEX: 110; LEFT: 8px; BORDER-BOTTOM-WIDTH: 1px; WIDTH: 632px; POSITION: absolute; TOP: 136px; HEIGHT: 3px; BORDER-RIGHT-WIDTH: 1px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 111; LEFT: 8px; WIDTH: 96px; POSITION: absolute; TOP: 96px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Ýþverenin Adresi:</DIV>
								<DIV id="Div10" style="FONT-SIZE: 8pt; Z-INDEX: 112; LEFT: 128px; WIDTH: 512px; POSITION: absolute; TOP: 92px; HEIGHT: 26px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 113; LEFT: 132px; WIDTH: 32px; POSITION: absolute; TOP: 120px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Semt:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 114; LEFT: 256px; WIDTH: 24px; POSITION: absolute; TOP: 120px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Ýlçe:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 115; LEFT: 384px; WIDTH: 28px; POSITION: absolute; TOP: 120px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Þehir:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 116; LEFT: 504px; WIDTH: 64px; POSITION: absolute; TOP: 120px; HEIGHT: 12px"
									align="left" ms_positioning="FlowLayout">Posta Kodu:</DIV>
								<DIV id="lblSemt" style="FONT-SIZE: 8pt; Z-INDEX: 117; LEFT: 164px; WIDTH: 72px; POSITION: absolute; TOP: 120px; HEIGHT: 14px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblIlce" style="FONT-SIZE: 8pt; Z-INDEX: 118; LEFT: 280px; WIDTH: 72px; POSITION: absolute; TOP: 120px; HEIGHT: 14px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblSehir" style="FONT-SIZE: 8pt; Z-INDEX: 119; LEFT: 412px; WIDTH: 72px; POSITION: absolute; TOP: 120px; HEIGHT: 14px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="lblPostakodu" style="FONT-SIZE: 8pt; Z-INDEX: 120; LEFT: 568px; WIDTH: 72px; POSITION: absolute; TOP: 120px; HEIGHT: 14px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV style="DISPLAY: inline; FONT-SIZE: 1pt; Z-INDEX: 121; LEFT: 392px; BORDER-LEFT: 1px dotted; WIDTH: 2px; POSITION: absolute; TOP: 140px; HEIGHT: 50px"
									ms_positioning="FlowLayout"></DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 123; LEFT: 28px; WIDTH: 312px; POSITION: absolute; TOP: 140px; HEIGHT: 26px"
									align="left" ms_positioning="FlowLayout">Yukarýdaki belgenin yanlýþ olmasý 
									sebebiyle, sigortalýya kurumca yersiz olarak yapýlan her türlü masrafý ödemeyi 
									kabul ederim.</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 124; LEFT: 112px; WIDTH: 32px; POSITION: absolute; TOP: 168px; HEIGHT: 14px"
									align="left" ms_positioning="FlowLayout">Tarih:</DIV>
								<DIV style="FONT-SIZE: 8pt; Z-INDEX: 125; LEFT: 432px; WIDTH: 196px; POSITION: absolute; TOP: 152px; HEIGHT: 28px"
									align="left" ms_positioning="FlowLayout">Ýþveren veya Vekilin Adý - Soyadý 
									Ýmzasý, Mühür veya Kaþesi</DIV>
							</DIV>
						</TD>
					</TR>
				</TABLE>
			</asp:panel></form>
	</body>
</HTML>
