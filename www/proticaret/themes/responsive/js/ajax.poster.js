// JavaScript Document

var t_id = setInterval(animate,20);
var pos=0;
var dir=2;
var len=0;

function animate()
{
var elem = document.getElementById('progress');
if(elem != null) {
if (pos==0) len += dir;
if (len>32 || pos>79) pos += dir;
if (pos>79) len -= dir;
if (pos>79 && len==0) pos=0;
elem.style.left = pos;
elem.style.width = len;
}
}

function remove_loading() {
this.clearInterval(t_id);
var targelem = document.getElementById('loader_container');
targelem.style.display='none';
targelem.style.visibility='hidden';
var t_id = setInterval(animate,60);
}



function findXPos(obj) {
					   var curleft = 0; 
					   if (obj.offsetParent) {
						  while (1) {
							 curleft += obj.offsetLeft; 
							 if (!obj.offsetParent) {
								break; 
								}
							 obj = obj.offsetParent; 
							 }
						  }
					   else if (obj.x) {
						  curleft += obj.x; 
						  }
					   return curleft; 
					   }; 


function createAjaxObject()
	{
		var xmlHttp;
		try
		{  
			xmlHttp=new XMLHttpRequest();
		}
		catch(e)
		{
			try
			{
				xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			}
			catch(e)
			{
				try
				{	
					xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
				}
				catch(e)
				{
					alert("Obje create edilemedi");
					return false;

				}
			}
		}
		return xmlHttp;
	}
	
	function SetProduct(arama)
	{
		var searchValue = document.getElementById('txtArama').value;
		searchValue= iso88599Escape(searchValue);
		
		ajaxFunction('AjaxPrdByKy.aspx?Key='+searchValue,'LYRProducts');
	}
	
	function iso88599Escape(strText){
	
		strText=escape(strText);
		strText=strText.replace(/%u0131/gi,"C4B1");//ý
		strText=strText.replace(/%u0130/gi,"C4B0");//Ý
		strText=strText.replace(/%FC/gi,"C3BC");//ü
		strText=strText.replace(/%DC/gi,"C39C");//Ü
		strText=strText.replace(/%u011F/gi,"C49F");//ð
		strText=strText.replace(/%u011E/gi,"C49E");//Ð
		strText=strText.replace(/%u015F/gi,"C59F");//þ
		strText=strText.replace(/%u015E/gi,"C59E");//Þ
		strText=strText.replace(/%E7/gi,"C387");//ç
		strText=strText.replace(/%C7/gi,"C387");//Ç
		strText=strText.replace(/%F6/gi,"C3B6");//ö
		strText=strText.replace(/%D6/gi,"C396");//Ö
		strText=strText.replace(/ý/,"C4B1");
		strText=strText.replace(/Ü/,"C39C");
		strText=strText.replace(/ü/,"C3BC");
		strText=strText.replace(/ð/,"C49F");
		strText=strText.replace(/Ð/,"C49E");
		strText=strText.replace(/ü/,"C3BC");
		strText=strText.replace(/Ü/,"C39C");
		strText=strText.replace(/Ý/,"C4B0");
		strText=strText.replace(/þ/,"C59F");
		strText=strText.replace(/Þ/,"C59E");
		strText=strText.replace(/ç/,"C3A7");
		strText=strText.replace(/Ç/,"C387");
		strText=strText.replace(/ö/,"C3B6");
		strText=strText.replace(/Ö/,"C396");
		
		return strText;}
	
	function ajaxFunction(address,lbl)
	{
		//alert(address);
		//alert(lbl);
		
		var sxmlHttp;
		sxmlHttp = new createAjaxObject();
		
		sxmlHttp.onreadystatechange=function()
		{
			
			if(sxmlHttp.readyState==4)
			{
			  	if(document.getElementById(lbl))
			  		document.getElementById(lbl).innerHTML=sxmlHttp.responseText;
			}
			else
			{
				if(document.getElementById(lbl))
					document.getElementById(lbl).innerHTML = "<br><meta http-equiv='Content-Type' content='text/html; charset=iso-8859-9'><META HTTP-EQUIV='Content-Type' CONTENT='text/html; charset=windows-1254'><center><font size='1' face='Verdana, Arial, Helvetica, sans-serif' >L&uuml;tfen bekleyiniz...<br> Y&uuml;kleniyor</font><br><img src='images/loading.gif'></center>";
			    
			}
		}
		
		var dt = new Date();
		var RandomNumber = (dt.getSeconds()%10000)+1;
		if(address.indexOf('?')>-1)
			address = address + '&rnumber=' + RandomNumber;
		else
			address = address + '?rnumber=' + RandomNumber;
		
			
		sxmlHttp.open("GET",address,true);
		sxmlHttp.send(null);
	}
	
	function SearchPost() {
      var poststr = "Key=" + encodeURI(document.getElementById("txtArama").value );
      ajaxFunctionPOST('AjaxPrdByKy.aspx', poststr, 'LYRProducts');
   }
	
		function ajaxFunctionPOST(address,parameters,lbl)
	{
		//alert(address);
		//alert(lbl);
		
		var sxmlHttp;
		sxmlHttp = new createAjaxObject();
		
		sxmlHttp.onreadystatechange=function()
		{
			
			if(sxmlHttp.readyState==4)
			{
			  	if(document.getElementById(lbl))
			  		document.getElementById(lbl).innerHTML=sxmlHttp.responseText;
			}
			else
			{
				if(document.getElementById(lbl))
			   			document.getElementById(lbl).innerHTML = "<br><meta http-equiv='Content-Type' content='text/html; charset=iso-8859-9'><META HTTP-EQUIV='Content-Type' CONTENT='text/html; charset=windows-1254'><center><font size='1' face='Verdana, Arial, Helvetica, sans-serif' >L&uuml;tfen bekleyiniz...<br> Y&uuml;kleniyor</font><br><img src='images/loading.gif'></center>";
			    
			}
		}
	
	    var dt = new Date();
		var RandomNumber = (dt.getSeconds()%10000)+1;
		
		var RandomNumber2 = Math.floor(Math.random()*1000);
		
		if(address.indexOf('?')>-1)
			address = address + '&rnbr=' + RandomNumber + RandomNumber2;
		else
			address = address + '?rnbr=' + RandomNumber + RandomNumber2;
		
      	sxmlHttp.open('POST', address, true);
      	sxmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
      	sxmlHttp.setRequestHeader("Content-length", parameters.length);
      	sxmlHttp.setRequestHeader("Connection", "close");
      	sxmlHttp.send(parameters);

	}

		function ajaxFunction2(address,id,lbl){ 
			
			var sxmlHttp;
			sxmlHttp = new createAjaxObject();
			
			sxmlHttp.onreadystatechange=function()
			{
				
				if(sxmlHttp.readyState==4)
				{
					if(document.getElementById(lbl))
				  		document.getElementById(lbl).innerHTML=sxmlHttp.responseText;
				}
				else
				{
					if(document.getElementById(lbl))
			   			document.getElementById(lbl).innerHTML = "<br><meta http-equiv='Content-Type' content='text/html; charset=iso-8859-9'><META HTTP-EQUIV='Content-Type' CONTENT='text/html; charset=windows-1254'><center><font size='1' face='Verdana, Arial, Helvetica, sans-serif' >L&uuml;tfen bekleyiniz...<br> Y&uuml;kleniyor</font><br><img src='images/loading.gif'></center>";
					
				}
			}
			
			var dt = new Date();
			var RandomNumber = (dt.getSeconds()%10000)+1;
			if(address.indexOf('?')>-1)
				address = address + '&rnumber=' + RandomNumber;
			else
			address = address + '?rnumber=' + RandomNumber;
			
			
			sxmlHttp.open("GET",address,true);
			sxmlHttp.send(null);
		 
		}
		
	var cursorY;
	var cursorX;

	function MTD_Goster(e,obj,address)
	{
		    /*e = e || window.event;
			var cursor = {x:0, y:0};
			if (e.pageX || e.pageY) {
				cursor.x = e.pageX;
				cursor.y = e.pageY;
			}
			 
			else {
				var de = document.documentElement;
				var b = document.body;
				cursor.x = e.clientX + 
					(de.scrollLeft || b.scrollLeft) - (de.clientLeft || 0);
				cursor.y = e.clientY + 
					(de.scrollTop || b.scrollTop) - (de.clientTop || 0);
			}*/
			
			 var curleft = 0; 
					   if (obj.offsetParent) {
						  while (1) {
							 curleft += obj.offsetLeft; 
							 if (!obj.offsetParent) {
								break; 
								}
							 obj = obj.offsetParent; 
							 }
						  }
					   else if (obj.x) {
						  curleft += obj.x; 
						  }
					   return curleft; 
			
			cursorY = cursor.y;
			cursorX = cursor.x;
		
			ajaxFunction(address,id);
			document.getElementById(id).innerHTML ="<img src='imageresize_vert.jpg'>";
			document.getElementById(id).style.left = cursorX   +"px";
			document.getElementById(id).style.top = cursorY    +"px";
	}
	
	function MTD_Sil(id)
	{
		
		document.getElementById(id).innerHTML ="";
		
	}
	
	

	
	
	
	
	
	


function echeck(str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){

		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		   
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		   
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		   
		    return false
		 }

 		 return true					
	}

menuid=1;
function nextMenu()
	{
//	alert(menuid);
		menuid++;
		if(menuid==4)
			menuid=1;
		SetTab(menuid);
		
		if(menuid==3)
			document.getElementById('nextMenuimg').style.display='none';
		
	}

function SetTab(id)
{
	for(i=1;i<4;i++)
	{
		document.getElementById('Tab'+i).style.display='none';
		
		document.getElementById('tabIMG0'+i).src ='/uploads/poster/images/frmbt0' + i + '.jpg';
	}
		document.getElementById('Tab'+id).style.display='block';
		document.getElementById('tabIMG0'+id).src ='/uploads/poster/images/frmbt0' + id + '_o.jpg';
}
	
function changeWall(color1)
{

	document.getElementById('wallid1').style.backgroundColor = "#" + color1;
	//alert(document.getElementById('temp_wall_color').value);
	document.getElementById('temp_wall_color').value = color1;
	//alert(document.getElementById('temp_wall_color').value);
}


function setFrame(id,frameid)
{
	
	//alert(document.getElementById('temp_wall_color').value);
    if(document.getElementById('paspartucolor'))
    {
    document.getElementById('frameid').value = frameid;
	
	var paspartuid = document.getElementById('paspartuid').value;
	var paspartucolor = document.getElementById('paspartucolor').value;
	var paspartuborder = document.getElementById('paspartuborder').value;
	var paspartuid = document.getElementById('paspartuid').value;
	var temp_wall_color = document.getElementById('temp_wall_color').value;
//	alert('x');
	ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&frameid='+frameid+ '&paspartuid=' + paspartuid + '&paspartucolor=' + paspartucolor + '&paspartuborder=' + paspartuborder + '&temp_wall_color=' + temp_wall_color ,'LYRProductDetail');
	      
        //alert('AjaxProductsDetail2.aspx?id='+id+'&frameid='+frameid+'&paspartucolor=' + document.getElementById('paspartucolor').value + '&paspartuborder=' + document.getElementById('spaspartuborder').selectedIndex);
//        ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&frameid='+frameid+'&paspartucolor=' + paspartucolor + '&paspartuborder=' + paspartuborder + '&temp_wall_color=' + temp_wall_color ,'LYRProductDetail');
    }
    else
    {
//    alert('y');
        //alert('AjaxProductsDetail2.aspx?id='+id+'&frameid='+frameid);
        //alert('AjaxProductsDetail2.aspx?id='+id+'&frameid='+frameid + '&temp_wall_color=' + document.getElementById('temp_wall_color').value);
        ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&frameid='+frameid + '&temp_wall_color=' + document.getElementById('temp_wall_color').value,'LYRProductDetail');
    }
	
	document.getElementById('cerceve').style.display='block';
	//document.getElementById('details').style.display='none';
	
}

function setPaspartu(id,paspartucolor,paspartuid)
{
	//document.getElementById('paspartucolor').value=paspartucolor;
	document.getElementById('paspartuid').value = paspartuid;
	document.getElementById('paspartuborder').value= document.getElementById('spaspartuborder').options[document.getElementById('spaspartuborder').selectedIndex].value
	
	var frameid = document.getElementById('frameid').value;
	var paspartuid = document.getElementById('paspartuid').value;
	var paspartuborder = document.getElementById('paspartuborder').value;
	var temp_wall_color = document.getElementById('temp_wall_color').value;
	
	
	if(document.getElementById('spaspartuborder').selectedIndex==0)
	{
		document.getElementById('spaspartuborder').selectedIndex=1;
		var paspartuborder = 4;
		
	}
	ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&frameid='+frameid+ '&paspartuid=' + paspartuid + '&paspartucolor=' + paspartucolor + '&paspartuborder=' + paspartuborder + '&temp_wall_color=' + temp_wall_color ,'LYRProductDetail');
	
//    if(document.getElementById('frameid'))
//    {
//        //alert('AjaxProductsDetail2.aspx?id='+id+'&frameid='+document.getElementById('frameid').value+'&paspartucolor=' + paspartucolor+ '&paspartuborder=' + document.getElementById('spaspartuborder').selectedIndex);
////        ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&frameid='+frameid+ '&paspartuid=' + paspartuid + '&paspartucolor=' + paspartucolor + '&paspartuborder=' + paspartuborder + '&temp_wall_color=' + temp_wall_color ,'LYRProductDetail');
//        ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&frameid='+frameid+ '&paspartuid=' + paspartuid + '&paspartucolor=' + paspartucolor + '&paspartuborder=' + paspartuborder + '&temp_wall_color=' + temp_wall_color ,'LYRProductDetail');
//    }
//    else
//    {
//        //alert('AjaxProductsDetail2.aspx?id='+id+'&paspartucolor=' + paspartucolor + '&paspartuborder=' + document.getElementById('spaspartuborder').selectedIndex);
//        ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&paspartucolor=' + paspartucolor + '&paspartuid=' + paspartuid + '&paspartuborder=' + document.getElementById('spaspartuborder').options[document.getElementById('spaspartuborder').selectedIndex].value  + '&temp_wall_color=' + document.getElementById('temp_wall_color').value ,'LYRProductDetail');
//    }
}

function setPaspartu2(id,paspartucolor,paspartuid)
{

if (document.getElementById('spaspartuborder').options[document.getElementById('spaspartuborder').selectedIndex].value > 0)
{

if (paspartucolor=='')
{
paspartucolor='ffffff';
}

	document.getElementById('paspartucolor').value=paspartucolor;
//	alert(paspartucolor);
//	alert(document.getElementById('paspartucolor').value);
	document.getElementById('paspartuid').value = paspartuid;
	document.getElementById('paspartuborder').value= document.getElementById('spaspartuborder').options[document.getElementById('spaspartuborder').selectedIndex].value
	
	var frameid = document.getElementById('frameid').value;
	var paspartuid = document.getElementById('paspartuid').value;
	var paspartuborder = document.getElementById('paspartuborder').value;
	var temp_wall_color = document.getElementById('temp_wall_color').value;	
	
	ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&frameid='+frameid+ '&paspartuid=' + paspartuid + '&paspartucolor=' + paspartucolor + '&paspartuborder=' + paspartuborder + '&temp_wall_color=' + temp_wall_color ,'LYRProductDetail');
	
}
else
{
	document.getElementById('paspartucolor').value='';
	document.getElementById('paspartuid').value = 0;
	document.getElementById('paspartuborder').value= 0;
	
	var frameid = document.getElementById('frameid').value;
	var paspartuid = document.getElementById('paspartuid').value;
	var paspartuborder = document.getElementById('paspartuborder').value;
	var temp_wall_color = document.getElementById('temp_wall_color').value;	
	
	ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&frameid='+frameid+ '&paspartuid=' + paspartuid + '&paspartucolor=' + paspartucolor + '&paspartuborder=' + paspartuborder + '&temp_wall_color=' + temp_wall_color ,'LYRProductDetail');
	
}


//    if(document.getElementById('frameid'))
//    {
//        //alert('AjaxProductsDetail2.aspx?id='+id+'&frameid='+document.getElementById('frameid').value+'&paspartucolor=' + paspartucolor+ '&paspartuborder=' + document.getElementById('spaspartuborder').selectedIndex);elm.options[elm.selectedIndex].value
//        ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&frameid='+document.getElementById('frameid').value+'&paspartucolor=' + paspartucolor + '&paspartuid=' + paspartuid + '&paspartuborder=' + document.getElementById('spaspartuborder').options[document.getElementById('spaspartuborder').selectedIndex].value  + '&temp_wall_color=' + document.getElementById('temp_wall_color').value ,'LYRProductDetail');
//    }
//    else
//    {
//        //alert('AjaxProductsDetail2.aspx?id='+id+'&paspartucolor=' + paspartucolor + '&paspartuborder=' + document.getElementById('spaspartuborder').selectedIndex);
//        ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&paspartucolor=' + paspartucolor + '&paspartuid=' + paspartuid + '&paspartuborder=' + document.getElementById('spaspartuborder').options[document.getElementById('spaspartuborder').selectedIndex].value  + '&temp_wall_color=' + document.getElementById('temp_wall_color').value ,'LYRProductDetail');
//    }
}

function clearPaspartu(id)
{
    if(document.getElementById('frameid'))
    {
        //alert('AjaxProductsDetail2.aspx?id='+id+'&frameid='+document.getElementById('frameid').value+'&paspartucolor=' + paspartucolor+ '&paspartuborder=' + document.getElementById('spaspartuborder').selectedIndex);
        ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&frameid='+document.getElementById('frameid').value+'&paspartucolor=' + paspartucolor + '&paspartuborder=' + document.getElementById('spaspartuborder').selectedIndex ,'LYRProductDetail');
    }
    else
    {
        //alert('AjaxProductsDetail2.aspx?id='+id+'&paspartucolor=' + paspartucolor + '&paspartuborder=' + document.getElementById('spaspartuborder').selectedIndex);
        ajaxFunction('AjaxProductsDetail2.aspx?id='+id+'&paspartucolor=' + paspartucolor + '&paspartuborder=' + document.getElementById('spaspartuborder').selectedIndex ,'LYRProductDetail');
    }
}

function WithoutFrame(id)
{
    //alert('AjaxProductsDetail.aspx?id='+id);
    ajaxFunction('AjaxProductsDetail.aspx?id='+id,'LYRProducts');

}

function MM_openBrWindow(theURL,winName,features) { 
  window.open(theURL,winName,features);
}


function SetFrameProperty(id,count,pid)
{


	for(i=0;i<count;i++)
	{
	//alert(document.getElementById('FP'+i));
    document.getElementById('FP'+i).style.display='none';   
	}
	document.getElementById('FP'+id).style.display='block';
	setFrame(pid,document.getElementById('FP'+id).title);
	
		
}


