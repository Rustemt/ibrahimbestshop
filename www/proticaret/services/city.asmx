<%@ WebService Language="VB" Class="ASPNetPortal.cityService" %>
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
    Public Class cityService
        
        Inherits System.Web.Services.WebService
        
        <WebMethod()> Public Function GetCountryTurkey(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()

            Dim values As New List(Of CascadingDropDownNameValue)()
       
            Dim cnn As New DatabaseDB
            Dim cmd As New SqlClient.SqlCommand("Select * from CRMCountry where Status=1 and CountryId=1", cnn.conn)
            cnn.connectDb()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader

            While dr.Read()
                Dim CountryName As String = CType(dr("CountryName"), String)
                Dim CountryId As Integer = CType(dr("CountryId"), Integer)
                values.Add(New CascadingDropDownNameValue(CountryName, CountryId.ToString))
            End While
            dr.Close()
            cnn.disconnectDb()
            
            Return values.ToArray

        End Function

        <WebMethod()> Public Function GetCountry(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()

            Dim values As New List(Of CascadingDropDownNameValue)()
       
            Dim cnn As New DatabaseDB
            Dim cmd As New SqlClient.SqlCommand("Select * from CRMCountry where Status=1", cnn.conn)
            cnn.connectDb()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader

            While dr.Read()
                Dim CountryName As String = CType(dr("CountryName"), String)
                Dim CountryId As Integer = CType(dr("CountryId"), Integer)
                values.Add(New CascadingDropDownNameValue(CountryName, CountryId.ToString))
            End While
            dr.Close()
            cnn.disconnectDb()
            
            Return values.ToArray

        End Function
    
        <WebMethod()> Public Function GetCity(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()

            Dim kv As StringDictionary = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues)
            'Dim makeId As Integer
            If (Not kv.ContainsKey("CountryId")) Then
                Return Nothing
            End If
            Dim values As New List(Of CascadingDropDownNameValue)()
             
            
            Dim cnn As New DatabaseDB
            Dim cmd As New SqlClient.SqlCommand("Select * from CRMCitys where CountryId=@CountryId and Status=1", cnn.conn)
            cmd.Parameters.AddWithValue("@CountryId", kv("CountryId"))
            cnn.connectDb()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader

            While dr.Read
                Dim CityName As String = CType(dr("CityName"), String)
                Dim CityId As Integer = CType(dr("CityId"), Integer)
                values.Add(New CascadingDropDownNameValue(CityName, CityId.ToString))
            End While
            dr.Close()
            cnn.disconnectDb()
            
            Return values.ToArray

        End Function

        <WebMethod()> Public Function GetDistict(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()

            Dim kv As StringDictionary = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues)
            'Dim makeId As Integer
            If (Not kv.ContainsKey("CityId")) Then
                Return Nothing
            End If
            Dim values As New List(Of CascadingDropDownNameValue)()
             
            
            Dim cnn As New DatabaseDB
            Dim cmd As New SqlClient.SqlCommand("Select * from CRMDistrict where CityId=@CityId and Status=1", cnn.conn)
            cmd.Parameters.AddWithValue("@CityId", kv("CityId"))
            cnn.connectDb()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader

            While dr.Read
                Dim DistrictName As String = CType(dr("DistrictName"), String)
                Dim DistrictId As Integer = CType(dr("DistrictId"), Integer)
                values.Add(New CascadingDropDownNameValue(DistrictName, DistrictId.ToString))
            End While
            dr.Close()
            cnn.disconnectDb()
            
            Return values.ToArray

        End Function


    End Class

End Namespace