<%@ Page Language="vb" Inherits="OboutInc.Postback4.OboutPage" AutoEventWireup="false" %>
<%@ Import Namespace="AspNetPortal"  %>
<script language="VB" runat="server">	
    ' implement a method with the same name as the event
    ' the arguments of the method must be the same ones we added on client-side using the AddParam function
    Public Function OnNodeDrop(ByVal src As String, ByVal dst As String) As String
        Dim Response As String = ""

        Dim Cat As New KbDb
        If dst.StartsWith("root") Then
            dst = "0"
        End If
        If Cat.UpdateKbParent(src, dst) > 0 Then
            Response = "Kaydedildi"
        Else
            Response = "Kaydedilemedi"
        End If


        Return Response
    End Function
</script>