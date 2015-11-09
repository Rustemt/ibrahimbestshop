<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.product_alternatives" Debug="true" %>

<script language="vb" runat="server" >

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        Dim cnn As New DatabaseDB
        Dim recordid As Integer = Request.QueryString("IND")
        If Request.QueryString("Sure") = "1" Then
            
            If Not System.Configuration.ConfigurationManager.AppSettings("DeleteCartTime") Is Nothing Then
                If System.Configuration.ConfigurationManager.AppSettings("DeleteCartTime").ToString.StartsWith("Aktif") Then
                    cnn.connectDb()
                    Dim cmd As New SqlCommand("Delete from ShoppingCart where RecordId=@RecordId", cnn.conn)
                    cmd.Parameters.AddWithValue("@RecordId", recordid)
                    cmd.ExecuteNonQuery()
                    cnn.disconnectDb()
                End If
            End If
        ElseIf Request.QueryString("Sure") = "2" Then
            cnn.connectDb()
            Dim cmd As New SqlCommand("Delete from ShoppingCart where RecordId=@RecordId", cnn.conn)
            cmd.Parameters.AddWithValue("@RecordId", recordid)
            cmd.ExecuteNonQuery()
            cnn.disconnectDb()
        End If

        

    End Sub


</script>