<%@ WebService Language="VB" Class="ASPNetPortal.homeproductsservice" %>
Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Xml
Imports System.Web.Script.Services
Imports System
Imports System.Net
Imports System.Text
Imports System.IO
Imports AjaxControlToolkit
Imports System.Data.SqlClient
'Imports System.Security.Cryptography
Imports System.Collections.Generic
Imports System.Collections.Specialized
 
Namespace ASPNetPortal
    <WebService(Namespace:="http://tempuri.org/")> _
    <WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
    <ScriptService()> _
    Public Class homeproductsservice
        Inherits System.Web.Services.WebService

        <WebMethod()> Public Shared Function GetProducts(ByVal CatId As String, MarkId As String, TypeID As String, PriceID As String, Size0 As String, Size1 As String, Size2 As String, OrderBy As String, OnlyStock As Integer, ByVal pageIndex As Integer) As String
            Dim cnn As New DatabaseDB


            Dim tekstilsql As String = ""
            If (Size0 <> "" Or Size1 <> "" Or Size2 <> "") Then
                tekstilsql = "left outer join ProductSizes on ProductList.ProductId=ProductSizes.ProductId"
            End If



            Dim sqlstr As String = "SELECT  StartDate,EndDate,PiyasaFiyati,SatisFiyati0,SatisFiyati1,SatisFiyati2,SatisFiyati3,SatisFiyati4,SatisFiyati5,Isk1,Isk2,Isk3,Isk4,Isk5,CurrencyP,Currency0,Currency1,Currency2,Currency3,Currency4,Currency5,RateP,Rate0,Rate1,Rate2,Rate3,Rate4,Rate5, CatId,CatName,CatUrl,ProductList.ProductId,ProductCode,ProductName,Description,ProductList.StockQty,KdvRate,Path, MarkId,MarKName,BirimAdi,Carpan,ProductUrl, " & _
            "'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  " & _
            "'CurrencyName'= case (@StokIndirim) when 0 then Currency1 when 1 then Currency1 when 2 then Currency2 when 3 then Currency3 when 4 then Currency4 when 5 then Currency5 end, " & _
            "'Rate'= case (@StokIndirim) when 0 then Rate1 when 1 then Rate1 when 2 then Rate2 when 3 then Rate3 when 4 then Rate4 when 5 then Rate5 end,  " & _
            "case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,  " & _
            "SellNoneStock,Code8,Code9,Code10,Code11,Code12,Code13,Code14,Code15,HizliKargo,EnUcuzUrun,AyniGunTeslim,OzelUrun,IndirimliUrun,SinirliSayidaUrun,FirsatUrunu,YeniUrun,SokFiyatliUrun,HediyeliUrun from ProductList  " & tekstilsql & "  WHERE Lineage like '%/' + @CatId + '/%' and PortalId = @PortalId "



            Dim da As New SqlDataAdapter(sqlstr, cnn.conn)

            If OnlyStock = 1 Then
                sqlstr &= " and (ProductList.StockQty>0 or SellNoneStock=1)"
            End If

            Dim FilterMark As String = ""
            If MarkId <> "" Then
                Dim mstrs() As String = MarkId.Split(",")
                FilterMark &= " and ("
                Dim i As Integer = 0
                For Each s As String In mstrs
                    If FilterMark = "(" Or FilterMark = " and (" Then
                        FilterMark &= "MarkId=@MarkId" & i
                        da.SelectCommand.Parameters.AddWithValue("@MarkId" & i, s)
                    Else
                        FilterMark &= " or MarkId=@MarkId" & i
                        da.SelectCommand.Parameters.AddWithValue("@MarkId" & i, s)
                    End If
                    i += 1
                Next
                FilterMark &= ")"
            End If
            sqlstr &= FilterMark

            Dim FilterType As String = ""
            Dim Types As New NameValueCollection
            Types.Add("1", "HizliKargo")
            Types.Add("2", "EnUcuzUrun")
            Types.Add("3", "AyniGunTeslim")
            Types.Add("4", "OzelUrun")
            Types.Add("5", "IndirimliUrun")
            Types.Add("6", "SinirliSayidaUrun")
            Types.Add("7", "FirsatUrunu")
            Types.Add("8", "YeniUrun")
            Types.Add("9", "SokFiyatliUrun")
            Types.Add("10", "HediyeliUrun")

            If TypeID <> "" Then
                Dim tstrs() As String = TypeID.Split(",")
                FilterType &= " and ("
                For Each s As String In tstrs
                    If FilterType = "(" Or FilterType = " and (" Then
                        FilterType &= Types(s) & "= 1"
                    Else
                        FilterType &= " or " & Types(s) & "= 1"
                    End If
                Next
                FilterType &= ")"
            End If
            sqlstr &= FilterType

            Dim FilterPrice As String = ""
            Dim Prices As New NameValueCollection
            Prices.Add("1", "SatisFiyati1*Rate1 >= 0 and SatisFiyati1*Rate1 <= 25")
            Prices.Add("2", "SatisFiyati1*Rate1 >= 25 and SatisFiyati1*Rate1 <= 50")
            Prices.Add("3", "SatisFiyati1*Rate1 >= 50 and SatisFiyati1*Rate1 <= 100")
            Prices.Add("4", "SatisFiyati1*Rate1 >= 100 and SatisFiyati1*Rate1 <= 200")
            Prices.Add("5", "SatisFiyati1*Rate1 >= 200 and SatisFiyati1*Rate1 <= 350")
            Prices.Add("6", "SatisFiyati1*Rate1 >= 350 and SatisFiyati1*Rate1 <= 500")
            Prices.Add("7", "SatisFiyati1*Rate1 >= 500 and SatisFiyati1*Rate1 <= 1000")
            Prices.Add("8", "SatisFiyati1*Rate1 >= 1000 and SatisFiyati1*Rate1 <= 1500")
            Prices.Add("9", "SatisFiyati1*Rate1 >= 1500 and SatisFiyati1*Rate1 <= 2000")
            Prices.Add("10", "SatisFiyati1*Rate1 >= 2000 and SatisFiyati1*Rate1 <= 2500")
            Prices.Add("11", "SatisFiyati1*Rate1 >= 2500 and SatisFiyati1*Rate1 <= 3000")
            Prices.Add("12", "SatisFiyati1*Rate1 >= 3000 and SatisFiyati1*Rate1 <= 15000")


            If PriceID <> "" Then
                FilterPrice &= " and ("
                Dim mstrs() As String = PriceID.Split(",")
                For Each s As String In mstrs
                    If FilterPrice = "(" Or FilterPrice = " and (" Then
                        FilterPrice &= Prices(s)
                    Else
                        FilterPrice &= " or " & Prices(s)
                    End If
                Next
                FilterPrice &= ")"
            End If
            sqlstr &= FilterPrice
            'Size0
            Dim FilterSize0 As String = ""
            If Size0 <> "" Then
                Dim mstrs() As String = Size0.Split(",")
                FilterSize0 &= " and ("
                Dim i As Integer = 0
                For Each s As String In mstrs
                    If FilterSize0 = "(" Or FilterSize0 = " and (" Then
                        FilterSize0 &= "ProductSize0ValueId=@ProductSize0ValueId" & i
                        da.SelectCommand.Parameters.AddWithValue("@ProductSize0ValueId" & i, s)
                    Else
                        FilterSize0 &= " or ProductSize0ValueId=@ProductSize0ValueId" & i
                        da.SelectCommand.Parameters.AddWithValue("@ProductSize0ValueId" & i, s)
                    End If
                    i += 1
                Next
                FilterSize0 &= ")"
            End If
            sqlstr &= FilterSize0

            'Size1
            Dim FilterSize1 As String = ""
            If Size1 <> "" Then
                Dim mstrs() As String = Size1.Split(",")
                FilterSize1 &= " and ("
                Dim i As Integer = 0
                For Each s As String In mstrs
                    If FilterSize1 = "(" Or FilterSize1 = " and (" Then
                        FilterSize1 &= "ProductSize1ValueId=@ProductSize1ValueId" & i
                        da.SelectCommand.Parameters.AddWithValue("@ProductSize1ValueId" & i, s)
                    Else
                        FilterSize1 &= " or ProductSize1ValueId=@ProductSize1ValueId" & i
                        da.SelectCommand.Parameters.AddWithValue("@ProductSize1ValueId" & i, s)
                    End If
                    i += 1
                Next
                FilterSize1 &= ")"
            End If
            sqlstr &= FilterSize1

            'Size2
            Dim FilterSize2 As String = ""
            If Size2 <> "" Then
                Dim mstrs() As String = Size2.Split(",")
                FilterSize2 &= " and ("
                Dim i As Integer = 0
                For Each s As String In mstrs
                    If FilterSize2 = "(" Or FilterSize2 = " and (" Then
                        FilterSize2 &= "ProductSize2ValueId=@ProductSize2ValueId" & i
                        da.SelectCommand.Parameters.AddWithValue("@ProductSize2ValueId" & i, s)
                    Else
                        FilterSize2 &= " or ProductSize2ValueId=@ProductSize2ValueId" & i
                        da.SelectCommand.Parameters.AddWithValue("@ProductSize2ValueId" & i, s)
                    End If
                    i += 1
                Next
                FilterSize2 &= ")"
            End If
            sqlstr &= FilterSize2


            Select Case OrderBy
                Case "OrderByNameAsc"
                    OrderBy = "Order by ProductName"
                Case "OrderByNameDesc"
                    OrderBy = "Order by ProductName Desc"
                Case "OrderByPriceAsc"
                    OrderBy = "Order by (Rate1*SatisFiyati1)"
                Case "OrderByPriceDesc"
                    OrderBy = "Order by (Rate1*SatisFiyati1) desc"
                Case Else
                    OrderBy = "Order By ISNULL(case ProductList.StockQty when 0 then  99999999  else ShowOrder end ,'100')"
            End Select

            sqlstr &= " " & OrderBy
            da.SelectCommand.CommandText = sqlstr

            Dim UserId As Integer = -1
            Dim UserIndirim As Integer = 0
            Dim StokIskActive As Integer = 0
            Dim StokIsk As Integer = 0

            If HttpContext.Current.User.Identity.IsAuthenticated() Then
                UserId = GetShoppingCartId()
                If IsNumeric(UserId) Then
                    Dim ua As New UsersDB
                    Dim dr As SqlDataReader
                    dr = ua.GetUserIndirim(UserId)
                    If dr.Read() Then
                        UserIndirim = dr(0)
                        StokIskActive = dr(1)
                        StokIsk = dr(2)
                    End If
                    dr.Close()
                End If
            End If

            da.SelectCommand.Parameters.AddWithValue("@PortalId", PortalId)
            da.SelectCommand.Parameters.AddWithValue("@CatId", CatId.ToString)
            da.SelectCommand.Parameters.AddWithValue("@StokIndirim", StokIsk)
            da.SelectCommand.Parameters.AddWithValue("@StokIskActive", StokIskActive)
            da.SelectCommand.Parameters.AddWithValue("@UserIndirim", UserIndirim)

            Dim ds As New DataSet



            Dim RecordsPerPage As Integer = ConfigurationManager.AppSettings("ProductsPerPage")
            da.Fill(ds, pageIndex, RecordsPerPage, "Products")

            Dim dt As DataTable = New DataTable("PageCount")
            dt.Columns.Add("PageCount")
            dt.Rows.Add()
            dt.Rows(0)(0) = ds.Tables(0).Rows.Count / RecordsPerPage
            ds.Tables.Add(dt)



            Return ds.GetXml


        End Function
    
    


    End Class
 End Namespace