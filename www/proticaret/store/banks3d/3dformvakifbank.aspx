<%@ Page SmartNavigation="false" Language="vb" AutoEventWireup="false"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server" id="head1">
    <title>3D Ödeme Sayfası</title>
 <script type="text/javascript"> 
  function HideFrameErr()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
 }
function createHash()
{
var m=document.getElementById("Form1");
var hashdata = m.uyeno.value + m.kkno.value + m.gectar.value + m.tutar.value + m.dcins.value + m.sipbil.value + m.sesbil.value + m.burl.value + m.hurl.value + m.zaman.value + '<%=Session("GetwayXcip") %>';
m.ozet.value = encode64(sha1Hash(hashdata));
return 0;
}

var keyStr = "ABCDEFGHIJKLMNOP" +
             "QRSTUVWXYZabcdef" +
             "ghijklmnopqrstuv" +
             "wxyz0123456789+/" +
             "=";

function encode64(input) {
   var output = "";
   var chr1, chr2, chr3 = "";
   var enc1, enc2, enc3, enc4 = "";
   var i = 0;

   do {
       chr1 = eval('0x' + input.charAt(i++) + input.charAt(i++));
       if (i<input.length)
            chr2 = eval('0x' + input.charAt(i++) + input.charAt(i++));
       else 
            i=i+2;
       if (i<input.length) 
            chr3 = eval('0x' + input.charAt(i++) + input.charAt(i++));
       else 
            i=i+2;
		
       enc1 = chr1 >> 2;
       enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
       enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
       enc4 = chr3 & 63;
 
       if (i == input.length + 4) {
          enc3 = enc4 = 64;
       } else if (i == input.length + 2) {
          enc4 = 64;
       } 

       output = output + 
          keyStr.charAt(enc1) + 
          keyStr.charAt(enc2) + 
          keyStr.charAt(enc3) + 
          keyStr.charAt(enc4);
       chr1 = chr2 = chr3 = "";
       enc1 = enc2 = enc3 = enc4 = "";
    } while (i < input.length);

    return output;
}


function sha1Hash(msg)
{
    // constants [4.2.1]
    var K = [0x5a827999, 0x6ed9eba1, 0x8f1bbcdc, 0xca62c1d6];

    // PREPROCESSING 
 
    msg += String.fromCharCode(0x80); // add trailing '1' bit to string [5.1.1]

    // convert string msg into 512-bit/16-integer blocks arrays of ints [5.2.1]
    var l = Math.ceil(msg.length/4) + 2;  // long enough to contain msg plus 2-word length
    var N = Math.ceil(l/16);              // in N 16-int blocks
    var M = new Array(N);
    for (var i=0; i<N; i++) {
        M[i] = new Array(16);
        for (var j=0; j<16; j++) {  // encode 4 chars per integer, big-endian encoding
            M[i][j] = (msg.charCodeAt(i*64+j*4)<<24) | (msg.charCodeAt(i*64+j*4+1)<<16) | 
                      (msg.charCodeAt(i*64+j*4+2)<<8) | (msg.charCodeAt(i*64+j*4+3));
        }
    }
    // add length (in bits) into final pair of 32-bit integers (big-endian) [5.1.1]
    // note: most significant word would be ((len-1)*8 >>> 32, but since JS converts
    // bitwise-op args to 32 bits, we need to simulate this by arithmetic operators
    M[N-1][14] = ((msg.length-1)*8) / Math.pow(2, 32); M[N-1][14] = Math.floor(M[N-1][14])
    M[N-1][15] = ((msg.length-1)*8) & 0xffffffff;

    // set initial hash value [5.3.1]
    var H0 = 0x67452301;
    var H1 = 0xefcdab89;
    var H2 = 0x98badcfe;
    var H3 = 0x10325476;
    var H4 = 0xc3d2e1f0;

    // HASH COMPUTATION [6.1.2]

    var W = new Array(80); var a, b, c, d, e;
    for (var i=0; i<N; i++) {

        // 1 - prepare message schedule 'W'
        for (var t=0;  t<16; t++) W[t] = M[i][t];
        for (var t=16; t<80; t++) W[t] = ROTL(W[t-3] ^ W[t-8] ^ W[t-14] ^ W[t-16], 1);

        // 2 - initialise five working variables a, b, c, d, e with previous hash value
        a = H0; b = H1; c = H2; d = H3; e = H4;

        // 3 - main loop
        for (var t=0; t<80; t++) {
            var s = Math.floor(t/20); // seq for blocks of 'f' functions and 'K' constants
            var T = (ROTL(a,5) + f(s,b,c,d) + e + K[s] + W[t]) & 0xffffffff;
            e = d;
            d = c;
            c = ROTL(b, 30);
            b = a;
            a = T;
        }

        // 4 - compute the new intermediate hash value
        H0 = (H0+a) & 0xffffffff;  // note 'addition modulo 2^32'
        H1 = (H1+b) & 0xffffffff; 
        H2 = (H2+c) & 0xffffffff; 
        H3 = (H3+d) & 0xffffffff; 
        H4 = (H4+e) & 0xffffffff;
    }

    return H0.toHexStr() + H1.toHexStr() + H2.toHexStr() + H3.toHexStr() + H4.toHexStr();
}

//
// function 'f' [4.1.1]
//
function f(s, x, y, z) 
{
    switch (s) {
    case 0: return (x & y) ^ (~x & z);
    case 1: return x ^ y ^ z;
    case 2: return (x & y) ^ (x & z) ^ (y & z);
    case 3: return x ^ y ^ z;
    }
}

//
// rotate left (circular left shift) value x by n positions [3.2.5]
//
function ROTL(x, n)
{
    return (x<<n) | (x>>>(32-n));
}

//
// extend Number class with a tailored hex-string method 
//   (note toString(16) is implementation-dependant, and 
//   in IE returns signed numbers when used on full words)
//
Number.prototype.toHexStr = function()
{
    var s="", v;
    for (var i=7; i>=0; i--) { v = (this>>>(i*4)) & 0xf; s += v.toString(16); }
    return s;
}
 </script>
</head>
<body>
<%
    
    'If Not Me.FindControl("head1") Is Nothing Then
    '    Dim head As Control = Me.FindControl("head1")
    '    Dim l As New Literal
    '    l.Text = "<link rel=""Stylesheet"" type=""text/css"" href=""" & getcss() & """ />"
    '    head.Controls.Add(l)
    'End If
    
    'Dim bnkId As String = Session("bankId")
    
    'tmpOrder.BankInfo.Bank3dGetWayAddress = ChkNullString(dr("Bank3dGetWayAddress"))
    'tmpOrder.BankInfo.Key3D = ChkNullString(dr("Key3D"))
    'tmpOrder.BankInfo.GetwayId = ChkNullString(dr("GetwayId"))
    Dim currency As String = "949" ' 949 - test için 792
    Dim amount As String = Format(Session("amount"), "0.00").Replace(",", ".")
    
    Dim clientId As String = Session("GetwayId")
    Dim posturl As String = Session("Bank3dGetWayAddress")
    'Banka tarafından mağazaya verilen iş yeri numarası
    
    Dim oid As String = Session("NextOrderId")       '     //Sipariş numarası 81.215.218.117        
    Dim sid As String = Session("SessionId")
    Dim time As String = DateTime.Now.ToString("yyyyMMddHHmmss")
    
    'Dim okUrl As String = BaseUrl & "/store/banks3d/3dodeme.aspx" '   //İşlem başarılıysa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
    'Dim failUrl As String = BaseUrl & "/store/banks3d/3dodeme.aspx" ' //İşlem başarısızsa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
    'ssl olmadan
    Dim okUrl As String = BaseUrl & "/store/banks3d/3dodemevakifbank.aspx" '   //İşlem başarılıysa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
    Dim failUrl As String = BaseUrl & "/store/banks3d/3dodemevakifbank.aspx" ' //İşlem başarısızsa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
    'ssl 
    If ConfigurationManager.AppSettings("UseSsl") = "True" Then
        okUrl = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemevakifbank.aspx" '   //İşlem başarılıysa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
        failUrl = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemevakifbank.aspx" ' //İşlem başarısızsa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)    
    End If
    
   


            
    
    %>
   
            <form id="Form1" method="post" action="<%=posturl%>">
                <div  style="font-family:Verdana, Arial, Helvetica, sans-serif;font-size:16px;vertical-align:middle;text-align:center;background-color:White;" >Bankaya Bağlanıyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
                    <br />
                    <br />
                    Lütfen Bekleyiniz...  </div>
            
        <div style="visibility:hidden;" >       
                    

    <input type="hidden" name="kkno" value="" />
    <input type="hidden" name="gectar" value="" />
        
    <input type="hidden" name="uyeno" value="<%=clientId%>" />    
    <input type="hidden" name="tutar" value="<%=amount%>" />
    <input type="hidden" name="dcins" value="<%=currency%>" />    
    <input type="hidden" name="sipbil" value="<%=oid%>" />
    <input type="hidden" name="sesbil" value="<%=sid%>" />
    <input type="hidden" name="burl" value="<%=okUrl%>" />
    <input type="hidden" name="hurl" value="<%=failUrl%>" />
    <input type="hidden" name="zaman" value="<%=time%>" />
    <input type="hidden" name="ozet" value="" />  
    <input type="submit" value="Ödemeyi Tamamla"/> 
                <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1" >Kapat</a> 
               
          </div>      
            </form>
      
</body>
</html>
