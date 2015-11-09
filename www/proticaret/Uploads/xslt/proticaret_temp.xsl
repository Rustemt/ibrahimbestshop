<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >
  <xsl:output method="xml" indent="yes" xmlns:xalan="http://xml.apache.org/xslt" xalan:indent-amount="4" encoding="UTF-8" />
	<xsl:decimal-format name="fiyatformat" decimal-separator="," grouping-separator="." />
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
      <StokAdi>
        <xsl:value-of select="StokAdi" />
      </StokAdi>  

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
      <BirimCarpan>
        <xsl:value-of select="BirimCarpan" />
      </BirimCarpan>     
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
      <AlisFiyati>
        <xsl:value-of select="AlisFiyati" />
      </AlisFiyati>
      <AlisFiyatiParaBirimi>
        <xsl:value-of select="AlisFiyatiParaBirimi" />
      </AlisFiyatiParaBirimi>
      <Desi>
        <xsl:value-of select="Desi" />
      </Desi>      
    </urun>
  </xsl:template>
</xsl:stylesheet>

