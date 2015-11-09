<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="servicesmenu.ascx.vb" Inherits="servicesmenu" %>
<div class="pageServiceMenu" runat="server">
	<asp:Label ID="lblVersion" runat="server"></asp:Label>
	<% If IsAllowedOnDemo() = "False" Then %>
	<div id="alert" class="alert"><p>Demo Sitesinde Bazı Fonksyonlar Kısıtlanmıştır.</p></div>
	<% End If %>
	<div id="main_menu_container">
		<ul id="main_menu" class="main_menu" runat="server"></ul>
	</div>
	
	<div id="pnlContent" runat="server"></div>
	<div id="proticaret">
		<iframe id="frmproticaret1" runat="server" src="http://www.proticaret.org/e-ticaret/e-ticaret-haberler.html" frameborder="0" scrolling="no" width="100%" height="300"></iframe>
		<iframe id="frmproticaret2" runat="server" src="http://www.proticaret.org/e-ticaret/e-ticaret-haberler2.html" frameborder="0" scrolling="no" width="100%" height="37"></iframe>
	</div>
</div>
<script runat="server" type="text/VB">

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ModuleTitle = "Servis ve Garanti Yönetim Paneli"
       
        If Request.QueryString("MnuID") = "" Then
            frmproticaret1.Visible = True
        Else
            frmproticaret1.Visible = False
        End If
        
        If publicItems.VersionDb = publicItems.VersionPortal Then
            lblVersion.Text = "Versiyon No: <b><font color='blue'>" + publicItems.VersionPortal + "</font></b><hr />"
        Else
            lblVersion.Text = "<BR/>Portal Versiyonu: <b><font color='blue'>" + publicItems.VersionPortal + "</font></b> Veritabanı Versiyonu: <b><font color='red'>" + publicItems.VersionDb + "</font></b> Versiyonu yükseltmek için <a href='/install/default.aspx'><font color='blue'>burayı tıklayınız.</font><a/><hr />"
        End If
        
        If PortalSecurity.IsInRoles("Yöneticiler") = False Then
            MyRedirect("/accessdenied.aspx", True)
        End If

        Dim url As String = Request.Url.AbsolutePath & "?"
        If Request.QueryString.Keys.Count > 0 Then
            For i As Integer = 0 To Request.QueryString.Keys.Count - 1
                If Not Request.QueryString.Keys(i) = "MnuID" Then
                    url &= Request.QueryString.Keys(i) & "=" & Request.QueryString.Item(i) & "&"
                End If
            Next
        Else
        End If

        If PortalSecurity.IsInRoles("Yöneticiler") Then
            '/////////////////////ŞUBE TANIMLARI//////////////////////////////////////////////
            AddListItem("", "id1", "Genel Tanımlar", "", True, False)
            AddListItem("id1", "id10", "Merkez Tanımları", url & "MnuID=10", False, True)
            AddListItem("id1", "id11", "Departman Tanımları", url & "MnuID=11", False, True)
            AddListItem("id1", "id12", "Bölüm Tanımları", url & "MnuID=12", False, True)
            '/////////////////////SERVIS TANIMLARI////////////////////////////////////////////
            AddListItem("id1", "id2", "Servis Tanımları", "", True, False)
            AddListItem("id2", "id20", "Servis Tip Tanımları", url & "MnuID=20", False, True)
            AddListItem("id2", "id21", "Servis Kategorileri", url & "MnuID=21", False, True)
            AddListItem("id2", "id22", "Servis Alt Kategorileri", url & "MnuID=22", False, True)
            '/////////////////////İş TANIMLARI////////////////////////////////////////////////
            AddListItem("id1", "id3", "İş Tanımları", "", True, False)
            AddListItem("id3", "id30", "Proje Tanımları", url & "MnuID=30", False, True)
            AddListItem("id3", "id31", "İş Grubu Tanımları", url & "MnuID=31", False, True)
            AddListItem("id3", "id32", "İş Tanımları", url & "MnuID=32", False, True)

            '/////////////////////DURUM TANIMLARI/////////////////////////////////////////////
            AddListItem("id1", "id5", "Durum Tanımları", "", True, False)
            AddListItem("id5", "id50", "Arıza Tanımları", url & "MnuID=50", False, True)
            AddListItem("id5", "id51", "Bakım Sonucu Tanımları", url & "MnuID=51", False, True)
            AddListItem("id5", "id52", "Müşteri Şikayet Tanımları", url & "MnuID=52", False, True)
            AddListItem("id5", "id53", "Servis Durum Tanımları", url & "MnuID=53", False, True)
            '/////////////////////CİHAZ TANIMLARI/////////////////////////////////////////////
            AddListItem("id1", "id6", "Cihaz Tanımları", "", True, False)
            AddListItem("id6", "id60", "Marka Tanımları", url & "MnuID=60", False, True)
            AddListItem("id6", "id61", "Model Tanımları", url & "MnuID=61", False, True)
            AddListItem("id6", "id62", "Cihaz Tanımları", url & "MnuID=62", False, True)
            '/////////////////////FORM TANIMLARI/////////////////////////////////////////////
            AddListItem("id1", "id7", "Form Özel Alan Tanımı", url & "MnuID=70", False, True)
            '/////////////////////SERVİS TANIMLARI//////////////////////////////////////////
            AddListItem("", "id8", "Sevis İstekleri", url & "MnuID=80", False, True)
            Select Case Request.QueryString("MnuID")
                Case "10"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/servicescenterlist.ascx"))
                Case "11"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/departmentlist.ascx"))
                Case "12"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/sectionlist.ascx"))
                Case "20"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/servicetypelist.ascx"))
                Case "21"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/categorylist.ascx"))
                Case "22"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/subcategorylist.ascx"))
                Case "30"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/projectlist.ascx"))
                Case "31"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/jobgrouplist.ascx"))
                Case "32"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/joblist.ascx"))
                Case "50"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/faultlist.ascx"))
                Case "51"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/resaultlist.ascx"))
                Case "52"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/plaintlist.ascx"))
                Case "53"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/statulist.ascx"))
                Case "60"
                    pnlContent.Controls.Add(Page.LoadControl("/storeadmin/product/CMarkList.ascx"))
                Case "61"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/modellist.ascx"))
                Case "62"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/devicelist.ascx"))
                Case "70"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/servicesformopt.ascx"))
                Case "80"
                    pnlContent.Controls.Add(Page.LoadControl("/guaranty/servicesformlist.ascx"))
            End Select
           
        End If
        
    End Sub
    
    Private Sub AddListItem(ByVal ParentId As String, ByVal id As String, ByVal title As String, ByVal url As String, ByVal hasChild As Boolean, ByVal hasAction As Boolean)

        If ParentId <> "" Then
            Dim pli As HtmlGenericControl = main_menu.FindControl("li_" & ParentId)
            Dim pul As HtmlGenericControl = pli.FindControl("ul_" & ParentId)
            If pul Is Nothing Then
                pul = New HtmlGenericControl("ul")
                pul.Attributes.Add("runat", "server")
                pul.ID = "ul_" & ParentId
                pli.Controls.Add(pul)
            End If
            Dim li As New HtmlGenericControl("li")
            li.Attributes.Add("runat", "server")
            li.ID = "li_" & id
            If hasChild Then
                li.InnerHtml = String.Format("<a href=""{1}""><span>{0}</span><span class=""icon_rigth""></span></a>", title, ResolveUrl(url))
            Else
                li.InnerHtml = String.Format("<a href=""{1}"">{0}</a>", title, ResolveUrl(url))
            End If
            pul.Controls.Add(li)
        Else
            Dim li As New HtmlGenericControl("li")
            li.Attributes.Add("runat", "server")
            li.ID = "li_" & id
            If hasChild Then
                li.InnerHtml = String.Format("<a href=""{1}""><span>{0}</span><span class=""icon_down""></span></a>", title, ResolveUrl(url))
            Else
                li.InnerHtml = String.Format("<a href=""{1}"">{0}</a>", title, ResolveUrl(url))
            End If
            main_menu.Controls.Add(li)
        End If
        
    End Sub
    
</script>
