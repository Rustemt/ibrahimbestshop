<%@ Page Language="vb" AutoEventWireup="false" %>
<%--<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="iproductsxml.aspx.vb" Inherits=".iproductsxml" %>--%>
<%@ Import Namespace="AspNetPortal"  %>
<%@ OutputCache Duration="3600" VaryByParam="*" %>
<script language="VB" runat="server">

    Dim cnn As New DatabaseDB

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        
        HttpContext.Current.Server.ScriptTimeout = 300

        


        Dim type As String

        'New Discount WithGift BestSellers
        If Request.QueryString("type") <> "" Then
            type = Request.QueryString("type")
            If type = "Info" Then
                ExportInfo(type)
            Else
                Dim con As New DatabaseDB
                Dim sql As String = "SELECT top 1 ProductSizeOptionId from ProductsExportAllOptions where ProductSizeOptionId>0 and PortalId=" & PortalId
                If Request.QueryString("CatId") <> "" Then
                    sql &= " and Lineage like '/" & Request.QueryString("CatId") & "/%'"
                End If

                Dim cmd As New SqlCommand(sql, con.conn)
                con.connectDb()
                Dim i As Integer = ChkNullToNumber(cmd.ExecuteScalar)
                con.disconnectDb()
            
                If i > 0 Then
                    ExportXmlToTransmit2(type)
                Else
                    ExportXmlToTransmit(type)
                End If
            End If
        End If




    End Sub
   
    Public Function Distinct(ByVal dt As DataTable, ByVal DistinctColumn As String, ByVal sort As String) As DataTable
        Dim dtclone As DataTable = dt.Clone
        Dim dv As New DataView(dt)
        dv.Sort = sort
        'dv.Sort = DistinctColumn
        dtclone.PrimaryKey = New DataColumn() {dtclone.Columns(DistinctColumn)}
        'dtclone.PrimaryKey = dtclone.Columns(DistinctColumn)
        Dim SelOld As String = ""
        For i As Integer = 0 To dv.Count - 1
            If SelOld <> dv(i)(DistinctColumn).ToString Then
                Dim drn As DataRow = dtclone.NewRow
                For y As Integer = 0 To drn.ItemArray.Length - 1
                    drn(y) = dv(i)(y)
                Next
                SelOld = dv(i)(DistinctColumn).ToString
                dtclone.Rows.Add(drn)
            Else

            End If
        Next
        'dtclone.DefaultView.Sort = sort
        'dtclone.DefaultView.Sort = ddlOrderBy.SelectedValue
        Return dtclone
    End Function
 
    Private Sub ExportInfo(ByVal type As String)
        
        Dim strexFolder As String = Request.PhysicalApplicationPath & "uploads\ExportFiles\"
         
        Dim ds As New DataSet("root")
        Dim tb As New DataTable("Info")
        ds.Tables.Add(tb)
               
        tb.Columns.Add(New DataColumn("CompanyName"))
        tb.Columns.Add(New DataColumn("CompanyTel"))
        tb.Columns.Add(New DataColumn("CompanyFax"))
        tb.Columns.Add(New DataColumn("CompanyAddress"))
        tb.Columns.Add(New DataColumn("CompanyEmail"))
        
        Dim dr As DataRow = tb.NewRow
        dr("CompanyName") = Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyName"))
        dr("CompanyTel") = Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyTel"))
        dr("CompanyFax") = Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyFax"))
        dr("CompanyAddress") = Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyAddress"))
        dr("CompanyEmail") = Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyEmail"))
        tb.Rows.Add(dr)
        
        Dim filename As String = type & ".xml"
        If File.Exists(strexFolder & filename) Then
            File.Delete(strexFolder & "/" & filename)
        End If
        ds.WriteXml(strexFolder & filename)
        
        Response.ContentType = "text/xml"
        Response.TransmitFile(strexFolder & filename)
        Response.End()
        
        
    End Sub
    
    Private Sub ExportXmlToTransmit(ByVal type As String)
       
        Dim strexFolder As String = Request.PhysicalApplicationPath & "uploads\ExportFiles\"
        Dim sqlstr As String = "SELECT Lineage2 as AnaKategori,UrunAktif as Durumu,StokKodu,StokAdi," & _
      "Kod1,Kod2,Kod3,Kod4,Kod5,Kod6,Kod7,Kod8,Kod9,Kod10,Kod11,Kod12,Kod13,Kod14,Kod15,StokAciklama as Aciklama,Details as Detay,StokEnvanter as Envanter,'" & BaseUrl & "/store/makethumb.aspx?intSize=300&file=' + StokResmi as Resim," & _
       "MarkaAdi,KdvOrani,BirimAdi,BirimCarpan,SatisFiyati0 as HavaleFiyati,SatisFiyati0ParaBirimi as HavaleFiyatiParaBirimi,SatisFiyati1,Isk1,SatisFiyati1ParaBirimi,SatisFiyati2,Isk2,SatisFiyati2ParaBirimi,SatisFiyati3,Isk3,SatisFiyati3ParaBirimi,SatisFiyati4,Isk4,SatisFiyati4ParaBirimi,SatisFiyati5,Isk5,SatisFiyati5ParaBirimi,PiyasaFiyati, PiyasaFiyatiParaBirimi,AlisFiyati, AlisFiyatiParaBirimi,Desi,HizliKargo,EnUcuzUrun,AyniGunTeslim,OzelUrun,IndirimliUrun,SinirliSayidaUrun,FirsatUrunu,YeniUrun,SokFiyatliUrun,HediyeliUrun,TedarikciAdi,XmlTedarikciAdi,UreticiKodu,SearchKeywords,CatId1 as CatId,MarkId,UrunId,'" & BaseUrl & "/store/addtocart.aspx?ProductId=' + CONVERT(nvarchar(20),UrunId) as url " & _
    "From ProductsExportAll WHERE  (PortalId = @PortalId) "
        If Request.QueryString("CatId") <> "" Then
            sqlstr &= " and Lineage like '/" & Request.QueryString("CatId") & "/%'"
        End If
        
        Select Case type
            Case "YeniUrun"
                sqlstr &= " and YeniUrun=1 "
            Case "IndirimliUrun"
                sqlstr &= " and IndirimliUrun=1 "
            Case "HediyeliUrun"
                sqlstr &= " and HediyeliUrun=1 "
            Case "EnCokSatanlar"
                sqlstr = "SELECT Lineage2 as AnaKategori,UrunAktif as Durumu,StokKodu,StokAdi," & _
                "Kod1,Kod2,Kod3,Kod4,Kod5,Kod6,Kod7,Kod8,Kod9,Kod10,Kod11,Kod12,Kod13,Kod14,Kod15,StokAciklama as Aciklama,CAST(Details AS varchar(8000)) as Detay,StokEnvanter as Envanter,'" & BaseUrl & "/store/makethumb.aspx?intSize=300&file=' + StokResmi as Resim," & _
                "MarkaAdi,KdvOrani,ProductsExportAll.BirimAdi,BirimCarpan,SatisFiyati0 as HavaleFiyati,SatisFiyati0ParaBirimi as HavaleFiyatiParaBirimi,SatisFiyati1,Isk1,SatisFiyati1ParaBirimi,SatisFiyati2,Isk2,SatisFiyati2ParaBirimi,SatisFiyati3,Isk3,SatisFiyati3ParaBirimi,SatisFiyati4,Isk4,SatisFiyati4ParaBirimi,SatisFiyati5,Isk5,SatisFiyati5ParaBirimi,PiyasaFiyati, PiyasaFiyatiParaBirimi,ProductsExportAll.AlisFiyati, AlisFiyatiParaBirimi,Desi,HizliKargo,EnUcuzUrun,AyniGunTeslim,OzelUrun,IndirimliUrun,SinirliSayidaUrun,FirsatUrunu,YeniUrun,SokFiyatliUrun,HediyeliUrun,TedarikciAdi,XmlTedarikciAdi,UreticiKodu,SearchKeywords,CatId1 as CatId,MarkId,UrunId,'" & BaseUrl & "/store/addtocart.aspx?ProductId=' + CONVERT(nvarchar(20),UrunId) as url " & _
                "From ProductsExportAll  INNER JOIN OrderDetails ON OrderDetails.ProductId = ProductsExportAll.UrunId " & _
                "WHERE  (PortalId = @PortalId) "
                If Request.QueryString("CatId") <> "" Then
                    sqlstr &= " and Lineage like '/" & Request.QueryString("CatId") & "/%'"
                End If
                sqlstr &= " GROUP BY  Depth,Lineage2,UrunAktif,StokKodu,StokAdi,Kod1,Kod2,Kod3,Kod4,Kod5,Kod6,Kod7,Kod8,Kod9,Kod10,Kod11,Kod12,Kod13,Kod14,Kod15,StokAciklama,CAST(Details AS varchar(8000)),StokEnvanter,StokResmi,MarkaAdi,KdvOrani,ProductsExportAll.BirimAdi,BirimCarpan,SatisFiyati0,SatisFiyati0ParaBirimi,SatisFiyati1,Isk1,SatisFiyati1ParaBirimi,SatisFiyati2,Isk2,SatisFiyati2ParaBirimi,SatisFiyati3,Isk3,SatisFiyati3ParaBirimi,SatisFiyati4,Isk4,SatisFiyati4ParaBirimi,SatisFiyati5,Isk5,SatisFiyati5ParaBirimi,PiyasaFiyati, PiyasaFiyatiParaBirimi,ProductsExportAll.AlisFiyati, AlisFiyatiParaBirimi,Desi,HizliKargo,EnUcuzUrun,AyniGunTeslim,OzelUrun,IndirimliUrun,SinirliSayidaUrun,FirsatUrunu,YeniUrun,SokFiyatliUrun,HediyeliUrun,TedarikciAdi,XmlTedarikciAdi,UreticiKodu,SearchKeywords,CatId1,MarkId,UrunId,url ORDER BY SUM(OrderDetails.Quantity * OrderDetails.Carpan)"
        End Select
        

        cnn.conn.ConnectionString = (ConfigurationManager.AppSettings("ConnStr")) & ";connection timeout=200"
        Dim cmd As New SqlDataAdapter(sqlstr, cnn.conn)
        cmd.SelectCommand.Parameters.AddWithValue("@PortalId", PortalId)
        Dim ds As New DataSet("root")

        cmd.Fill(ds, "urun")



        Dim filename As String = type & ".xml"
        If File.Exists(strexFolder & filename) Then
            File.Delete(strexFolder & "/" & filename)
        End If
        ds.WriteXml(strexFolder & filename)

        If Request.QueryString("xslt") <> "" Then

            Dim transform As New Xsl.XslTransform()
            transform.Load(Request.PhysicalApplicationPath & "uploads\xsltexport\" & Request.QueryString("xslt"))
            transform.Transform(strexFolder & "/" & filename, strexFolder & "/" & Request.QueryString("xslt").Replace(".xsl", ".xml"))
            'filename = ddlProviderExport.SelectedItem.Text.Replace(".xsl", "") & txtExt.Text

            Response.ContentType = "text/xml"
            Response.TransmitFile(strexFolder & "/" & Request.QueryString("xslt").Replace(".xsl", ".xml"))
            Response.End()
        Else
            Response.ContentType = "text/xml"
            Response.TransmitFile(strexFolder & filename)
            Response.End()
        End If
    End Sub

    Private Sub ExportXmlToTransmit2(ByVal type As String)
        Dim strexFolder As String = Request.PhysicalApplicationPath & "uploads\ExportFiles\"

        Dim sqlstr As String = "SELECT Depth,Lineage2 as AnaKategori,UrunAktif as Durumu,StokKodu,StokAdi," & _
        "Kod1,Kod2,Kod3,Kod4,Kod5,Kod6,Kod7,Kod8,Kod9,Kod10,Kod11,Kod12,Kod13,Kod14,Kod15,StokAciklama as Aciklama,Details as Detay,StokEnvanter as Envanter,'" & BaseUrl & "/store/makethumb.aspx?intSize=300&file=' + StokResmi as Resim," & _
        "MarkaAdi,KdvOrani,BirimAdi,BirimCarpan,SatisFiyati0 as HavaleFiyati,SatisFiyati0ParaBirimi as HavaleFiyatiParaBirimi,SatisFiyati1,Isk1,SatisFiyati1ParaBirimi,SatisFiyati2,Isk2,SatisFiyati2ParaBirimi,SatisFiyati3,Isk3,SatisFiyati3ParaBirimi,SatisFiyati4,Isk4,SatisFiyati4ParaBirimi,SatisFiyati5,Isk5,SatisFiyati5ParaBirimi,PiyasaFiyati, PiyasaFiyatiParaBirimi,AlisFiyati, AlisFiyatiParaBirimi,Desi,HizliKargo,EnUcuzUrun,AyniGunTeslim,OzelUrun,IndirimliUrun,SinirliSayidaUrun,FirsatUrunu,YeniUrun,SokFiyatliUrun,HediyeliUrun,TedarikciAdi,XmlTedarikciAdi,UreticiKodu,SearchKeywords,CatId1 as CatId,MarkId,UrunId,'" & BaseUrl & "/store/addtocart.aspx?ProductId=' + CONVERT(nvarchar(20),UrunId) as url " & _
        "From ProductsExportAllOptions WHERE  (PortalId = @PortalId) "

        Dim sqlrelation As String = "SELECT distinct ProductSizeList.ProductId as UrunId,UrunId as ProductId ,ProductSizeList.ProductSizeOptionName as UrunGrubu,ProductSizeList.ProductSize0Name as Boyut1TanimAdi,ProductSizeList.ProductSize1Name as Boyut2TanimAdi,ProductSizeList.ProductSize2Name as Boyut3TanimAdi" & _
        " From ProductsExportAllOptions innner join ProductSizeList on UrunId = ProductSizeList.ProductId  WHERE  (PortalId = @PortalId) "

        Dim sqlsizes As String = "SELECT Distinct ProductSizeList.ProductId," & _
        "ProductSizeList.ProductCode + case  when len(Size0Code)>0 then '|' + Size0Code else '' End + case  when len(Size1Code)>0 then '|' + Size1Code else '' End + case  when len(Size2Code)>0 then '|' + Size2Code else '' End as StokKodu," & _
        "ProductSizeOptionName as TanimAdi,Size0Name as Boyut1,'" & BaseUrl & "' + Size0Path as Boyut1Resim,Size1Name as Boyut2,Size2Name as Boyut3,StockQty as Envanter,'" & BaseUrl & "/store/makethumb.aspx?intSize=300&file=' + ProductImagePath as UrunResim" & _
        " From ProductsExportAllOptions innner join ProductSizeList on UrunId = ProductSizeList.ProductId  WHERE  (PortalId = @PortalId) "

        If Request.QueryString("CatId") <> "" Then
            sqlstr &= " and Lineage like '/" & Request.QueryString("CatId") & "/%'"
            sqlrelation &= " and Lineage like '/" & Request.QueryString("CatId") & "/%'"
            sqlsizes &= " and Lineage like '/" & Request.QueryString("CatId") & "/%'"
        End If
        
        Select Case type
            Case "YeniUrun"
                sqlstr &= " and YeniUrun=1 "
            Case "IndirimliUrun"
                sqlstr &= " and IndirimliUrun=1 "
            Case "HediyeliUrun"
                sqlstr &= " and HediyeliUrun=1 "
            Case "EnCokSatanlar"
                sqlstr = "SELECT Depth,Lineage2 as AnaKategori,UrunAktif as Durumu,StokKodu,StokAdi," & _
                "Kod1,Kod2,Kod3,Kod4,Kod5,Kod6,Kod7,Kod8,Kod9,Kod10,Kod11,Kod12,Kod13,Kod14,Kod15,StokAciklama as Aciklama,CAST(Details AS varchar(8000)) as Detay,StokEnvanter as Envanter,'" & BaseUrl & "/store/makethumb.aspx?intSize=300&file=' + StokResmi as Resim," & _
                "MarkaAdi,KdvOrani,ProductsExportAllOptions.BirimAdi,BirimCarpan,SatisFiyati0 as HavaleFiyati,SatisFiyati0ParaBirimi as HavaleFiyatiParaBirimi,SatisFiyati1,Isk1,SatisFiyati1ParaBirimi,SatisFiyati2,Isk2,SatisFiyati2ParaBirimi,SatisFiyati3,Isk3,SatisFiyati3ParaBirimi,SatisFiyati4,Isk4,SatisFiyati4ParaBirimi,SatisFiyati5,Isk5,SatisFiyati5ParaBirimi,PiyasaFiyati, PiyasaFiyatiParaBirimi,ProductsExportAllOptions.AlisFiyati, AlisFiyatiParaBirimi,Desi,HizliKargo,EnUcuzUrun,AyniGunTeslim,OzelUrun,IndirimliUrun,SinirliSayidaUrun,FirsatUrunu,YeniUrun,SokFiyatliUrun,HediyeliUrun,TedarikciAdi,XmlTedarikciAdi,UreticiKodu,SearchKeywords,CatId1 as CatId,MarkId,UrunId,'" & BaseUrl & "/store/addtocart.aspx?ProductId=' + CONVERT(nvarchar(20),UrunId) as url " & _
                "From ProductsExportAllOptions  INNER JOIN OrderDetails ON OrderDetails.ProductId = ProductsExportAllOptions.UrunId " & _
                "WHERE  (PortalId = @PortalId) "
                If Request.QueryString("CatId") <> "" Then
                    sqlstr &= " and Lineage like '/" & Request.QueryString("CatId") & "/%'"
                    sqlrelation &= " and Lineage like '/" & Request.QueryString("CatId") & "/%'"
                    sqlsizes &= " and Lineage like '/" & Request.QueryString("CatId") & "/%'"
                End If
                sqlstr &= " GROUP BY  Depth,Lineage2,UrunAktif,StokKodu,StokAdi,Kod1,Kod2,Kod3,Kod4,Kod5,Kod6,Kod7,Kod8,Kod9,Kod10,Kod11,Kod12,Kod13,Kod14,Kod15,StokAciklama,CAST(Details AS varchar(8000)),StokEnvanter,StokResmi,MarkaAdi,KdvOrani,ProductsExportAllOptions.BirimAdi,BirimCarpan,SatisFiyati0,SatisFiyati0ParaBirimi,SatisFiyati1,Isk1,SatisFiyati1ParaBirimi,SatisFiyati2,Isk2,SatisFiyati2ParaBirimi,SatisFiyati3,Isk3,SatisFiyati3ParaBirimi,SatisFiyati4,Isk4,SatisFiyati4ParaBirimi,SatisFiyati5,Isk5,SatisFiyati5ParaBirimi,PiyasaFiyati, PiyasaFiyatiParaBirimi,ProductsExportAllOptions.AlisFiyati, AlisFiyatiParaBirimi,Desi,HizliKargo,EnUcuzUrun,AyniGunTeslim,OzelUrun,IndirimliUrun,SinirliSayidaUrun,FirsatUrunu,YeniUrun,SokFiyatliUrun,HediyeliUrun,TedarikciAdi,XmlTedarikciAdi,UreticiKodu,SearchKeywords,CatId1,MarkId,UrunId,url ORDER BY SUM(OrderDetails.Quantity * OrderDetails.Carpan)"
        End Select
        

        cnn.conn.ConnectionString = (ConfigurationManager.AppSettings("ConnStr")) & ";connection timeout=200"

        Dim cmd As New SqlDataAdapter(sqlstr, cnn.conn)
        cmd.SelectCommand.Parameters.AddWithValue("@PortalId", PortalId)

        Dim cmd1 As New SqlDataAdapter(sqlrelation, cnn.conn)
        cmd1.SelectCommand.Parameters.AddWithValue("@PortalId", PortalId)

        Dim cmd2 As New SqlDataAdapter(sqlsizes, cnn.conn)
        cmd2.SelectCommand.Parameters.AddWithValue("@PortalId", PortalId)

        Dim ds As New DataSet("root")
        ds.EnforceConstraints = False

        Dim dsu As New DataSet
        cmd.Fill(dsu, "urun")

        ds.Tables.Add(Distinct(dsu.Tables("urun"), "UrunId", "UrunId,Depth desc"))
        ds.Tables("urun").Columns("Depth").ColumnMapping = MappingType.Hidden
        'ds.Tables("urun").Columns("UrunId").ColumnMapping = MappingType.Hidden

        cmd1.Fill(ds, "tekstil")
        ds.Tables("tekstil").Columns("ProductId").ColumnMapping = MappingType.Hidden
        ds.Tables("tekstil").Columns("UrunId").ColumnMapping = MappingType.Hidden
        ds.Tables("tekstil").Columns("UrunGrubu").ColumnMapping = MappingType.Attribute
        ds.Tables("tekstil").Columns("Boyut1TanimAdi").ColumnMapping = MappingType.Attribute
        ds.Tables("tekstil").Columns("Boyut2TanimAdi").ColumnMapping = MappingType.Attribute
        ds.Tables("tekstil").Columns("Boyut3TanimAdi").ColumnMapping = MappingType.Attribute

        cmd2.Fill(ds, "boyut")
        ds.Tables("boyut").Columns("ProductId").ColumnMapping = MappingType.Hidden
        ds.Tables("boyut").Columns("TanimAdi").ColumnMapping = MappingType.Hidden


        Dim rel As New Data.DataRelation("urun_tekstil", ds.Tables("urun").Columns("UrunId"), ds.Tables("tekstil").Columns("UrunId"))
        ds.Relations.Add(rel)
        rel.Nested = True

        Dim rel1 As New Data.DataRelation("tekstil_boyut", ds.Tables("tekstil").Columns("UrunId"), ds.Tables("boyut").Columns("ProductId"), False)
        ds.Relations.Add(rel1)
        rel1.Nested = True


        Dim filename As String = type & ".xml"
        If File.Exists(strexFolder & filename) Then
            File.Delete(strexFolder & "/" & filename)
        End If
        ds.WriteXml(strexFolder & filename)

        If Request.QueryString("xslt") <> "" Then

            Dim transform As New Xsl.XslTransform()
            transform.Load(Request.PhysicalApplicationPath & "uploads\xsltexport\" & Request.QueryString("xslt"))
            transform.Transform(strexFolder & "/" & filename, strexFolder & "/" & Request.QueryString("xslt").Replace(".xsl", ".xml"))
            'filename = ddlProviderExport.SelectedItem.Text.Replace(".xsl", "") & txtExt.Text

            Response.ContentType = "text/xml"
            Response.TransmitFile(strexFolder & "/" & Request.QueryString("xslt").Replace(".xsl", ".xml"))
            Response.End()
        Else
            Response.ContentType = "text/xml"
            Response.TransmitFile(strexFolder & filename)
            Response.End()
        End If
    End Sub
</script>