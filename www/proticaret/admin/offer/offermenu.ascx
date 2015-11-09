<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="offermenu.ascx.vb" Inherits="offermenu" %>
<div id="contentadminmenu" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit">
                    <%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <script type="text/javascript" src="/admin/js/jquery.ui.smoothMenu.min.js"></script>
            <link type="text/css" href="/admin/css/jquery-ui-smoothMenu.css" rel="stylesheet" />
            <table cellspacing="0" cellpadding="0" border="0" width="100%">
                <tr>
                    <td>
                        <asp:Label ID="lblVersion" runat="server"></asp:Label>
                        <% If IsAllowedOnDemo() = "False" Then%>
                        <div id="alert" class="alert">
                            <p>
                                Demo Sitesinde Bazı Fonksyonlar Kısıtlanmıştır.
                            </p>
                        </div>
                        <% End If%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div id="main_menu_container">
                            <ul id="main_menu" class="main_menu" runat="server">
                            </ul>
                            <div class="clear">
                            </div>
                        </div>
                        <script type="text/javascript">
                            if ($.browser.msie) {
                                $(function () {
                                    $('ul.main_menu > li').smoothMenu();
                                });
                            }
                            else {
                                $('ul.main_menu > li').smoothMenu();
                            }
                        </script>
                    </td>
                </tr>
                <tr>
                    <td id="pnlContent" valign="top" align="left" runat="server"></td>
                </tr>
                <tr>
                    <td runat="server" id="proticaret">
                        <iframe id="frmproticaret1" runat="server" src="http://www.proticaret.org/e-ticaret/e-ticaret-haberler.html" frameborder="0" scrolling="no" width="100%" height="300"></iframe>
                        <iframe id="frmproticaret2" runat="server" src="http://www.proticaret.org/e-ticaret/e-ticaret-haberler2.html" frameborder="0" scrolling="no" width="100%" height="37"></iframe>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
<script runat="server" type="text/VB">

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ModuleTitle = "Teklif Yönetim Paneli"
       
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
            AddListItem("id1", "id2", "Teklif Özel Tanımları", url & "MnuID=2", False, True)
            AddListItem("id1", "id3", "Teklif Tipi Tanımları", url & "MnuID=3", False, True)
            AddListItem("id1", "id4", "Teklif Durumu Tanımları", url & "MnuID=4", False, True)
            
            AddListItem("id1", "id5", "Teklif Sevk Tanımları", url & "MnuID=5", False, True)
            AddListItem("id1", "id6", "Teklif Ödeme Tanımları", url & "MnuID=6", False, True)
            AddListItem("id1", "id7", "Teklif Proje Tanımları", url & "MnuID=7", False, True)
            <%--AddListItem("id1", "id8", "Teklif Bilgi Tanımları", url & "MnuID=8", False, True)--%>
            AddListItem("", "id20", "Teklif Listesi", url & "MnuID=9", False, True)

            Select Case Request.QueryString("MnuID")
                Case "2"
                    pnlContent.Controls.Add(Page.LoadControl("/offer/offercontrollist.ascx"))
                Case "3"
                    pnlContent.Controls.Add(Page.LoadControl("/offer/offertypelist.ascx"))
                Case "4"
                    pnlContent.Controls.Add(Page.LoadControl("/offer/offerstatulist.ascx"))
                Case "5"
                    pnlContent.Controls.Add(Page.LoadControl("/offer/offersendlist.ascx"))
                Case "6"
                    pnlContent.Controls.Add(Page.LoadControl("/offer/offerpaylist.ascx"))
                Case "7"
                    pnlContent.Controls.Add(Page.LoadControl("/offer/offerprojectlist.ascx"))
                Case "8"
                    pnlContent.Controls.Add(Page.LoadControl("/offer/offernote.ascx"))
                Case "9"
                    pnlContent.Controls.Add(Page.LoadControl("/offer/allofferlist.ascx"))
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
