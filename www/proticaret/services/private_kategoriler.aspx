<%@ Page Language="vb" Inherits="System.Web.UI.Page" AutoEventWireup="false" %>

<%@ Import Namespace="System.Web.UI.HtmlControls" %>
 <%@ OutputCache Duration="1800" VaryByParam="none" %>
<%@ Import Namespace="AspNetPortal"  %>
<ul id="category_menu" runat="server"></ul>
<script language="VB" runat="server">	
    
  
   Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
        
        'Dim mainul As New LiteralControl("div")
        
        Dim conn As New SqlConnection((ConfigurationManager.AppSettings("ConnStr")))
        Dim sqlstr As String = "SELECT Parent,CatId,CatName,(Select Count(*) from Categories where IsActive=1 and IsVisible=1  and PortalId=" & PortalId & " and Parent=c.CatId ) as ChildCount,Url FROM Categories as c where c.IsActive=1 and IsVisible=1 and c.Parent=0 and  c.PortalId=" & PortalId & " ORDER BY Depth ,c.parent,isnull(c.ShowOrder,100)"

        Dim dr As SqlDataReader
        Dim cmd As New SqlCommand(sqlstr, conn)
        conn.Open()
        dr = cmd.ExecuteReader()
        ' Populate TreeView in one loop.
        Do While dr.Read()
            'baþlýk
            Dim catName As String = dr("CatName")
            Dim catLink As String = BaseUrl & dr("Url").ToString.Replace("/kategori/", UseV3SeoCategoryWord).Remove(dr("Url").ToString.Replace("/kategori/", UseV3SeoCategoryWord).Length - 1, 1) & ".aspx" & IIf(Request.QueryString("tabId") <> "", "?tabId=" & Request.QueryString("tabId"), "")

            'ana menü ise
            If dr("Parent") = 0 Then
                'css ekle
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
                    li.InnerHtml = String.Format("<a href=""{1}""><span>{0}</span><span class=""icon_down""></span></a>", catName, catLink)
                    category_menu.Controls.Add(li)
                    
                    Dim conn2 As New SqlConnection((ConfigurationManager.AppSettings("ConnStr")))
                    Dim sqlstr2 As String = "SELECT Parent,CatId,CatName,(Select Count(*) from Categories where IsActive=1 and IsVisible=1  and PortalId=" & PortalId & " and Parent=c.CatId ) as ChildCount,Url FROM Categories as c where c.IsActive=1 and IsVisible=1 and c.Parent=@Parent and  c.PortalId=" & PortalId & " ORDER BY Depth ,c.parent,isnull(c.ShowOrder,100)"

                    Dim dr2 As SqlDataReader
                    Dim cmd2 As New SqlCommand(sqlstr2, conn2)
                    cmd2.Parameters.AddWithValue("@Parent", dr("CatId"))
                    conn2.Open()
                    dr2 = cmd2.ExecuteReader()
                    Do While dr2.Read()
                        '-------------
                        Dim catName2 As String = dr2("CatName")
                        Dim catLink2 As String = BaseUrl & dr2("Url").ToString.Replace("/kategori/", UseV3SeoCategoryWord).Remove(dr2("Url").ToString.Replace("/kategori/", UseV3SeoCategoryWord).Length - 1, 1) & ".aspx" & IIf(Request.QueryString("tabId") <> "", "?tabId=" & Request.QueryString("tabId"), "")

                        
                        Dim pli As HtmlGenericControl = category_menu.FindControl("li_" & dr2("Parent"))
                        Dim pul As HtmlGenericControl = pli.FindControl("ul_" & dr2("Parent"))
                        If pul Is Nothing Then
                            pul = New HtmlGenericControl("ul")
                            pul.Attributes.Add("runat", "server")
                            pul.ID = "ul_" & dr2("Parent")
                            pli.Controls.Add(pul)
                        End If

                        Dim li2 As New HtmlGenericControl("li")
                        li2.Attributes.Add("runat", "server")
                        li2.ID = "li_" & dr2("CatId")

                        'seçili ise
                        If Not Request.QueryString("CatId") Is Nothing Then
                            If Request.QueryString("CatId") = dr2("CatId") Then
                                li2.Attributes.Add("class", "selected")
                            End If
                        End If
                        If dr2("ChildCount") > 0 Then
                            li2.InnerHtml = String.Format("<a href=""{1}""><span>{0}</span><span class=""icon_rigth""></span></a>", catName2, catLink2)
                        Else
                            li2.InnerHtml = String.Format("<a href=""{1}"">{0}</a>", catName2, catLink2)
                        End If
                        pul.Controls.Add(li2)
                        '---------
                    Loop
                    dr2.Close()
                    conn2.Close()
                Else
                    li.InnerHtml = String.Format("<a href=""{1}"">{0}</a>", catName, catLink)
                    category_menu.Controls.Add(li)
                End If
                
            Else
                'alt menü ise                       
                'üst menuyü bul
                
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
url: "http://www.proticaretg5d.com/services/categoryservice.aspx",
context: document.body,
success: function(data){
$("#menu_top2").html(data);
}
});
</script>
<div id="menu_top2"></div>--%>