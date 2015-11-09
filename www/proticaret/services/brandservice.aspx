<%@ Page Language="vb" Inherits="System.Web.UI.Page" AutoEventWireup="false" %>
<%@ OutputCache Duration="1800" VaryByParam="none" %>
<%@ Import Namespace="AspNetPortal"  %>
<script language="VB" runat="server">	
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
           
        Dim urlbase As String = ""
        If ConfigurationManager.AppSettings("UseSsl") = "True" Then
            urlbase = BaseUrl.Replace("http://", "https://")
        Else
            urlbase = BaseUrl
                      
        End If
        
        Dim cnn As New DatabaseDB
        Dim str As New StringBuilder
        str.Append("<ul>")
        Dim sqlcode As String = "SELECT MarkId,MarkName,Image from ProductMarks where IsActive=1 and PortalId=@PortalId Order by MarkName"
        Dim cmd As New SqlCommand(sqlcode, cnn.conn)

        cmd.Parameters.AddWithValue("@PortalId", PortalId)

        cnn.connectDb()
        Dim dr As SqlDataReader = cmd.ExecuteReader

        Dim i As Integer = 0
        While dr.Read
            str.Append(String.Format("<li><a href=""{0}"">{1}</a></li>", String.Format(urlbase & "/marka/{0}" & ".aspx", doUrl(dr("MarkName"))), dr("MarkName")))
        End While

        cmd.Dispose()
        cnn.disconnectDb()
        str.Append("</ul>")


        Response.Write(str.ToString)
       
    End Sub
   

</script>
<%--
kullanýmý
<script>
$.ajax({
url: "http://www.proticaretg5d.com/services/brandservice.aspx",
context: document.body,
success: function(data){
$("#menu_top2").html(data);
}
});
</script>
<div id="menu_top2"></div>--%>