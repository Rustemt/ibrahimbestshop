<%@ WebService Language="VB" Class="ASPNetPortal.cartService" %>
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
 
Imports System.Collections.Generic
Namespace ASPNetPortal
    <WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ScriptService()> _
Public Class cartService
        Inherits System.Web.Services.WebService

        
        <WebMethod(EnableSession:=True)> _
        Public Function GetCargoTotal() As String
            Dim ret As String = "0.00 TL"
            
            Dim tmpOrder As TempOrder = Session("TempOrder")
                             
            Dim desi As Decimal = 0
            If tmpOrder.Pricess.ToplamZorunluDesi > 0 And tmpOrder.Pricess.KdvDahilToplam > CargoLimit Then
                desi = tmpOrder.Pricess.ToplamZorunluDesi
            ElseIf tmpOrder.Pricess.KdvDahilToplam > CargoLimit Then
                desi = 0
            Else
                desi = tmpOrder.Pricess.ToplamDesi
            End If

            If desi > 0 Then
                Dim cnn As New DatabaseDB
                Dim da As New SqlCommand("SELECT dbo.Cargo.CargoName, MIN(dbo.CargoInfo.Price) AS CargoPrice " & _
                           "FROM dbo.CargoInfo INNER JOIN dbo.Cargo ON dbo.CargoInfo.CargoId = dbo.Cargo.CargoId " & _
                           "WHERE dbo.CargoInfo.Desi >= @Desi AND dbo.Cargo.PortalId =@PortalId and Cargo.IsActive=1 and ShowDetails=1 GROUP BY dbo.Cargo.CargoName", cnn.conn)
                da.Parameters.Add("@Desi", SqlDbType.Decimal).Value = desi
                da.Parameters.AddWithValue("@PortalId", SqlDbType.Int).Value = PortalId

                cnn.connectDb()
                Dim dr As SqlDataReader = da.ExecuteReader
                If dr.Read Then
                    ret = CurrencySymbolLeft & " " & formatCurDoviz(dr("CargoPrice") * (DefaultCurrencyRate / CurrencyRate)) & " " & CurrencySymbolRight
                End If
                dr.Close()
                cnn.disconnectDb()

                
            Else
                ret = CurrencySymbolLeft & " " & formatCurDoviz(0) & " " & CurrencySymbolRight
            End If
            
            Return ret
        End Function
        
      <WebMethod(EnableSession:=True)> _
        Public Function GetShoppingCartCount() As String
            Dim ret As String = "0"
            Dim cart As ShoppingCartDB = New ShoppingCartDB
            Dim cartId As String = GetShoppingCartId()
            ret = cart.GetItemCount(cartId, 0).ToString
            Return ret
        End Function
        
        <WebMethod(EnableSession:=True)> _
        Public Function GetShoppingCartTotal() As String
            Dim ret As String = "0.00 TL"
            Dim UserIndirim As Decimal
            Dim StokIskActive As Boolean
            Dim StokIsk As Integer
            Dim UserId As String

            Dim cart As ShoppingCartDB = New ShoppingCartDB
            Dim cartId As String = GetShoppingCartId()
            ' If HttpContext.Current.User.Identity.IsAuthenticated() Then
            UserId = cartId
            If IsNumeric(UserId) Then
                Dim ua As New UsersDB
                Dim drx As SqlClient.SqlDataReader
                drx = ua.GetUserIndirim(UserId)
                drx.Read()
                UserIndirim = drx(0)
                StokIskActive = drx(1)
                StokIsk = drx(2)
                drx.Close()
            Else

                UserIndirim = 0
                StokIskActive = 0
                StokIsk = 0
            End If



            Dim dr As SqlClient.SqlDataReader = cart.GetItems(cartId, 0, StokIsk, StokIskActive, -1)
            Dim KdvDahilToplam As Decimal = 0
            Dim ToplamTutar As Decimal = 0
            Dim ToplamKdv As Decimal = 0
            Dim ToplamIndirim As Decimal = 0
            While dr.Read
                ToplamTutar += CalcIndirim(CalcIndirim(CalcRate(dr("SatisFiyati"), dr("Rate")), dr("Indirim")), UserIndirim) * dr("qty")
                ToplamKdv += CalcKdv(CalcIndirim(CalcIndirim(CalcRate(dr("SatisFiyati"), dr("Rate")), dr("Indirim")), UserIndirim), dr("KdvRate")) * dr("qty")
                ToplamIndirim += CalcRate(dr("SatisFiyati"), dr("Rate")) - CalcIndirim(CalcIndirim(CalcRate(dr("SatisFiyati"), dr("Rate")), dr("Indirim")), UserIndirim)
                KdvDahilToplam = ToplamKdv + ToplamTutar
            End While
            dr.Close()

            ret = formatCurTL(KdvDahilToplam)

            Return ret

        End Function


    End Class

End Namespace