<%@ WebService Language="VB" Class="ASPNetPortal.sigortaservice" %>
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
Public Class sigortaservice
        Inherits System.Web.Services.WebService


        

        <WebMethod()> Public Function GetCitys(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()


            Dim values As New List(Of CascadingDropDownNameValue)()

            Dim cnn As New DatabaseDB
            Dim cmd As New SqlClient.SqlCommand("Select * from SigortaCitys", cnn.conn)
            cnn.connectDb()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader

            While dr.Read()
                Dim CityName As String = CType(dr("CityName"), String)
                Dim CityId As Integer = CType(dr("CityId"), Integer)
                values.Add(New CascadingDropDownNameValue(CityName, CityId.ToString))
            End While
            dr.Close()
            cnn.disconnectDb()
            
            Return values.ToArray

        End Function
        <WebMethod()> Public Function GetStates(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()

            Dim kv As StringDictionary = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues)
            'Dim makeId As Integer
            If (Not kv.ContainsKey("CityId")) Then
                Return Nothing
            End If
            Dim values As New List(Of CascadingDropDownNameValue)()
             
            
            Dim cnn As New DatabaseDB
            Dim cmd As New SqlClient.SqlCommand("Select * from SigortaStates where CityId=@CityId", cnn.conn)
            cmd.Parameters.AddWithValue("@CityId", kv("CityId"))
            cnn.connectDb()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader

            While dr.Read
                Dim StateName As String = CType(dr("StateName"), String)
                Dim StateId As Integer = CType(dr("StateId"), Integer)
                values.Add(New CascadingDropDownNameValue(StateName, StateId.ToString))
            End While
            dr.Close()
            cnn.disconnectDb()
            
            Return values.ToArray

        End Function

        <WebMethod()> Public Function GetSchools(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()

            Dim kvs As StringDictionary = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues)
            'Dim makeId As Integer
            If (Not kvs.ContainsKey("StateId")) Then
                Return Nothing
            End If
            Dim values As New List(Of CascadingDropDownNameValue)()
             
            
            Dim cnn As New DatabaseDB
            Dim cmd As New SqlClient.SqlCommand("Select * from SigortaSchools where StateId=@StateId", cnn.conn)
            cmd.Parameters.AddWithValue("@StateId", kvs("StateId"))
            cnn.connectDb()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader

            While dr.Read
                Dim StateName As String = CType(dr("SchoolName"), String)
                Dim StateId As Integer = CType(dr("SchoolId"), Integer)
                values.Add(New CascadingDropDownNameValue(StateName, StateId.ToString))
            End While
            dr.Close()
            cnn.disconnectDb()
            
            Return values.ToArray

        End Function
     

    End Class

End Namespace