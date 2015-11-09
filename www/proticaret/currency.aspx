<%@ Page Language="vb" Inherits="System.Web.UI.Page" AutoEventWireup="false" %>
<%@ Import Namespace="AspNetPortal"  %>
<script language="VB" runat="server">	
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
         
        Dim Type As String = Request.QueryString("currency")
       
        Try
            Response.Write("<?xml version=""1.0"" encoding=""ISO-8859-9""?><root>" & GetCurrency(Type) & "</root>")
        Catch ex As Exception
           
        End Try
        
       
       
    End Sub
    Dim cnn As New DatabaseDB

    
  
    Private Function GetCurrency(ByVal doviz As String) As Decimal

        Dim dv As Decimal = 0

        'SELECT     Currencys.* FROM  Currencys INNER JOIN Portals ON Currencys.PortalId = Portals.PortalId WHERE     (Portals.  = N'default')
        Dim checkCommand As New SqlCommand("SELECT * FROM  Currencys WHERE   PortalId= " & PortalId, cnn.conn)
        cnn.connectDb()
        Dim dr As SqlDataReader = checkCommand.ExecuteReader
        While dr.Read()
            If doviz = ChkNullString(dr("CurrencyName")) Then
                dv = dr("Rate")
            End If
        End While
        
        dr.Close()
        cnn.disconnectDb()
        Return dv
    End Function

</script>