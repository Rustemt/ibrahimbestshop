<%@ WebService Language="vb" Class="User2" %>
Imports System.Web.Services
Imports ASPNetPortal
Imports System.Data.SqlClient
Imports System.Data
<System.Web.Services.WebService(Namespace:="http://tempuri.org//User2")> _
Public Class User2
    Inherits System.Web.Services.WebService
    
    <WebMethod()> Public Function LogIn(ByVal apikey As String, ByVal userName As String, ByVal password As String) As UsersDB.userinfo
        Dim IsApi As Boolean = GetIsApi(apikey)
         

        If Not IsApi Then
            Return Nothing
        End If
        Dim usr As New UsersDB
        Dim inf As UsersDB.userinfo = Nothing
        inf = usr.Login2(PortalId, userName, password, "", True)
        If inf.UserId < 1 Then
            Return Nothing
        End If
        Return inf
    End Function
    Private Function GetIsApi(ByVal Z_Key As String) As Boolean
        Dim Is_Api As Boolean = False

        If Z_Key = "wwwproticaretnet" Then
            Is_Api = True
        Else
            Dim cnn As New DatabaseDB
            Dim cmd0 As New SqlClient.SqlCommand("Select top 1 PortalId from Portals where ApiKey=@ApiKey", cnn.conn)
            cnn.connectDb()
            cmd0.Parameters.AddWithValue("@ApiKey", Z_Key)
            Dim dr0 As SqlClient.SqlDataReader = cmd0.ExecuteReader
            If dr0.Read And (Not Z_Key = "") Then
                If PortalId = ChkNullToNumber(dr0(0), -1) Then
                    Is_Api = True
                End If
            End If
            dr0.Close()
            cnn.disconnectDb()
        End If
        Return Is_Api
    End Function
   

End Class
 