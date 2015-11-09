<%@ Page Language="vb" Inherits="System.Web.UI.Page" AutoEventWireup="false" %>
<%@ OutputCache Duration="1800" VaryByParam="none" %>
<%@ Import Namespace="AspNetPortal"  %>
<script language="VB" runat="server">	
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
          
        
        Dim cnn As New DatabaseDB
        Dim str As New StringBuilder
        str.Append("<ul>")
        Dim sqlcode As String = "SELECT CatId,CatName,Url as CatUrl,Lineage FROM Categories WHERE IsActive=1 and Parent=0 and IsVisible=1 and ShowMenu1=1 and PortalId=@PortalId  ORDER BY isnull(ShowOrder,100),CatName"
        Dim cmd As New SqlCommand(sqlcode, cnn.conn)

        cmd.Parameters.AddWithValue("@PortalId", PortalId)

        cnn.connectDb()
        Dim dr As SqlDataReader = cmd.ExecuteReader

        Dim i As Integer = 0
        While dr.Read
            str.Append(String.Format("<li><a href=""{0}.aspx"">{1}</a></li>", BaseUrl & dr("CatUrl").ToString.Remove(dr("CatUrl").ToString.Length - 1, 1), dr("CatName")))
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
url: "http://www.proticaretg5d.com/services/categoryservice.aspx",
context: document.body,
success: function(data){
$("#menu_top2").html(data);
}
});
</script>
<div id="menu_top2"></div>--%>