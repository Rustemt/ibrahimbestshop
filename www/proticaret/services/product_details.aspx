<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.product_details" Debug="true" %>

<asp:label id="lblDetails" runat="server"></asp:label>
<script language="vb" runat="server" >
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        Dim UserId As String
        Dim UserIndirim As Decimal
        Dim StokIskActive As Boolean
        Dim StokIsk As Integer
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

            dr2.Close()

        Else
            UserIndirim = 0
            StokIskActive = 0
            StokIsk = 0
        End If
        
        Dim productid As Integer = Request.QueryString("IND")
        Dim str As New StringBuilder
        str.Append("<ul>")
        Dim drAlternativ As New DataTable
        Dim cmd As New SqlCommand("GetProductDetails5", cnn.conn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@PortalId", PortalId)
        cmd.Parameters.AddWithValue("@ProductId", productid)
        cmd.Parameters.AddWithValue("@StokIndirim", StokIsk)
        cmd.Parameters.AddWithValue("@StokIskActive", StokIskActive)

        Dim dr As SqlDataReader = cmd.ExecuteReader

        Dim i As Integer = 0
        While dr.Read
           lblDetails.Text = ChkNullString(dr("Details"))
        End While
       
        cnn.disconnectDb()

    End Sub

</script>