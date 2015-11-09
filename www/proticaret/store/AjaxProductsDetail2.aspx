<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AjaxProductsDetail2.aspx.vb" Inherits="ASPNetPortal.AjaxProductsDetail2" %>

<%
    Dim ProductId As Integer
    
    Dim firstitem As Integer = 0
    Dim culture As New System.Globalization.CultureInfo("tr-TR")
    Dim dvProducts As System.Data.DataView = Nothing
    Dim dvFrame As System.Data.DataView = Nothing
    Dim frameid As String = ""
    Dim paspartucolor As String = ""
    Dim paspartuborder As String = ""
    Dim paspartuid As String = ""
    Dim paspartucolorName As String = ""
    Dim PaspartuPrice As Double = 0
    Dim TotalPrice As Double = 0
    Dim SubTotal As Double = 0
    Dim temp_wall_color As String = ""

    Dim StokIskActive As Boolean
    Dim StokIsk As Integer
    Dim cnn As New ASPNetPortal.DatabaseDB
    Dim enabled As Boolean = True
    If Request.QueryString("id") IsNot Nothing Then
        ProductId = Request.QueryString("id").ToString()
    
        
        Dim cmd0 As New SqlDataAdapter("GetProductDetails5", cnn.conn)
        cmd0.SelectCommand.CommandType = CommandType.StoredProcedure
        cmd0.SelectCommand.Parameters.AddWithValue("@PortalId", PortalId)
        cmd0.SelectCommand.Parameters.AddWithValue("@ProductId", ProductId)
        cmd0.SelectCommand.Parameters.AddWithValue("@StokIndirim", StokIsk)
        cmd0.SelectCommand.Parameters.AddWithValue("@StokIskActive", StokIskActive)
        
        Dim ds0 As New DataSet
        cmd0.Fill(ds0)
        dvProducts = ds0.Tables(0).DefaultView
        If dvProducts.Count = 0 Then
            MyRedirect("../error.aspx")
        End If
        'dvRelatedProducts = products.MTD_GetRelatedProducts() 
        'dvSoldProducts = products.MTD_GetRelatedSoldProducts() 
    End If

    If Request.QueryString("frameid") IsNot Nothing Then
        frameid = Request.QueryString("frameid").ToString()
    End If

   
  
    If Request.QueryString("temp_wall_color") IsNot Nothing Then
        
        temp_wall_color = "#" & Request.QueryString("temp_wall_color").ToString()
        
    End If
    
    If Request.QueryString("paspartuborder") IsNot Nothing Then
        If Request.QueryString("paspartuborder").ToString() > "0" Then
            paspartuborder = Request.QueryString("paspartuborder").ToString()
            
            If Request.QueryString("paspartuid") IsNot Nothing Then
                If Request.QueryString("paspartuid").ToString() > "0" Then
                    paspartuid = Request.QueryString("paspartuid").ToString()
        
                    Dim strSQL0 As String = "Select * from posterpaspartu where ID=@ID"
                    Dim cmd0 As New SqlDataAdapter(strSQL0, cnn.conn)
                    cmd0.SelectCommand.Parameters.AddWithValue("@ID", paspartuid)
                    Dim ds0 As New DataSet
                    cmd0.Fill(ds0)
                    'Try
                    paspartucolorName = ds0.Tables(0).DefaultView(0)("PaspartuCode")
                    paspartucolor = ds0.Tables(0).DefaultView(0)("paspartucolor")
                
           
                    'Catch ex As Exception
                    '    paspartucolor = "ffffff"
                    '    paspartucolorName = "Beyaz"
                    'End Try
                Else
                    paspartuborder = "0"
                    paspartucolorName = ""
                    paspartucolor = ""
                End If
            Else
                paspartuborder = "0"
                paspartucolorName = ""
                paspartucolor = ""
            End If
        Else
            paspartuborder = "0"
            paspartucolorName = ""
            paspartucolor = ""
        End If
    Else
        paspartuborder = "0"
        paspartucolorName = ""
        paspartucolor = ""
    End If
    
    
    

    If frameid = "" Then
        frameid = "01"
    End If

    'frame.ID = frameid 
    'dvFrame = frame.MTD_Frame() 
    cnn.connectDb()
    Dim strSQL As String = "Select * from posterframes where FrameCode=@frameid"
    Dim cmd As New SqlDataAdapter(strSQL, cnn.conn)
    cmd.SelectCommand.Parameters.AddWithValue("@frameid", frameid)
    Dim ds As New DataSet
    cmd.Fill(ds)
    dvFrame = ds.Tables(0).DefaultView
    
    Dim kmt As New SqlCommand("select * from ProductUnits where ProductId=@ProductId", cnn.conn)
    kmt.Parameters.AddWithValue("@ProductId", ProductId)
   
    Dim dr2 As SqlDataReader
    dr2 = kmt.ExecuteReader
    Dim B2 As Double = 0
    Dim C2 As Double = 0
    While dr2.Read
        B2 = dr2("En")
        C2 = dr2("Boy")
    End While

   
        
    Dim D2 As Double = Double.Parse(paspartuborder)
    Dim E2 As Double = 0
    If D2 <> 0 Then
        Dim id As Integer = Request.QueryString("paspartuid")
        Dim cmd1 As New SqlCommand("select Price from posterpaspartu where ID=@ID", cnn.conn)
        cmd1.Parameters.AddWithValue("@ID", id)
        E2 = cmd1.ExecuteScalar
    End If
    
    Dim cmd3 As New SqlCommand("select glassPrice from PosterSettings", cnn.conn)
    Dim GP As Double = cmd3.ExecuteScalar
    
    Dim cmd4 As New SqlCommand("select workPrice from PosterSettings", cnn.conn)
    Dim GW As Double = cmd4.ExecuteScalar
    
    Dim F2 As Double = 1
    Dim G2 As Double = 1

    Try
        F2 = Double.Parse(dvFrame(0)("PricePerCm").ToString().Replace(".", ","), culture)
        G2 = Double.Parse(dvFrame(0)("Width").ToString().Replace(".", ","), culture)

    Catch ex As Exception

    End Try
    cnn.disconnectDb()
    Dim newFrameHeight As Double = (C2 + 2 * (D2 + G2 - 0.5))
    Dim newFrameWidth As Double = (B2 + 2 * (D2 + G2 - 0.5))
    
    Dim NewDesi As Double = 0
    Try
        NewDesi = (newFrameHeight * newFrameWidth * 4) / 3000
    Catch ex As Exception

    End Try
    'Response.Write(float.Parse(dvFrame(0)("PricePerCm").ToString().Replace(".", ","), culture).ToString() + "--" + paspartuborder.ToString()); 

    Dim GlassPrice As Double = ((B2 + (2 * D2) + 1) * (C2 + (2 * D2)) + 1) * GP
    
    Dim FramePrice As Double = ((2 * (B2 + C2 + 4 * D2) + G2 * 10) * F2)
    PaspartuPrice = ((B2 + (2 * D2)) * (C2 + (2 * D2)) * 10) * E2 / 10000

    Dim Workmanship As Double = ((B2 + (2 * D2)) * (C2 + (2 * D2))*4) * GW/10000

    Dim KDV As Double = (FramePrice + PaspartuPrice + GlassPrice + Workmanship) * 0.17999999999999999
    SubTotal = FramePrice + PaspartuPrice + GlassPrice + Workmanship + KDV
    'SubTotal1 = 0.85 * (FramePrice + PaspartuPrice + GlassPrice + Workmanship + KDV) 
    'TotalPrice = SubTotal1 + Double.Parse(dvProducts(0)("SatisFiyati").ToString().Replace(".", ","), culture)
    
    TotalPrice = SubTotal + CalcKdvDahil(dvProducts(0)("SatisFiyati") * dvProducts(0)("Rate"), dvProducts(0)("KdvRate"))

    If Request.QueryString("type") IsNot Nothing Then
       

        ProductId = Request.QueryString("id").ToString()
        Dim cart As New ASPNetPortal.ShoppingCartDB
        Dim cartId As String = GetShoppingCartId()


        Dim sbDescription As New StringBuilder()
        sbDescription.Append("Çerçeve:(# " & frameid & " ," & dvFrame(0)("Material").ToString() & "," & dvFrame(0)("Type").ToString() & ")")
        
        If paspartuid <> "" Then
            sbDescription.Append("<br />Paspartu:( " & Convert.ToString(Integer.Parse(paspartuborder)) & " cm," & paspartucolorName & "( " & ")")
        Else
            sbDescription.Append("<br />Paspartu: (Yok)")
        End If
        
        
        Dim sbAttributes As New StringBuilder()
        sbAttributes.Append(frameid & ",")
        sbAttributes.Append(Integer.Parse(paspartuborder) & ",")


        Dim i As Integer
        'i = cart.AddItem(cartId, 0, ProductId, 0, 1, sbDescription.ToString, sbAttributes.ToString, SubTotal1)
        i = cart.AddItem(cartId, 0, ProductId, 0, 1, "<div>" & sbDescription.ToString & "</div>", sbAttributes.ToString, SubTotal - KDV, NewDesi)
        'i = cart.AddItem(cartId, 0, ProductId, 0, 1, "<div>" & sbDescription.ToString & "</div>", sbAttributes.ToString, 0)
        If i = 0 Then
            Response.Redirect(BaseUrl & "/store/cart.aspx?add=no", True)
        ElseIf i = 2 Then
            Response.Redirect(BaseUrl & "/store/cart.aspx?add=no1", True)
        Else
            Response.Redirect(BaseUrl & "/store/cart.aspx", True)
        End If
    End If
    'Response.Write(Total.ToString()); 


%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="poster">
<style type="text/css">
.poster .cartbutton {
	padding					: 10px 15px;
	color					: #FFF;
	font-size				: 14px;
	font-weight				: 600;
	-webkit-border-radius	: 7px;
	-moz-border-radius		: 7px;
	border-radius			: 7px;
	border					: 1px solid #EA6E15;
	background				: #EA6E15 url("../themes/default/css/images/ui-bg_glass_75_ea6e15_1x400.png") 50% 50% repeat-x;
}
.poster .cartbutton:hover {
	border					: 1px solid #ea9715;
	background				: #ea9715 url("../themes/default/css/images/ui-bg_glass_75_ea9715_1x400.png") 50% 50% repeat-x;
}
</style>

    <table width="740px" border="0">
        <tr>
            <%--    <td colspan="2"><table width="100%" border="0" cellpadding="30" id="wallid1" 
	  <%if(Request.QueryString("temp_wall_color")<>"") then %>
	  bgcolor="<%=temp_wall_color%>"
	  <% end if %>--%>

            <td colspan="2">
                <table width="100%" border="0" cellpadding="10" id="wallid1" bgcolor="<%=temp_wall_color%>">

                    <tr>
                        <td align="left">
                            <table border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <img src="/uploads/poster/frames/<%=frameid%>/01.gif"></td>
                                    <td background="/uploads/poster/frames/<%=frameid%>/02.gif"></td>
                                    <td>
                                        <img src="/uploads/poster/frames/<%=frameid%>/03.gif"></td>
                                </tr>
                                <tr>
                                    <td background="/uploads/poster/frames/<%=frameid%>/04.gif"></td>
                                    <td align="center" bgcolor="#<%=paspartucolor%>">
                                        <img src="/store/makethumb.aspx?file=<%=dvProducts(0)("Path").ToString()%>&intSize=400" style="border:<%=paspartuborder*5%>; margin:<%=Convert.ToInt32(paspartuborder) * 10 %>px;" />
                                    </td>
                                    <td background="/uploads/poster/frames/<%=frameid%>/05.gif"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="/uploads/poster/frames/<%=frameid%>/06.gif"></td>
                                    <td background="/uploads/poster/frames/<%=frameid%>/07.gif"></td>
                                    <td>
                                        <img src="/uploads/poster/frames/<%=frameid%>/08.gif"></td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table width="200" height="100%" border="0" align="center" bgcolor="#FFFFFF">
                                <tr align="center">
                                    <td height="23" colspan="6" nowrap="nowrap" valign="middle" class="Global_Bold_Label">Ürünün Çerçeveli Ebatlarý :            </td>
                                </tr>
                                <tr align="center">
                                    <td height="27" colspan="6" valign="top" class="Global_Normal_Label"><%=Convert.ToString(newFrameWidth)%> x <%=Convert.ToString(newFrameHeight)%> cm.</td>
                                </tr>


                                <tr>
                                    <td width="2%" height="18">&nbsp;</td>
                                    <td width="60%" align="left" class="Global_Bold_Label">Çerçeve : (# <%=frameid%>)</td>
                                    <td colspan="2" align="right" class="Global_Normal_Label"><%=MTD_TrueTypeCurrency(FramePrice.ToString(culture))%> TL</td>
                                    <td width="1%">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="18">&nbsp;</td>
                                    <td height="18" align="left" class="Global_Bold_Label">Paspartu : (<%=Convert.ToString(Integer.Parse(paspartuborder))%> cm <%=paspartucolorName %>)</td>
                                    <td colspan="2" align="right" class="Global_Normal_Label"><%=MTD_TrueTypeCurrency(PaspartuPrice.ToString(culture))%> TL</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="18">&nbsp;</td>
                                    <td height="18" align="left" class="Global_Bold_Label">Cam  <a href="javascript:var PopUpWin = window.open('/uploads/poster/documents/cam.html','','width=400,height=400,scrollbars=no,status=0,toolbar=0,resizable=0')">
                                        <img style="border: 0" alt="info" src="/uploads/poster/images/info.gif" /></a> :</td>
                                    <td colspan="2" align="right" class="Global_Normal_Label"><%=MTD_TrueTypeCurrency(GlassPrice.ToString(culture))%> TL</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="18">&nbsp;</td>
                                    <td height="18" align="left" class="Global_Bold_Label">Ýþçilik :</td>
                                    <td colspan="2" align="right" class="Global_Normal_Label"><%=MTD_TrueTypeCurrency(Workmanship.ToString(culture))%> TL</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="18">&nbsp;</td>
                                    <td height="18" align="left" class="Global_Bold_Label">KDV :</td>
                                    <td colspan="2" align="right" class="Global_Normal_Label"><%=MTD_TrueTypeCurrency(KDV.ToString(culture))%> TL</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr align="center">
                                    <td height="1"></td>
                                    <td height="1"></td>
                                    <td width="9%" height="1"></td>
                                    <td width="28%" height="1" bgcolor="999999"></td>
                                    <td height="1"></td>
                                </tr>
                                <tr align="center">
                                    <td>&nbsp;</td>
                                    <td align="left" class="Global_Bold_Label">Çerçeve Fiyatý : </td>
                                    <td colspan="2" align="right" class="Global_Normal_Label"><%=MTD_TrueTypeCurrency(SubTotal.ToString(culture))%> TL</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <%--<tr align="center">
          <td height="22" class="yazilar01">&nbsp;</td>
          <td align="left" class="icheader2"><span class="icheader">%15</span> Ýndirimli Fiyat  : </td>
          <td colspan="2" align="right" class="yazilar01"><%=MTD_TrueTypeCurrency(SubTotal1.ToString(culture))%> TL</td>
          <td class="yazilar01">&nbsp;</td>
        </tr>--%>
                                <tr align="center">
                                    <td>&nbsp;</td>
                                    <td height="22" align="left" class="Global_Bold_Label"><%=dvProducts(0)("Code15").ToString()%> Fiyatý :</td>
                                    <%--<td colspan="2" align="right" class="yazilar01"><%=MTD_TrueTypeCurrency(dvProducts(0)("SatisFiyati").ToString().Replace(".", ","))%>  TL <%If (dvProducts(0)("Indirim").ToString() <> "0") Then%> --%>
                                    <td colspan="2" align="right" class="Global_Normal_Label"><%= formatCurTL(CalcKdvDahil(dvProducts(0)("SatisFiyati") * dvProducts(0)("Rate"),dvProducts(0)("KdvRate"))) %>  <%If (dvProducts(0)("Indirim").ToString() <> "0") Then%>


                                        <% End If%></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="1" bgcolor="666666" colspan="5"></td>
                                </tr>
                                <tr align="center">
                                    <td class="yazilar01">&nbsp;</td>
                                    <td width="60%" height="30" align="left" class="Global_Bold_Label">Toplam Fiyat : </td>
                                    <td colspan="2" align="right" class="Global_Normal_Label"><%=MTD_TrueTypeCurrency(TotalPrice.ToString(culture))%> TL </td>
                                    <td>&nbsp;</td>
                                </tr>

                                <% If enabled Then%>
                                <tr align="center">
                                    <td height="60" colspan="5" align="center">
                                        <br />
                                       <a id="GoToOrderStep2" class="cartbutton" href="/store/AjaxProductsDetail2.aspx?type=add&id=<%=dvProducts(0)("ProductID").ToString()%>&Amount=1&frameid=<%=frameid%>&paspartucolor=<%=paspartucolor%>&paspartuid=<%=paspartuid %>&paspartuborder=<%=Convert.ToString(integer.Parse(paspartuborder))%>">Satýn Al</a>
                                        
                                        <%--<a class="cartbutton" href="/store/AjaxProductsDetail2.aspx?type=add&id=<%=dvProducts(0)("ProductID").ToString()%>&Amount=1&frameid=<%=frameid%>&paspartucolor=<%=paspartucolor%>&paspartuid=<%=paspartuid %>&paspartuborder=<%=Convert.ToString(integer.Parse(paspartuborder))%>">Ekle</a>--%>

                                    </td>
                                </tr>
                                <% Else%>
                                <tr align="center">
                                    <td height="60" colspan="5" align="center">
                                        <br />
                                        <span class="Global_HataMesaji">Kargo sýnýrlamasý nedeniyle bu ürün çerçevelenememektedir.</span>
                                    </td>
                                </tr>
                                <% End If%>
                                <tr align="center">
                                    <td colspan="5" class="UrunListesi_UrunAdi_Link">&nbsp;<strong><%=dvProducts(0)("ProductName").ToString()%></strong></td>
                                </tr>
                                <tr align="center">
                                    <td colspan="5" class="UrunListesi_UrunAdi_Link">&nbsp;<span><%=dvProducts(0)("Code15").ToString()%></span></td>
                                </tr>
                                <tr align="center">
                                    <td colspan="5" class="UrunListesi_UrunAdi_Link">&nbsp;<%=Convert.ToString(double.Parse(B2))%> x <%=Convert.ToString(C2)%> cm. </td>
                                    <%--<td colspan="5" class="formyazilar02">&nbsp;<%=Convert.ToString(double.Parse(dvProducts(0)("Width").ToString())/10)%> x <%=Convert.ToString(double.Parse(dvProducts(0)("Height").ToString())/10)%> cm. </td>--%>
                                </tr>
                                <tr>
                                    <td height="20" colspan="5" align="center" class="UrunListesi_UrunAdi_Link"><%=dvProducts(0)("MarKName").ToString()%></td>
                                </tr>


                            </table>

                            <%--<input name="temp_wall_color" type="hidden" id="temp_wall_color" value="ffffff" />--%>
                            <input type="hidden" name="frameid" id="frameid" value="<%=frameid%>" />
                            <input type="hidden" name="paspartucolor" id="paspartucolor" value="<%=paspartucolor%>">
                            <input type="hidden" name="paspartuborder" id="paspartuborder" value="<%=paspartuborder%>">
                            <input type="hidden" name="paspartuid" id="paspartuid" value="<%=paspartuid%>"></td>
                </table>
            </td>
        </tr>
    </table>
</body>
    <script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script>
</html>
