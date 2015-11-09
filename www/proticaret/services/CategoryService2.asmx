<%@ WebService Language="VB" Class="ASPNetPortal.CategoryService2" %>
Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Xml
Imports System.Web.Script.Services
Imports System

Imports System.Net
Imports System.Text
Imports System.IO
Imports AjaxControlToolkit
Imports System.Data.SqlClient
'Imports System.Security.Cryptography
Imports System.Collections.Generic
Imports System.Collections.Specialized

Namespace ASPNetPortal
    <WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ScriptService()> _
Public Class CategoryService2
        Inherits System.Web.Services.WebService

        <WebMethod()> Public Function GetCategory1(ByVal knownCategoryValues1 As String, ByVal category As String) As CascadingDropDownNameValue()

            Dim kv As StringDictionary = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues1)
            Dim Id As Integer
            If (Not kv.ContainsKey("CatId1")) Then
                Return Nothing
            Else
                Id = kv("CatId1")
            End If
            
            Dim values As New List(Of CascadingDropDownNameValue)()

            Dim cnn As New DatabaseDB
            Dim cmd As New SqlClient.SqlCommand("SELECT CatId,CatName FROM Categories  where IsVisible=1 and IsActive=1 and Parent=@Parent order by CatName", cnn.conn)
            cmd.Parameters.AddWithValue("@Parent", Id)
            cnn.connectDb()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader

            While dr.Read()
                Dim CatName As String = CType(dr("CatName"), String)
                Dim CatId As Integer = CType(dr("CatId"), Integer)
                values.Add(New CascadingDropDownNameValue(CatName, CatId.ToString))
            End While
            dr.Close()
            cnn.disconnectDb()
            
            Return values.ToArray

        End Function
        
        <WebMethod()> Public Function GetCategory2(ByVal knownCategoryValues2 As String, ByVal category As String) As CascadingDropDownNameValue()

            Dim kv As StringDictionary = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues2)
            Dim Id As Integer
            If (Not kv.ContainsKey("CatId2")) Then
                Return Nothing
            Else
                Id = kv("CatId2")
            End If
            
            Dim values As New List(Of CascadingDropDownNameValue)()

            Dim cnn As New DatabaseDB
            Dim cmd As New SqlClient.SqlCommand("SELECT CatId,CatName FROM Categories  where IsVisible=1 and IsActive=1 and Parent=@Parent order by CatName", cnn.conn)
            cmd.Parameters.AddWithValue("@Parent", Id)
            cnn.connectDb()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader

            While dr.Read()
                Dim CatName As String = CType(dr("CatName"), String)
                Dim CatId As Integer = CType(dr("CatId"), Integer)
                values.Add(New CascadingDropDownNameValue(CatName, CatId.ToString))
            End While
            dr.Close()
            cnn.disconnectDb()
            
            Return values.ToArray

        End Function
        
        <WebMethod()> Public Function GetCategory3(ByVal knownCategoryValues3 As String, ByVal category As String) As CascadingDropDownNameValue()

            Dim kv As StringDictionary = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues3)
            Dim Id As Integer
            If (Not kv.ContainsKey("CatId3")) Then
                Return Nothing
            Else
                Id = kv("CatId3")
            End If
            
            Dim values As New List(Of CascadingDropDownNameValue)()

            Dim cnn As New DatabaseDB
            Dim cmd As New SqlClient.SqlCommand("SELECT CatId,CatName FROM Categories  where IsVisible=1 and IsActive=1 and Parent=@Parent order by CatName", cnn.conn)
            cmd.Parameters.AddWithValue("@Parent", Id)
            cnn.connectDb()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader

            While dr.Read()
                Dim CatName As String = CType(dr("CatName"), String)
                Dim CatId As Integer = CType(dr("CatId"), Integer)
                values.Add(New CascadingDropDownNameValue(CatName, CatId.ToString))
            End While
            dr.Close()
            cnn.disconnectDb()
            
            Return values.ToArray

        End Function
        '<WebMethod()> Public Function GetCategory2(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()
          
        '    Dim kv As StringDictionary = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues)
        '    If (Not kv.ContainsKey("CatId")) Then
        '        Return Nothing
        '    End If
            
        '    Dim values As New List(Of CascadingDropDownNameValue)()

        '    Dim cnn As New DatabaseDB
        '    Dim cmd As New SqlClient.SqlCommand("SELECT CatId,CatName FROM Categories  where IsVisible=1 and IsActive=1 and Parent=@Parent order by CatName", cnn.conn)
        '    cmd.Parameters.AddWithValue("@Parent", kv("CatId"))
        '    cnn.connectDb()
        '    Dim dr As SqlDataReader
        '    dr = cmd.ExecuteReader

        '    While dr.Read()
        '        Dim CatName As String = CType(dr("CatName"), String)
        '        Dim CatId As Integer = CType(dr("CatId"), Integer)
        '        values.Add(New CascadingDropDownNameValue(CatName, CatId.ToString))
        '    End While
        '    dr.Close()
        '    cnn.disconnectDb()
            
        '    Return values.ToArray

        'End Function
    
        '<WebMethod()> Public Function GetCategory3(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()
          
        '    Dim kv As StringDictionary = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues)
        '    If (Not kv.ContainsKey("CatId")) Then
        '        Return Nothing
        '    End If
            
        '    Dim values As New List(Of CascadingDropDownNameValue)()

        '    Dim cnn As New DatabaseDB
        '    Dim cmd As New SqlClient.SqlCommand("SELECT CatId,CatName FROM Categories  where IsVisible=1 and IsActive=1 and Parent=@Parent order by CatName", cnn.conn)
        '    cmd.Parameters.AddWithValue("@Parent", kv("CatId"))
        '    cnn.connectDb()
        '    Dim dr As SqlDataReader
        '    dr = cmd.ExecuteReader

        '    While dr.Read()
        '        Dim CatName As String = CType(dr("CatName"), String)
        '        Dim CatId As Integer = CType(dr("CatId"), Integer)
        '        values.Add(New CascadingDropDownNameValue(CatName, CatId.ToString))
        '    End While
        '    dr.Close()
        '    cnn.disconnectDb()
            
        '    Return values.ToArray

        'End Function

         

    End Class

End Namespace