<%@ Page Language="vb" EnableViewState="false"  %>

<%@ Import Namespace="ASPNetPortal" %>
<%@ Import Namespace="System.Configuration.ConfigurationManager" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<%@ Register TagPrefix="portal" TagName="Fotter" Src="../../desktopportaFotter.ascx" %>
<%@ Register TagPrefix="uc1" TagName="DesktopModuleFootter" Src="../../DesktopModuleFootter.ascx" %>
<%@ Register TagPrefix="uc1" TagName="DesktopModuleTitle" Src="../../DesktopModuleTitle.ascx" %>
<%@ Register TagPrefix="portal" TagName="banner" Src="../../desktopportalbanner.ascx" %>


 
<%@ Register Assembly="System.Web.Extensions" Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="solpart" Namespace="Solpart.WebControls" Assembly="SolpartWebControls" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">

    <title>Çerçeve stüdyosu</title>      
   
    <meta name="robots" content="INDEX,FOLLOW" />
    <meta name="robots" content="all" />
    <meta name="description" content="Çerçeve stüdyosu" runat="server" id="description" />
    <meta name="keywords" content="Çerçeve stüdyosu" runat="server" id="keywords" />
    <meta http-equiv="Content-Type" content="text/html;" />
    <script src="/global.js" type="text/javascript"></script>
   

 
</head>
<body style="margin: 0" >
 
    <form id="Form1" name="Form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table id="xx" cellspacing="0" cellpadding="0" align="center" border="0">
            <tr id="xx_tr">
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr valign="top">
                <td class="cerv_leftbanner_seperator leftbanner_seperator">
                </td>
                <td>
                    <portal:banner ID="DB" runat="server"></portal:banner>
                </td>
                <td class="cerv_rightbanner_seperator rightbanner_seperator">
                </td>
            </tr>
        </table>
        <table id="zz" cellspacing="0" cellpadding="0" align="center" border="0">
            <tr>
                <td>
                </td>
                <td>
                    <table id="Table2" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr valign="top">
                            <td class="cerv_leftpane_seperator leftpane_seperator">
                            </td>
                            <td id="MostLeftPane" runat="server" visible="false">
                            </td>
                            <td valign="top">
                                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                    <tr valign="top">
                                        <td id="TopLeftPane" runat="server" visible="false">
                                        </td>
                                        <td class="cerv_ustpane_seperator2 ustpane_seperator2">
                                        </td>
                                        <td id="TopContentPane" runat="server" visible="false">
                                        </td>
                                        <td class="cerv_ustpane_seperator2 ustpane_seperator2">
                                        </td>
                                        <td id="TopRightPane" runat="server" visible="false">
                                        </td>
                                    </tr>
                                </table>
                                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                    <tr valign="top">
                                        <td id="LeftPane" runat="server" visible="false">                                        
                                        </td>
                                        <td class="cerv_pane_seperator2 pane_seperator2">
                                        </td>
                                        <td id="ContentPane" runat="server">
                                         <%--Ýçerik--%>
<iframe id="pfrm" src="http://atlantisresim.com/v2/ostudio.php?kod=<%=Request.QueryString("pcode") %>&uid=<%=Request.QueryString("pid") %>&fiyat=<%= SatisFiyati %>" marginheight="0" marginwidth="0" frameborder="0" scrolling="no" style="border:none; overflow:hidden; width:910px; height:800px;padding:0;margin:0;"></iframe>
 
 <%--Ýçerik--%>
                                        </td>
                                        <td class="cerv_pane_seperator2 pane_seperator2">
                                        </td>
                                        <td id="RightPane" runat="server">
                                        
                                        </td>
                                    </tr>
                                </table>
                                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                    <tr valign="top">
                                        <td id="BottomLeftPane" runat="server" visible="false">
                                        </td>
                                        <td class="cerv_altpane_seperator2 altpane_seperator2">
                                        </td>
                                        <td id="BottomContentPane" runat="server" >
                                           
                                        </td>
                                        <td class="cerv_altpane_seperator2 altpane_seperator2">
                                        </td>
                                        <td id="BottomRightPane" runat="server" visible="false">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="cerv_rightpane_seperator rightpane_seperator">
                            </td>
                            <td id="MostRightPane" runat="server" visible="false">
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                </td>
            </tr>
        </table>
        <table id="xxy" cellspacing="0" cellpadding="0" align="center" border="0">
            <tr>
                <td class="cerv_leftfotter_seperator leftfotter_seperator">
                </td>
                <td>
                    <portal:Fotter ID="DF" runat="server">
                    </portal:Fotter>
                </td>
                <td class="cerv_rightfotter_seperator rightfotter_seperator">
                </td>
            </tr>
            <tr class="cerv_xxy_tr xxy_tr">
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
                                                    
    </form>



<script runat="server" type="text/VB">
   
    Dim cnn As New DatabaseDB
    Public ProductId As Integer
    Public UserIndirim As Decimal
    Public StokIskActive As Boolean
    Public StokIsk As Integer
    Public UserId As String
    Public SatisFiyati As Decimal = 0
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        
        'Standart kontroller
        ''''''''''''''''''''''''''''''''''''''''''''''''''''
        If Not Me.FindControl("head1") Is Nothing Then
            Dim head As Control = Me.FindControl("head1")
            Dim l As New Literal
            l.Text = "<link rel=""Stylesheet"" type=""text/css"" href=""" & getcss() & """ />"
            head.Controls.Add(l)
            If ConfigurationManager.AppSettings("icon") <> "" Then
                Dim l0 As New Literal
                l0.Text = "<link rel=""SHORTCUT ICON"" href=""" & BaseUrl & "/" & ConfigurationManager.AppSettings("icon") & """ />"
                head.Controls.Add(l0)
            End If
        End If
        
        'eticaret aktif
        IsEmarket()
        'b2b 
        If ConfigurationManager.AppSettings("B2B") = "True" Then
            If Not HttpContext.Current.User.Identity.IsAuthenticated() Then
                MyRedirect(IIf(ConfigurationManager.AppSettings("B2B") = "True", "../../PartnerLogin.aspx", "../Login.aspx"), True)
            End If
        End If
      
        ProductId = Request.QueryString("pid")
        If ProductId = Nothing Then
            MyRedirect("../../error.aspx")
        End If
      
        ''''''''''''''''''''''''''''''''''''''''''''''''''''
        'Standart kontroller sonu
        
        If IsNumeric(UserId) Then
            Dim usr As New UsersDB
            Dim dru As SqlDataReader
            dru = usr.GetUserIndirim(UserId)
            dru.Read()
            UserIndirim = dru(0)
            StokIskActive = dru(1)
            StokIsk = dru(2)
            dru.Close()
        Else
            UserIndirim = 0
            StokIskActive = 0
            StokIsk = 0
        End If
        
        'ürün detayý getir
        Dim cmd As New SqlCommand("GetProductDetails5", cnn.conn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@PortalId", PortalId)
        cmd.Parameters.AddWithValue("@ProductId", ProductId)
        cmd.Parameters.AddWithValue("@StokIndirim", StokIsk)
        cmd.Parameters.AddWithValue("@StokIskActive", StokIskActive)
        cnn.connectDb()
        
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
            
        If dr.Read() Then

            'ürün adý
            ' dr("ProductName")
            
            'ürün kodu
            ' dr("ProductCode")            
            
            'ürün kdv dahil fiyatý
            'formatCurDoviz(CalcKdvDahil(CalcIndirim(CalcIndirim(dr("SatisFiyati") * dr("Rate"), UserIndirim), dr("Indirim")), dr("KdvRate")))
            
            'ürün kdv hariç TL fiyatý
            SatisFiyati = formatCurDoviz(CalcIndirim(CalcIndirim(dr("SatisFiyati") * dr("Rate"), UserIndirim), dr("Indirim")))
          
            'kdv Oraný
            'ChkNullToDecimal(dr("KdvRate"))
            
            'Satýþ fiyatlarý
            'ChkNullToDecimal(dr("SatisFiyati"))
            'ChkNullToDecimal(dr("SatisFiyati1"))
            'ChkNullToDecimal(dr("SatisFiyati2"))
            'ChkNullToDecimal(dr("SatisFiyati3"))
            
            'iskontolar
            'ChkNullToDecimal(dr("Isk1"))
            'ChkNullToDecimal(dr("Isk2"))
            'ChkNullToDecimal(dr("Isk3"))
            
            'Parabirimleri
            'Currency = dr("CurrencyName")
            'ChkNullString(dr("Currency1"))
            'ChkNullString(dr("Currency2"))
            'ChkNullString(dr("Currency3"))

            'Kurlar
            'ChkNullToDecimal(dr("Rate1"))
            'ChkNullToDecimal(dr("Rate2"))
            'ChkNullToDecimal(dr("Rate3"))

            'Havale indirimi varsa yada havale fiyatý tespit etildiyse
            If TransferDisCount > 0 Or (ChkNullToDecimal(dr("SatisFiyati0")) > 0 And ChkNullToDecimal(dr("Rate0"))) > 0 Then
                If ChkNullToDecimal(dr("SatisFiyati0")) > 0 And ChkNullToDecimal(dr("Rate0")) > 0 Then
                    'ürün kartýndaki havale fiyatý
                    'formatCurDoviz(CalcKdvDahil(CalcIndirim(dr("SatisFiyati0") * dr("Rate0"), UserIndirim), dr("KdvRate")))
                    'formatCurDoviz(CalcIndirim(dr("SatisFiyati0") * dr("Rate0"), UserIndirim)) 'kdv hariç
                Else
                    'Havale indirim oraný hesaplanarak havale fiyatý
                    'formatCurDoviz(CalcKdvDahil(CalcIndirim(CalcIndirim(CalcIndirim(dr("SatisFiyati") * dr("Rate"), UserIndirim), dr("Indirim")), TransferDisCount), dr("KdvRate")))
                    'formatCurDoviz(CalcIndirim(CalcIndirim(CalcIndirim(dr("SatisFiyati") * dr("Rate"), UserIndirim), dr("Indirim")), TransferDisCount)) ' kdv hariç
                End If
            End If

            'Kredi Kartý Indirimi varsa (Tek çekim indirimi)
            If CreditCardDisCount > 0 Then
                'kredi kartý tek çekim indirimi
                ' formatCurDoviz(CalcKdvDahil(CalcIndirim(CalcIndirim(CalcIndirim(dr("SatisFiyati") * dr("Rate"), UserIndirim), dr("Indirim")), CreditCardDisCount), dr("KdvRate")))
            End If

            ' envanter
            ' ChkNullToNumber(dr("StockQty"))
            
            'Stokta yoksa sat
            If dr("StockQty") > 0 Or ChkNullBoolean(dr("SellNoneStock")) Then
                'sat
            Else
                'stokta yok
            End If
           
            'Ücretsiz kargo
            If ((Not ChkNullBoolean(dr("ForceCargo"))) And CalcKdvDahil(CalcIndirim(CalcIndirim(dr("SatisFiyati") * dr("Rate"), UserIndirim), dr("Indirim")), dr("KdvRate")) >= _portalsettings.CargoLimit) Or ChkNullToNumber(dr("Desi"), 0) = 0 Then
                ''Kargo ücretsiz            
            Else
                '  
            End If
            
        Else
            'ürün bulunamadý
        End If
            dr.Close()
            cnn.disconnectDb()
        
    End Sub
    </script>
</body>
</html>
