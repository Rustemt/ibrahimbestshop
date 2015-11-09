<%@ Page Language="vb" Inherits="System.Web.UI.Page" AutoEventWireup="false" Debug="true"  %>
<%@ Import Namespace="System.Web.UI.HtmlControls" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%--<%@ OutputCache Duration="1800" VaryByParam="none" %>--%>
<%@ Import Namespace="AspNetPortal"  %>
<ul id="category_menu" class="main_menuv" runat="server"></ul>
<script language="VB" runat="server">	
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
        
        'Dim mainul As New LiteralControl("div")
        Dim urlbase As String = ""
        If ConfigurationManager.AppSettings("UseSsl") = "True" Then
            urlbase = BaseUrl.Replace("http://", "https://")
        Else
            urlbase = BaseUrl
                      
        End If
		
        Dim conn As New SqlConnection((ConfigurationManager.AppSettings("ConnStr")))
        Dim sqlstr As String = "SELECT Parent,CatId,CatImg,CatName,(Select Count(*) from Categories where IsActive=1 and IsVisible=1 and PortalId=" & PortalId & " and Parent=c.CatId ) as ChildCount,Url FROM Categories as c where c.IsActive=1 and IsVisible=1 and c.PortalId=" & PortalId & " ORDER BY Depth ,c.parent,isnull(c.ShowOrder,100)"

        Dim dr As SqlDataReader
        Dim cmd As New SqlCommand(sqlstr, conn)
        conn.Open()
        dr = cmd.ExecuteReader()
        ' Populate TreeView in one loop.
        Do While dr.Read()
            'baþlýk
            Dim catName As String = dr("CatName")
            Dim catLink As String = urlbase & dr("Url").ToString.Replace("/kategori/", UseV3SeoCategoryWord).Remove(dr("Url").ToString.Replace("/kategori/", UseV3SeoCategoryWord).Length - 1, 1) & ".aspx" & IIf(Request.QueryString("tabId") <> "", "?tabId=" & Request.QueryString("tabId"), "")

            'ana menü ise
            If dr("Parent") = 0 Then
                'css ekle
                try
                Dim li As New HtmlGenericControl("li")
                li.Attributes.Add("runat", "server")
                li.ID = "li_" & dr("CatId")
                li.Attributes.Add("class", "item")
                'seçili ise
                If Not Request.QueryString("CatId") Is Nothing Then
                    If Request.QueryString("CatId") = dr("CatId") Then
                        li.Attributes.Add("class", "selected")
                    End If
                End If

                If dr("ChildCount") > 0 Then
                        li.InnerHtml = String.Format("<a href=""{1}""><span>{0}</span></a>", catName, catLink)
                Else
                        li.InnerHtml = String.Format("<a href=""{1}"">{0}</a>", catName, catLink)
                End If
                category_menu.Controls.Add(li)
                catch
                end try
            Else
                'alt menü ise                       
                'üst menuyü bul
                try
                Dim pli As HtmlGenericControl = category_menu.FindControl("li_" & dr("Parent"))
                Dim pul As HtmlGenericControl = pli.FindControl("ul_" & dr("Parent"))
                If pul Is Nothing Then
                    pul = New HtmlGenericControl("ul")
                    pul.Attributes.Add("runat", "server")
                    pul.ID = "ul_" & dr("Parent")
                    pli.Controls.Add(pul)
                End If

                Dim li As New HtmlGenericControl("li")
                li.Attributes.Add("runat", "server")
                li.ID = "li_" & dr("CatId")

                'seçili ise
                If Not Request.QueryString("CatId") Is Nothing Then
                    If Request.QueryString("CatId") = dr("CatId") Then
                        li.Attributes.Add("class", "selected")
                    End If
                End If
                If dr("ChildCount") > 0 Then
                        li.InnerHtml = String.Format("<a href=""{1}""><span>{0}</span></a>", catName, catLink)
                Else
                        li.InnerHtml = String.Format("<a href=""{1}"">{0}</a>", catName, catLink)
                End If
                pul.Controls.Add(li)
                catch
                end try
            End If

        Loop
        dr.Close()
        conn.Close()
        'Response.Write(mainul.Text)       
    End Sub  

</script>
<%--
kullanýmý
<script>
$.ajax({
url: "http://www.proticaretg5d.com/services/categoryserviceall.aspx",
context: document.body,
success: function(data){
$("#menu_top2").html(data);
}
});
</script>
<div id="menu_top2"></div>--%>