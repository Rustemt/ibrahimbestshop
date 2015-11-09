<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" >
	<xsl:output method="xml" indent="yes" xmlns:xalan="http://xml.apache.org/xslt" xalan:indent-amount="4" encoding="UTF-8" />
	<xsl:template match="root">
		<root>
			<xsl:apply-templates select="urun" />
		</root>
	</xsl:template>
	<xsl:template match="urun">
		<urun>
			<AnaKategori>
				<xsl:value-of select="AnaKategori" />
			</AnaKategori>
			<Durumu>
				<xsl:value-of select="Durumu" />
			</Durumu>
			<StokKodu>
				<xsl:value-of select="StokKodu" />
			</StokKodu>
			<StokAdi><xsl:value-of select="StokAdi" /></StokAdi>
			<!-- istenirse kullanılabilir -->
			<!--<Kod1>
				<xsl:value-of select="Kod1" />
			</Kod1>
			<Kod2>
				<xsl:value-of select="Kod2" />
			</Kod2>
			<Kod3>
				<xsl:value-of select="Kod3" />
			</Kod3>
			<Kod4>
				<xsl:value-of select="Kod4" />
			</Kod4>
			<Kod5>
				<xsl:value-of select="Kod5" />
			</Kod5>
			<Kod6>
				<xsl:value-of select="Kod6" />
			</Kod6>
			<Kod7>
				<xsl:value-of select="Kod7" />
			</Kod7>
			<Kod8>
				<xsl:value-of select="Kod8" />
			</Kod8>
			<Kod9>
				<xsl:value-of select="Kod9" />
			</Kod9>
			<Kod10>
				<xsl:value-of select="Kod10" />
			</Kod10>
			<Kod11>
				<xsl:value-of select="Kod11" />
			</Kod11>
			<Kod12>
				<xsl:value-of select="Kod12" />
			</Kod12>
			<Kod13>
				<xsl:value-of select="Kod13" />
			</Kod13>
			<Kod14>
				<xsl:value-of select="Kod14" />
			</Kod14>
			<Kod15>
				<xsl:value-of select="Kod15" />
			</Kod15>-->
			<Aciklama>
				<xsl:value-of select="Aciklama" />
			</Aciklama>
			<Detay>
				<xsl:value-of select="Detay" />
			</Detay>
			<Envanter>
				<xsl:value-of select="Envanter" />
			</Envanter>
			<Resim>
				<xsl:value-of select="Resim" />
			</Resim>
      <Resim2>
				<xsl:value-of select="Resim2" />
			</Resim2>
      <Resim3>
				<xsl:value-of select="Resim3" />
			</Resim3>
      <Resim4>
				<xsl:value-of select="Resim4" />
			</Resim4>
      <Resim5>
				<xsl:value-of select="Resim5" />
			</Resim5>
        <Resim6>
				<xsl:value-of select="Resim6" />
			</Resim6>
      <Resim7>
				<xsl:value-of select="Resim7" />
			</Resim7>
      <Resim8>
				<xsl:value-of select="Resim8" />
			</Resim8>
			<MarkaAdi>
				<xsl:value-of select="MarkaAdi" />
			</MarkaAdi>
			<KdvOrani>
				<xsl:value-of select="KdvOrani" />
			</KdvOrani>
			<BirimAdi>
				<xsl:value-of select="BirimAdi" />
			</BirimAdi>
			<!-- istenirse kullanılabilir -->
			<BirimCarpan>
				<xsl:value-of select="BirimCarpan" />
			</BirimCarpan>
			<!-- istenirse kullanılabilir -->
			<HavaleFiyati>
				<xsl:value-of select="HavaleFiyati" />
			</HavaleFiyati>
			<HavaleFiyatiParaBirimi>
				<xsl:value-of select="HavaleFiyatiParaBirimi" />
			</HavaleFiyatiParaBirimi>
			<SatisFiyati1>
				<xsl:value-of select="SatisFiyati1" />
			</SatisFiyati1>
			<SatisFiyati1ParaBirimi>
				<xsl:value-of select="SatisFiyati1ParaBirimi" />
			</SatisFiyati1ParaBirimi>
			<Isk1>
				<xsl:value-of select="Isk1" />
			</Isk1>
			<!--istenirse kullanılablir -->
			<SatisFiyati2>
				<xsl:value-of select="SatisFiyati2" />
			</SatisFiyati2>
			<Isk2>
				<xsl:value-of select="Isk2" />
			</Isk2>
			<SatisFiyati2ParaBirimi>
				<xsl:value-of select="SatisFiyati2ParaBirimi" />
			</SatisFiyati2ParaBirimi>
			<SatisFiyati3>
				<xsl:value-of select="SatisFiyati3" />
			</SatisFiyati3>
			<Isk3>
				<xsl:value-of select="Isk3" />
			</Isk3>
			<SatisFiyati3ParaBirimi>
				<xsl:value-of select="SatisFiyati3ParaBirimi" />
			</SatisFiyati3ParaBirimi>
			<SatisFiyati4>
				<xsl:value-of select="SatisFiyati4" />
			</SatisFiyati4>
			<Isk4>
				<xsl:value-of select="Isk4" />
			</Isk4>
			<SatisFiyati4ParaBirimi>
				<xsl:value-of select="SatisFiyati4ParaBirimi" />
			</SatisFiyati4ParaBirimi>
			<SatisFiyati5>
				<xsl:value-of select="SatisFiyati5" />
			</SatisFiyati5>
			<Isk5>
			<xsl:value-of select="Isk5" />
			</Isk5>
			<SatisFiyati5ParaBirimi>
				<xsl:value-of select="SatisFiyati5ParaBirimi" />
			</SatisFiyati5ParaBirimi>
			<PiyasaFiyati>
				<xsl:value-of select="PiyasaFiyati" />
			</PiyasaFiyati>
			<PiyasaFiyatiParaBirimi>
				<xsl:value-of select="PiyasaFiyatiParaBirimi" />
			</PiyasaFiyatiParaBirimi>
			<!-- istenirse kullanılablir Dikkat: Müşterinin değil sitenin alış fiyatları -->
			<AlisFiyati>
				<xsl:value-of select="SatisFiyati1" />
			</AlisFiyati>
			<AlisFiyatiParaBirimi>
				<xsl:value-of select="SatisFiyati1ParaBirimi" />
			</AlisFiyatiParaBirimi>
			<Desi>
				<xsl:value-of select="Desi" />
			</Desi>
			<HizliKargo>
				<xsl:value-of select="HizliKargo" />
			</HizliKargo>
			<EnUcuzUrun>
				<xsl:value-of select="EnUcuzUrun" />
			</EnUcuzUrun>
			<AyniGunTeslim>
				<xsl:value-of select="AyniGunTeslim" />
			</AyniGunTeslim>
			<OzelUrun>
				<xsl:value-of select="OzelUrun" />
			</OzelUrun>
			<IndirimliUrun>
				<xsl:value-of select="IndirimliUrun" />
			</IndirimliUrun>
			<SinirliSayidaUrun>
				<xsl:value-of select="SinirliSayidaUrun" />
			</SinirliSayidaUrun>
			<FirsatUrunu>
				<xsl:value-of select="FirsatUrunu" />
			</FirsatUrunu>
			<YeniUrun>
				<xsl:value-of select="YeniUrun" />
			</YeniUrun>
			<SokFiyatliUrun>
				<xsl:value-of select="SokFiyatliUrun" />
			</SokFiyatliUrun>
			<HediyeliUrun>
				<xsl:value-of select="HediyeliUrun" />
			</HediyeliUrun>
			<SearchKeywords>
				<xsl:value-of select="SearchKeywords" />
			</SearchKeywords>
      <YazarAdi>
        <xsl:value-of select="YazarAdi"/>
      </YazarAdi>
      <YayinEvi>
        <xsl:value-of select="YayinEvi"/>
      </YayinEvi>
			<!--<UreticiKodu>
				<xsl:value-of select="UreticiKodu" />
			</UreticiKodu>
			
			<CatId>
				<xsl:value-of select="CatId" />
			</CatId>
			<MarkId>
				<xsl:value-of select="MarkId" />
			</MarkId>
			<UrunId>
				<xsl:value-of select="UrunId" />
			</UrunId>
			<url>
				<xsl:value-of select="url" />
			</url>-->
			<!-- asagıdaki alanlari gerekmedikce kullanmayin-->
			<!--<TedarikciAdi>
				<xsl:value-of select="TedarikciAdi" />
			</TedarikciAdi>
			<XmlTedarikciAdi>
				<xsl:value-of select="XmlTedarikciAdi" />
			</XmlTedarikciAdi>-->
			<xsl:copy-of select="tekstil" />			
		</urun>
	</xsl:template>
</xsl:stylesheet>



