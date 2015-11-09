<%@ Page SmartNavigation="false" Language="vb" AutoEventWireup="false"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Import Namespace="AspNetPortal"  %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server" id="head1">
    <title>Mail Üyelik İptali</title>

</head>
<body>
<%
    
    If Request.QueryString("email") <> "" Then
        Dim usr As New UsersDB
        usr.RemoveEbultenMail(Request.QueryString("email"))
        
    End If
  
   
    
    %>
   
            <form id="Form1">
                <div  style="font-family:Verdana, Arial, Helvetica, sans-serif;font-size:16px;vertical-align:middle;text-align:center;background-color:White;" >
                Mail adresiniz Mail listesinden çıkarılmıştır...
                   
                    <br />
                    <br />
                    İyi Günler Dileriz...  </div>
            
        
            </form>
      
</body>
</html>
