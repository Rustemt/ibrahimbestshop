<%@ Page Language="vb" Inherits="System.Web.UI.Page" AutoEventWireup="false" %>
<%@ Import Namespace="AspNetPortal"  %>
<%@ Import Namespace="System.Web"  %>
<%@ Import Namespace="System.Web.Services"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body style="font-family: Arial; font-size: 10pt">
    <form id="form1" runat="server">
 
    </form>
</body>
</html>


<script language="VB" runat="server">  	
    
    
    <WebMethod()> _
    Public Shared Function Invite(ByVal Email As String) As String
        Dim ret As String = ""
        Threading.Thread.CurrentThread.CurrentCulture = New System.Globalization.CultureInfo("tr-TR")
         
        Dim m As String
        Dim FileName As String = HttpContext.Current.Request.PhysicalApplicationPath.ToString & getThemePath() & "\documents\InviteMail.htm"
        If Not IO.File.Exists(FileName) Then
            FileName = HttpContext.Current.Request.PhysicalApplicationPath.ToString & getThemePath() & "\documents\InviteMail_temp.htm"
        End If
        Dim AffiliateId As String = GetShoppingCartId()

        m = ReadFile(FileName)
        m = m.Replace("[SiteName]", ConfigurationManager.AppSettings("SiteName"))
        If HttpContext.Current.User.Identity.IsAuthenticated() Then
            m = m.Replace("[SenderName]", HttpContext.Current.User.Identity.Name.Split("|")(2))
        Else
            m = m.Replace("[SenderName]", "")
        End If

        m = m.Replace("[AffiliateLink]", BaseUrl & "?AffiliateId=" & AffiliateId)
        m = m.Replace("[Note]", "")
        m = m.Replace("[ThemePath]", getThemePath())
        m = m.Replace("[BaseUrl]", BaseUrl)

         
        'mail olayi
        If Trim(Email) <> "" And Trim(Email).Contains("@") Then
            Dim mailer As New webmail
            
            Dim subject As String
            If HttpContext.Current.User.Identity.IsAuthenticated() Then
                subject = String.Format(HttpContext.GetGlobalResourceObject("lang", "AffiliateInviteSubject").ToString, HttpContext.Current.User.Identity.Name.Split("|")(2), ConfigurationManager.AppSettings("SiteName"))
            Else
                subject = String.Format(HttpContext.GetGlobalResourceObject("lang", "AffiliateInviteSubject").ToString, "", ConfigurationManager.AppSettings("SiteName"))
            End If
            
            
            ret = mailer.SendMail(_portalsettings.Email, Trim(Email), subject, m)
            LogInvite(Trim(Email), AffiliateId)
        End If
        
        Return ret
    End Function
    Public Shared Sub LogInvite(ByVal email As String, ByVal UserId As String)

        Dim conn As New DatabaseDB
        Try
            Dim cmd As New SqlCommand("insert into InviteLog (Email,AffiliateId,SendStatus,PortalId) " & _
        "values(@Email,@AffiliateId,@SendStatus,@PortalId) ", conn.conn)


            cmd.Parameters.AddWithValue("@PortalId", PortalId)
            cmd.Parameters.AddWithValue("@Email", email)
            cmd.Parameters.AddWithValue("@AffiliateId", UserId)
            cmd.Parameters.AddWithValue("@SendStatus", 1)

            conn.connectDb()
            cmd.ExecuteNonQuery()
            cmd.Dispose()

        Catch exc As Exception

        Finally
            conn.disconnectDb()
        End Try
    End Sub
   

</script>