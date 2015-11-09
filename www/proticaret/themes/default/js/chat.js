		var lastNotify = new Date();
			
		function checkEnter(e){ 
          
            var characterCode

            if(e && e.which){
                e = e
                characterCode = e.which 
            }
            else{
                e = event
                characterCode = e.keyCode 
            }

            if(characterCode == 13){ 
                CallSendMsg();
                return false 
            }
            else{
				var now = new Date();
				var elapse = now.getSeconds() - lastNotify.getSeconds();
				var sameMinute = now.getMinutes() - lastNotify.getMinutes();
				if( sameMinute != 0 || elapse >= 3 )
				{
				
					SetTypingNotification(); 
					
					lastNotify = new Date();
				}
				
                return true 
            }                              
        }   
       
	function SetTypingNotification() 
    {
		 try 
    {
    var txt1 = $get("txtMsg");       
        PageMethods.SetTypingNotification(getCookie('chatId'), txt1.value, OnSetTypingNotificationComplete);
    } 
    catch (e) {} 
        
    }
    
    function OnSetTypingNotificationComplete(result,methodName)
    {
    } 

    function CallSendMsg() 
    {
    try 
    {
     //Get text control
        var txt1 = $get("txtMsg");
        //Call server side function
        PageMethods.SendMsg(txt1.value,getCookie('chatId'),OnCallSendMsgComplete);
    } 
    catch (e) {} 
       
    }
    function CallClosed() 
    {
        //Call server side function
        PageMethods.Closed(getCookie('chatId'),OnCallSendMsgComplete);
    }
    function OnCallSendMsgComplete(result,methodName)
    {
        //Get text control
        var txt1 = $get("txtMsg");
        //delete text in txtMsg
        if (txt1 != null)
        {
        txt1.value='';
        //focus
        txt1.focus();
        }
    }
    
    function getCookie(c_name)
    {
    //alert("c");
    if (document.cookie.length>0)
      {
      c_start=document.cookie.indexOf(c_name + "=")
      if (c_start!=-1)
        { 
        c_start=c_start + c_name.length+1 
        c_end=document.cookie.indexOf(";",c_start)
        if (c_end==-1) c_end=document.cookie.length
        return unescape(document.cookie.substring(c_start,c_end))
        } 
      }
    return ""
    }