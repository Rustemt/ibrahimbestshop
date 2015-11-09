<%@ Page Language="vb" EnableViewState="false"  %>

<%@ Import Namespace="ASPNetPortal" %>
<%@ Import Namespace="System.Configuration.ConfigurationManager" %>
<%@ Import Namespace="System.Data.SqlClient" %>

 


<script runat="server" type="text/VB">
    '<script type="text/javascript"> var xmlHttp; function GetXmlHttpObject() {var xmlHttp = null; try {// Firefox, Opera 8.0+, Safari
    'xmlHttp = new XMLHttpRequest();} catch (e) {// Internet Explorer
    'try { xmlHttp = new ActiveXObject("Msxml2.XMLHTTP"); } catch (e) { xmlHttp = new ActiveXObject("Microsoft.XMLHTTP"); } } return xmlHttp;} function callAjaxSearch(value) {xmlHttp = GetXmlHttpObject();if (xmlHttp == null) {return;}if (value != '') {document.getElementById("divAjaxContainer").style.display = "block"; document.getElementById("divAjaxLoading").style.display = "none"; var url = "/emarket/ajaxsearch.aspx";now = new Date(); nocache = '' + now.getHours() + '-' + now.getMinutes() + '-' + now.getSeconds() + '-' + now.getMilliseconds(); url = url + "?ProductName=" + encodeURIComponent(value) + '&nocache=' + nocache;xmlHttp.onreadystatechange = stateChanged;xmlHttp.open("GET", url, true);xmlHttp.send(null);} else { HideAjaxSearch() } } function HideAjaxSearch() { document.getElementById('divAjaxSearch').style.display = 'none'; document.getElementById("divAjaxContainer").style.display = "none"; } function ShowAjaxSearch() { document.getElementById('divAjaxSearch').style.display = "block"; document.getElementById("divAjaxContainer").style.display = "block"; } function stateChanged() {if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {var xmlResponse = xmlHttp.responseText;if (xmlResponse != '') {document.getElementById("divAjaxSearch").innerHTML = xmlResponse;document.getElementById('divAjaxSearch').style.display = "block"; document.getElementById("divAjaxContainer").style.display = "block"; document.getElementById("divAjaxLoading").style.display = "none";}else {document.getElementById("divAjaxSearch").innerHTML = ""; document.getElementById('divAjaxSearch').style.display = 'none';} } }  
    ''/script'
    
    'Kullaným 
    '<script type="text/javascript">
    'var xmlHttp;function GetXmlHttpObject(){
    'var xmlHttp=null;
    'try{// Firefox, Opera 8.0+, Safari
    'xmlHttp=new XMLHttpRequest();
    '}
    'catch (e){// Internet Explorer
    'try{
    'xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
    '}
    'catch (e){xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");}}
    'return xmlHttp;}function callAjaxSearch(value) { 
    'xmlHttp = GetXmlHttpObject(); 
    'if (xmlHttp==null) { 
    'return; } 
    'if (value != '') {       
    'document.getElementById("divAjaxContainer").style.display = "block";
    'document.getElementById("divAjaxLoading").style.display = "none";
    'var url = "/emarket/ajaxsearch.aspx"; 
    'now = new Date();
    'nocache = '' + now.getHours() + '-' + now.getMinutes() + '-' + now.getSeconds() + '-' + now.getMilliseconds();
    'url = url + "?ProductName=" + encodeURIComponent(value) + '&nocache=' + nocache;            
    'xmlHttp.onreadystatechange = stateChanged; 
    'xmlHttp.open("GET",url,true); 
    'xmlHttp.send(null); 
    '}
    'else{HideAjaxSearch()} 
    '}
    'function HideAjaxSearch() {
    'document.getElementById('divAjaxSearch').style.display='none';
    'document.getElementById("divAjaxContainer").style.display = "none";
    '}
    'function ShowAjaxSearch() {
    'document.getElementById('divAjaxSearch').style.display = "block";
    'document.getElementById("divAjaxContainer").style.display = "block";
    '}
    'function stateChanged() { 
    'if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete") {
    'var xmlResponse = xmlHttp.responseText; 
    'if (xmlResponse!='') { 
    'document.getElementById("divAjaxSearch").innerHTML = xmlResponse; 
    'document.getElementById('divAjaxSearch').style.display = "block";
    'document.getElementById("divAjaxContainer").style.display = "block";
    'document.getElementById("divAjaxLoading").style.display = "none";
    '} 
    'else { 
    'document.getElementById("divAjaxSearch").innerHTML ="";
    'document.getElementById('divAjaxSearch').style.display='none';
    '}
    '}
    '}
    ''/script' burasý düzeltilecek
    
    '<input type="text" name="txtAjaxSearch" onKeypress="if (event.keyCode==13) LigthSearch('txtAjaxSearch','btnSearch');" onkeyup="callAjaxSearch(this.value)" title="&Uuml;r&uuml;n Kodu veya Adý ile aranabilir." id="txtAjaxSearch" class="UrunArama1_TextBox" />
    '<a name="btnSearch" href="#" onclick="LigthSearch('txtAjaxSearch','btnSearch');" id="btnSearch" class="UrunArama_Buton"></a>
    '<div style="z-index: 6666; float: left; margin-left: 0px; padding-top: 0px; position: absolute" id="divAjaxContainer">
    '<div style="display: none" id="divAjaxLoading">
    '<div style="padding-left: 132px; padding-top: 3px">
    '<img width="30" height="30" src="../../images/yukleniyor.gif" alt="" /> 
    '  Yükleniyor...
    '</div>
    '</div>
    '<div id="divAjaxSearch">&nbsp;</div>
    '</div>
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Try
            Dim ProductName As String = Server.UrlDecode(Request("ProductName").ToString())
             
            Dim cnn As New DatabaseDB
            Dim cmd As New SqlCommand("", cnn.conn)
                
            Dim StockFilter As String = ""
            Dim sqlstr As String = "select top 10 CatID,CatName,CatUrl ,ProductUrl ,SatisFiyati1,Currency1,ProductName,MarkName,Path from ProductListLigth where 1=1 [%x%] "
                
            
                
            Dim str As String = ""
            Dim param() As String = ProductName.Split(" ")
            Dim xi As Integer = 1
            For Each s As String In param
                       
                If s.Trim <> "" Then
                    str &= " and (ProductName  like '%' + @P" & xi & " + '%' COLLATE SQL_Latin1_General_CP1_CI_AI or SearchKeywords  like '%' + @P" & xi & " + '%' COLLATE SQL_Latin1_General_CP1_CI_AI)"
                    cmd.Parameters.AddWithValue("@P" & xi, s)
                    xi += 1
                End If
                                       
            Next
            cmd.Connection = cnn.conn
            cmd.CommandText = sqlstr.Replace("[%x%]", str).Replace("1=1  and", "")
                
            cnn.connectDb()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            Response.Clear()
           
            ' Kolonlar
                
            'CatName,
            'CatUrl ,
            'ProductUrl ,
            'MarkUrl,
            'SatisFiyati,
            'Currency,
            'ProductName,
            'MarkName,
            'ImagePath
            Dim sb As New StringBuilder
            
            Dim i As Integer = 0
            While dr.Read()
                Dim pName As String = dr("ProductName")
                Dim param1() As String = ProductName.Split(" ")
                For Each s As String In param1
                    pName = pName.Replace(s, "<b>" & s & "</b>")
                Next
                    
                    
                sb.Append("<tr>")
                sb.Append("<td width='85' style='vertical-align:top;'><a style='color:#4E7F01; font-family:Arial; text-decoration:none; font-size:12px;' href='" & BaseUrl & dr("CatUrl").ToString.Substring(0, dr("CatUrl").ToString.Length - 1) & ".aspx" & "'>" & dr("CatName") & "</a></td>")
                sb.Append("<td rowspan='2' style='text-align:center; vertical-align:top;'><a href='" & BaseUrl & dr("ProductUrl").ToString.Substring(0, dr("ProductUrl").ToString.Length - 1) & ".aspx" & "?CatId=" & dr("CatId") & "'> <img src='/emarket/makethumb.aspx?file=" & dr("Path") & "&intSize=45' border='0'></a></td>")
                sb.Append("<td width='215' style='vertical-align:top;'><a style='color:#B51E01; font-family:Arial; text-decoration:none; font-size:12px; font-weight:bold;' href='" & BaseUrl & dr("ProductUrl").ToString.Substring(0, dr("ProductUrl").ToString.Length - 1) & ".aspx" & "?CatId=" & dr("CatId") & "'>" & pName & "</a></td>")
                sb.Append("</tr>")
                sb.Append("<tr>")
                sb.Append("<td style='vertical-align:top;'><a style='font-family:Arial; text-decoration:none; font-size:12px;' href='" & BaseUrl & "/marka/" & doUrl(dr("MarkName").ToString()) & ".aspx" & "'><font size='2' face='vedana' color='#000000'>" & dr("MarkName") & "</font></a></td>")
                sb.Append("<td style='vertical-align:top; font-family:Arial; text-decoration:none; font-size:12px;'><div style='font-family:Arial; text-decoration:none; font-size:12px;'><b>Fiyat :</b> " & dr("SatisFiyati1") & "&nbsp;" & dr("Currency1") & " + KDV</div></td>")
                sb.Append("</tr>")
                sb.Append("<tr>")
                sb.Append("<td colspan='3'><hr size=1px color=#62A300 /></td>")
                sb.Append("</tr>")
                   
                'sb.Append("<tr>")
                'sb.Append("<td width='85' style='vertical-align:top;'><a style='color:#4E7F01; font-family:Arial; text-decoration:none; font-size:12px;' href='" & BaseUrl & dr("CatUrl").ToString.Substring(0, dr("CatUrl").ToString.Length) & ".aspx" & "'>" & dr("CatName") & "</a></td>")
                'sb.Append("<td rowspan='2' style='text-align:center; vertical-align:top;'><a href='" & BaseUrl & dr("ProductUrl").ToString.Substring(0, dr("ProductUrl").ToString.Length) & ".aspx" & "'> <img src='/emarket/makethumb.aspx?file=" & dr("ImagePath") & "&intSize=45' border='0'></a></td>")
                'sb.Append("<td width='215' style='vertical-align:top;'><a style='color:#B51E01; font-family:Arial; text-decoration:none; font-size:12px; font-weight:bold;' href='" & BaseUrl & dr("ProductUrl").ToString.Substring(0, dr("ProductUrl").ToString.Length) & ".aspx" & "?CatId=" & dr("CatId") & "'>" & pName & "</a></td>")
                'sb.Append("</tr>")
                'sb.Append("<tr>")
                'sb.Append("<td style='vertical-align:top;'><a style='font-family:Arial; text-decoration:none; font-size:12px;' href='" & BaseUrl & "/marka/" & doUrl(dr("MarkName")) & ".aspx" & "'><font size='2' face='vedana' color='#000000'>" & dr("MarkName") & "</font></a></td>")
                'sb.Append("<td style='vertical-align:top; font-family:Arial; text-decoration:none; font-size:12px;'><div style='font-family:Arial; text-decoration:none; font-size:12px;'><b>Fiyat :</b> " & dr("SatisFiyati") & "&nbsp;" & dr("Currency") & " + KDV</div></td>")
                'sb.Append("</tr>")
                'sb.Append("<tr>")
                'sb.Append("<td colspan='3'><hr size=1px color=#62A300 /></td>")
                'sb.Append("</tr>")
                i += 1

            End While
            If i = 0 Then
                Response.Write("")
                'Response.Write("Ürün Bulunamadý.<br/>Lütfen arama kriterlerinizi daraltýp tekrar deneyin.")
            Else
                Response.Write("<table style='border-right:solid 1px red;' cellspacing=0 cellpadding=2 bgcolor=white width=355px >")
                Response.Write(sb.ToString)
                Response.Write("</table>")
            End If
           
           
            dr.Close()
            cnn.disconnectDb()
            
        Catch ex As Exception
            Response.Clear()
            Response.Write("")
        End Try
    End Sub
    </script>