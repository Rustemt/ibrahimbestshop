<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="product_nonalternatives.aspx.vb" Inherits="ASPNetPortal.product_nonalternatives" %>

<script language="vb" runat="server" >

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim cnn As New DatabaseDB
        cnn.connectDb()

        Dim productid As Integer = Request.QueryString("IND")
        Dim str As New StringBuilder
        str.Append("<ul>")
        Dim drAlternativ As New DataTable
        Dim cmd As New SqlCommand("GetNonAlternativeProducts", cnn.conn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@ProductId", SqlDbType.Int).Value = productid
        cmd.Parameters.AddWithValue("@StokIndirim", 0)
        cmd.Parameters.AddWithValue("@StokIskActive", 1)

        Dim dr As SqlDataReader = cmd.ExecuteReader

        Dim i As Integer = 0
        While dr.Read
            str.Append(String.Format("<li ><span>"))
            str.Append(String.Format("<a href=""{0}""><img alt=""{3}"" src=""{2}"" />{1}</a></span>", BaseUrl & dr("Url").ToString.Remove(dr("Url").ToString.Length - 1, 1) & ".aspx", "", BaseUrl & "/store/makethumb.aspx?file=" + dr("Path") & "&intSize=85", ""))
            str.Append(String.Format("<a href=""{0}"">{1}</a>", BaseUrl & dr("Url").ToString.Remove(dr("Url").ToString.Length - 1, 1) & ".aspx", dr("ProductName")))
            str.Append(String.Format("<div class=""productprice"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr("SatisFiyati") * dr("Rate") / CurrencyRate) + " " + CurrencySymbolRight + GetGlobalResourceObject("lang", "PlusTax") & " </div>"))
            str.Append(String.Format("<div class=""clear""></div>"))
            str.Append(String.Format("<a id=""btnAddToCart" & i & """ class=""cartbutton"" href=""{0}"">{1}</a>", BaseUrl & "/store/addtocartpopup.aspx?ProductId=" & dr("ProductId"), GetGlobalResourceObject("lang", "AddToCart")))
            str.Append(String.Format("</li>"))
            i = i + 1
        End While
        str.Append("</ul>")

        str.Append("<script type=""text/javascript"">")
        str.Append("    $("".lightbox"").colorbox({ width: ""300"", height: ""400"", iframe: true, scrolling: false });")

        For index As Integer = 0 To i

            str.Append("    $(""a[id='btnAddToCart" & index & "']"").colorbox({ width: ""800"", height: ""600"", iframe: true, scrolling: false, close:""Kapat"" });")
        Next
        str.Append("    var prm = Sys.WebForms.PageRequestManager.getInstance();")
        str.Append("    prm.add_endRequest(function () {")
        str.Append("        $("".lightbox"").colorbox({ width: ""300"", height: ""400"", iframe: true, scrolling: false });")

        For index As Integer = 0 To i

            str.Append("        $(""a[id='btnAddToCart" & index & "']"").colorbox({ width: ""800"", height: ""600"", iframe: true, scrolling: false, close: ""Kapat""});")
        Next
        str.Append("    });")
        str.Append("")
        str.Append("    $(document).ready(function () {")
        str.Append("        $(""a[rel='lightbox']"").colorbox({ photo: true, current: ""resim {current} / {total}"" });")
        str.Append("        $("".lightbox"").colorbox({ width: ""600"", height: ""400"", iframe: true, scrolling: false });")
        str.Append("        $('.lightbox').colorbox({")
        str.Append("            onLoad: function () {")
        str.Append("                $('#cboxNext').remove();")
        str.Append("                $('#cboxCurrent').remove();")
        str.Append("                $('#cboxPrevious').remove();")
        str.Append("            }")
        str.Append("        });")
        str.Append("    });")
        str.Append("</script" & ">")

        Response.Write(str.ToString)

        cnn.disconnectDb()

    End Sub

</script>