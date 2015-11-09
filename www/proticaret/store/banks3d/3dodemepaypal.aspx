<%@ page language="VB" AutoEventWireup="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server" id="head1">
    <title>Ödeme Sayfası</title>
    
     <script type="text/javascript"> 
     
     var eci;
     var cavv; 
     var md;
      var xid;
    //var mdstatus;
    //var mdErrorMsg;
       
    //var maskedpan;
    
 function HideFrameOk()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
  window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_eci").value=eci;
  window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_cavv").value=cavv;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value=md;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value=xid;
  window.parent.ConfirmPayment(); 
//  var panel = window.parent.document.getElementById('OrderStep3d1_Panel1');
//  var frm = window.parent.document.getElementById("frame3d");
//  var btnOk = window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_btnOk");
// frm.width = 0;
// frm.height = 0;
// panel.style.visibility = 'hidden';
// panel.style.width = '0px';
// panel.style.height = '0px'; 
// btnOk.click(); 
 //window.parent.ConfirmPayment();
 
//window.parent.document.write(document.getElementById('pan').value);
 }
  function HideFrameErr()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_eci").value=0;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_cavv").value=0;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value=0;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value=0;
 window.parent.CancelPayment();
//  var panel = window.parent.document.getElementById('OrderStep3d1_Panel1'); 
 
//*  var btnClose = window.parent.document.getElementById("OrderStep3d1_btnClose");
// 
//  window.parent.document.getElementById("OrderStep3d1_mdstatus").value = mdstatus;  
//  window.parent.document.getElementById("OrderStep3d1_mdErrorMsg").value=mdErrorMsg;
//  window.parent.document.getElementById("OrderStep3d1_xid").value=xid;
//  window.parent.document.getElementById("OrderStep3d1_eci").value=eci;
//  window.parent.document.getElementById("OrderStep3d1_cavv").value=cavv;
//  window.parent.document.getElementById("OrderStep3d1_md").value=md;
//* window.parent.document.getElementById("OrderStep3d1_maskedpan").value=maskedpan;
  
  
  //   hmdstatus.value ;
//    hmdErrorMsg.value ;
//    hxid.value ;
//    heci.value ;
//    hcavv.value ;
//    hmd.value ;
//    hmaskedpan.value ;
// 
// frm.width = 0;
// frm.height = 0;
// panel.style.visibility = 'hidden';
// panel.style.width = '0px';
// panel.style.height = '0px'; 
// btnClose.click(); 
 
 }
 </script>
</head>
<body>
<h1>3D Ödeme Sayfası</h1>
    <%
      
        If Not Me.FindControl("head1") Is Nothing Then
            Dim head As Control = Me.FindControl("head1")
            Dim l As New Literal
            l.Text = "<link rel=""Stylesheet"" type=""text/css"" href=""" & getcss() & """ />"
            head.Controls.Add(l)
        End If
        
         
             
        
  %>         
     <%
            Dim e As IEnumerator = Request.Form.GetEnumerator()
            While e.MoveNext
                Dim xkey As String = e.Current
                Dim xval As String = Request.Form.Get(xkey)
             Response.Write(xkey & " : " + xval + "<br/>")
            End While
          
         %> 
         
      <div style=" text-align:center"><a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1" >Kapat</a> </div>          
   
</body>
</html>
