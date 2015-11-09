<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.product_images" Debug="true" %>

<script type="text/javascript" src="<%=getThemePath() %>/js/jcarousel/lib/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="<%=getThemePath() %>/js/jcarousel/lib/jquery.jcarousel.js"></script>

<script language="vb" runat="server">
    
    Public StokIskActive As Boolean
    Public StokIsk As Integer
    Public UserIndirim As Decimal
    Dim UserId As String
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Request.QueryString("IND") = "" Then
            Exit Sub
        End If
        
        Dim productid As Integer = Request.QueryString("IND")
        Dim ilk As Boolean = True
        Dim cnn As New DatabaseDB
        Dim str As New StringBuilder
        str.Append("<ul class=""mycarousel jcarousel jcarousel-skin-tango"">")
        Dim sqlcode As String = "select ProductImages.*,Products.Url as link  from ProductImages inner join Products on products.ProductId=ProductImages.ProductId  where  ProductImages.ProductId=@ProductId order by IsDefault desc "
        Dim cmd As New SqlCommand(sqlcode, cnn.conn)
        cmd.Parameters.AddWithValue("@ProductId", productid)

        cnn.connectDb()
        Dim dr As SqlDataReader = cmd.ExecuteReader

        Dim i As Integer = 0
        While dr.Read
            If ilk Then
                'str.Append(String.Format("<li><a href=""{0}""><img title=""{3}"" src=""{2}"" />{1}</a></li>", BaseUrl & dr("link").ToString.Remove(dr("link").ToString.Length - 1, 1) & ".aspx", dr("Description"), BaseUrl & "/uploads/productsimages/" & dr("Path").ToString.Replace("\", "/"), dr("Description"))) 
                ilk = False
            End If
            str.Append(String.Format("<li><span><img title=""{3}"" src=""{2}"" />{1}</a></li>", BaseUrl & "/uploads/productsimages/" & dr("Path").ToString.Replace("\", "/"), dr("Description"), BaseUrl & "/store/makethumb.aspx?file=" + dr("Path") & "&intSize=100".Replace("\", "/"), dr("Description")))
        End While
 
        str.Append("</ul>")
         
        Dim cart As ShoppingCartDB = New ShoppingCartDB
        UserId = GetShoppingCartId()
        

        If IsNumeric(UserId) Then

            Dim ua As New UsersDB
            Dim dr3 As SqlDataReader
            dr3 = ua.GetUserIndirim(UserId)

            While dr3.Read()
                UserIndirim = dr3(0)
                StokIskActive = dr3(1)
                StokIsk = dr3(2)
            End While
        Else

            UserIndirim = 0
            StokIskActive = 0
            StokIsk = 0
        End If
 
        str.Append("<ul>")
        
        Dim cmd2 As New SqlCommand("GetProductDetails5", cnn.conn)
        If ConfigurationManager.AppSettings("ShowPassiveProducts") = "True" Then
            cmd2.CommandText = "GetProductDetails5a"
        End If

        cmd2.CommandType = CommandType.StoredProcedure

        cmd2.Parameters.AddWithValue("@PortalId", PortalId)
        cmd2.Parameters.AddWithValue("@ProductId", productid)
        cmd2.Parameters.AddWithValue("@StokIndirim", StokIsk)
        cmd2.Parameters.AddWithValue("@StokIskActive", StokIskActive)

        
        Dim dr2 As SqlDataReader
        dr2 = cmd2.ExecuteReader()

        If dr2.Read Then
            
            
            str.Append(String.Format("<li style=""display: none;"" class=""KdvHaric"">"))
            str.Append(String.Format("<asp:Label ID=""lblPiyasaFiyati"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr2("PiyasaFiyati") * dr2("RateP") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label ID=""lblHavaleFiyati"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr2("SatisFiyati0") * dr2("Rate0") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label ID=""lblSatisFiyati1"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr2("SatisFiyati1") * dr2("Rate1") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label ID=""lblSatisFiyati2"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr2("SatisFiyati2") * dr2("Rate2") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label ID=""lblSatisFiyati3"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr2("SatisFiyati3") * dr2("Rate3") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label ID=""lblSatisFiyati4"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr2("SatisFiyati4") * dr2("Rate4") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label ID=""lblSatisFiyati5"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr2("SatisFiyati5") * dr2("Rate5") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></li>"))
            str.Append(String.Format("<hr/><li class=""KdvDahil"">"))
            str.Append(String.Format("<asp:Label  style=""display: none;""  ID=""lblPiyasaFiyatiKdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr2("PiyasaFiyati") * dr2("RateP"), dr2("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label  style=""display: none;""  ID=""lblHavaleFiyatiKdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr2("SatisFiyati0") * dr2("Rate0"), dr2("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label  ID=""lblSatisFiyati1Kdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr2("SatisFiyati1") * dr2("Rate1"), dr2("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label  style=""display: none;""  ID=""lblSatisFiyati2Kdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr2("SatisFiyati2") * dr2("Rate2"), dr2("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label  style=""display: none;""  ID=""lblSatisFiyati3Kdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr2("SatisFiyati3") * dr2("Rate3"), dr2("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label  style=""display: none;""  ID=""lblSatisFiyati4Kdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr2("SatisFiyati4") * dr2("Rate4"), dr2("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label  style=""display: none;""  ID=""lblSatisFiyati5Kdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr2("SatisFiyati5") * dr2("Rate5"), dr2("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></li>"))

        End If

        str.Append("</ul>")
 
        Response.Write(str.ToString)

    End Sub

</script>

<%--kullanımı;

<div id="images" runat="server">
</div>
<script type="text/javascript">

    var i = 0;
    $("*[id$='lblproductId']").each(function () {

        jQuery(document).ready(function () {

            $.ajax(
                {
                    async: false, url: "/services/product_images.aspx?IND=" + $("*[id$='lblproductId']:eq(" + i + ")").text(), context: document.body, success: function (data) {
                        $("*[id$='images']:eq(" + i + ")").html(data);
                        i = i + 1;
                    }
                });
        });

    });
</script>--%>
