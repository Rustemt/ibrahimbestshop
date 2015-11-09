<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.updatecart" Debug="true" %>

<script language="vb" runat="server">

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
     

        Dim recordid As Integer = Request.QueryString("rid")
        Dim quantitiy As Integer = Request.QueryString("qty")
        Dim cart As New ShoppingCartDB
        Dim con As New DatabaseDB
        con.connectDb()
        Dim cmd As New SqlCommand("select SellLimitToUser from ShoppingCart as s inner join Products as p on s.ProdId=p.ProductId where RecordId=@RecordId", con.conn)
        cmd.Parameters.AddWithValue("@RecordId", recordid)
        Dim sellimit As Integer = cmd.ExecuteScalar
       
        If sellimit > 0 And quantitiy > sellimit Then
            cart.UpdateCartItem(recordid, sellimit, 0)
        ElseIf sellimit > 0 And quantitiy <= sellimit Then
            cart.UpdateCartItem(recordid, quantitiy, 0)
        Else
            cart.UpdateCartItem(recordid, quantitiy, 0)
        End If
        
    End Sub


</script>
