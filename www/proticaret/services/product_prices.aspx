<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.product_prices" Debug="true"  %>

<script language="vb" runat="server" >
  
    Public StokIskActive As Boolean
    Public StokIsk As Integer
    Public UserIndirim As Decimal
    Dim UserId As String
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim cnn As New DatabaseDB
        cnn.connectDb()
        Dim cart As ShoppingCartDB = New ShoppingCartDB
        UserId = GetShoppingCartId()
        

        If IsNumeric(UserId) Then

            Dim ua As New UsersDB
            Dim dr2 As SqlDataReader
            dr2 = ua.GetUserIndirim(UserId)

            While dr2.Read()
                UserIndirim = dr2(0)
                StokIskActive = dr2(1)
                StokIsk = dr2(2)
            End While 
        Else

            UserIndirim = 0
            StokIskActive = 0
            StokIsk = 0
        End If
        If Request.QueryString("IND") = "" Then
            Exit Sub
        End If
        Dim productid As Integer = Request.QueryString("IND")
        Dim str As New StringBuilder
        str.Append("<ul>")
        
        Dim cmd As New SqlCommand("GetProductDetails5", cnn.conn)
        If ConfigurationManager.AppSettings("ShowPassiveProducts") = "True" Then
            cmd.CommandText = "GetProductDetails5a"
        End If

        cmd.CommandType = CommandType.StoredProcedure

        cmd.Parameters.AddWithValue("@PortalId", PortalId)
        cmd.Parameters.AddWithValue("@ProductId", productid)
        cmd.Parameters.AddWithValue("@StokIndirim", StokIsk)
        cmd.Parameters.AddWithValue("@StokIskActive", StokIskActive) 

        
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()

        If dr.Read Then
            
            
            str.Append(String.Format("<li style=""display: none;"" class=""KdvHaric"">"))
            str.Append(String.Format("<asp:Label ID=""lblPiyasaFiyati"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr("PiyasaFiyati") * dr("RateP") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label ID=""lblHavaleFiyati"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr("SatisFiyati0") * dr("Rate0") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label ID=""lblSatisFiyati1"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr("SatisFiyati1") * dr("Rate1") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label ID=""lblSatisFiyati2"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr("SatisFiyati2") * dr("Rate2") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label ID=""lblSatisFiyati3"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr("SatisFiyati3") * dr("Rate3") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label ID=""lblSatisFiyati4"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr("SatisFiyati4") * dr("Rate4") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label ID=""lblSatisFiyati5"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(dr("SatisFiyati5") * dr("Rate5") / CurrencyRate) & "  " & CurrencySymbolRight + " " + GetGlobalResourceObject("lang", "PlusTax") & "</asp:Label></li>"))
            str.Append(String.Format("<hr/><li class=""KdvDahil"">"))
            str.Append(String.Format("<asp:Label  style=""display: none;""  ID=""lblPiyasaFiyatiKdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr("PiyasaFiyati") * dr("RateP"), dr("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label  style=""display: none;""    ID=""lblHavaleFiyatiKdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr("SatisFiyati0") * dr("Rate0"), dr("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label  ID=""lblSatisFiyati1Kdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr("SatisFiyati1") * dr("Rate1"), dr("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label  style=""display: none;""  ID=""lblSatisFiyati2Kdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr("SatisFiyati2") * dr("Rate2"), dr("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label  style=""display: none;""  ID=""lblSatisFiyati3Kdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr("SatisFiyati3") * dr("Rate3"), dr("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label  style=""display: none;""  ID=""lblSatisFiyati4Kdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr("SatisFiyati4") * dr("Rate4"), dr("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></br>"))
            str.Append(String.Format("<asp:Label  style=""display: none;""  ID=""lblSatisFiyati5Kdv"" runat=""server"">" & CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(dr("SatisFiyati5") * dr("Rate5"), dr("KdvRate")) / CurrencyRate) & "  " & CurrencySymbolRight + " " & "</asp:Label></li>"))

        End If

        str.Append("</ul>")
 
        Response.Write(str.ToString)

        cnn.disconnectDb()

    End Sub

</script>