if (navigator.appName=="Microsoft Internet Explorer")
{nav="IE";layerRef=".all";styleRef=".style";}
if (navigator.appName=="Netscape")
{layerRef=".layers";styleRef="";nav="NS"}
vCurrentPage=1;
vCurrentVendor=1;
vReportPrefix="";
function showFirstPage()
{
	if ( vCurrentPage > 1 ) {
		vCurrentPage = 1;
		loc = eval("parent.report.document.location");
		curloc = loc.toString();
		var ind = curloc.indexOf("#");
		if(ind > 0)
			newloc = curloc.substr(0,ind);
		else
			newloc = curloc;
		parent.report.document.location= newloc + "#Page"+vCurrentPage;
		//alert(newloc);
		return
	}
}
function showNextPage()
{
	if ( vCurrentPage < vLastPage ) {
		loc = eval("parent.report.document.location");
		curloc = loc.toString();
		var ind = curloc.indexOf("#");
		if(ind > 0)
			newloc = curloc.substr(0,ind);
		else
			newloc = curloc;
		vCurrentPage += 1;
		parent.report.document.location= newloc + "#Page"+vCurrentPage;
		//alert(newloc);
		return
	}
}
function showPrevPage()
{
	if ( vCurrentPage > 1 ) {
		vCurrentPage -= 1;
		loc = eval("parent.report.document.location");
		curloc = loc.toString();
		var ind = curloc.indexOf("#");
		if(ind > 0)
			newloc = curloc.substr(0,ind);
		else
			newloc = curloc;
		parent.report.document.location= newloc + "#Page"+vCurrentPage;
		//alert(newloc);
		return
	   
	}
}
function showLastPage()
{
	if ( vCurrentPage < vLastPage ) {
		vCurrentPage = vLastPage;
		loc = eval("parent.report.document.location");
		curloc = loc.toString();
		var ind = curloc.indexOf("#");
		if(ind > 0)
			newloc = curloc.substr(0,ind);
		else
			newloc = curloc;
		parent.report.document.location= newloc + "#Page"+vCurrentPage;
		//alert(newloc);
		return
	}
}

function oldshowFirstPage()
{
	if ( vCurrentPage > 1 ) {
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility='hidden'");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top=''");	
       vCurrentPage = 1;
       vCurrentVendor = 1;
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility=''");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top='1px'");	
	}
}
function oldshowNextPage()
{
	if ( vCurrentPage < vLastPage ) {
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility='hidden'");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top=''");	
       vCurrentPage += 1;
       if (vCurrentVendor < vLastVendor && vCurrentPage >= vVendorStartPages[vCurrentVendor]) {
			vCurrentVendor += 1;
			}
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility=''");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".position='absolute'");	
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top='1px'");	
	}
}
function oldshowPrevPage()
{
	if ( vCurrentPage > 1 ) {
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility='hidden'");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top=''");	
       vCurrentPage -= 1;
       if (vCurrentVendor > 1 && vCurrentPage < vVendorStartPages[vCurrentVendor-1]) {
			vCurrentVendor -= 1;
			}
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility=''");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top='1px'");	
	}
}
function oldshowLastPage()
{
	if ( vCurrentPage < vLastPage ) {
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility='hidden'");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top=''");	
       vCurrentPage = vLastPage;
       vCurrentVendor = vLastVendor;
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility='visible'");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top='1px'");	
	}
}
function showFirstVendor()
{
	if ( vCurrentVendor > 1 ) {
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility='hidden'");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top=''");	
	   vCurrentVendor = 1;
       vCurrentPage = vVendorStartPages[vCurrentVendor-1];
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility='visible'");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top='1px'");	
	}
}
function showNextVendor()
{
	if ( vCurrentVendor < vLastVendor ) {
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility='hidden'");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top=''");	
	   vCurrentVendor += 1;
       vCurrentPage = vVendorStartPages[vCurrentVendor-1];
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility=''");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top='1px'");
	}
}
function showPrevVendor()
{
	if ( vCurrentVendor > 1 ) {
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility='hidden'");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top=''");	
	   vCurrentVendor -= 1;
       vCurrentPage = vVendorStartPages[vCurrentVendor-1];
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility=''");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top='1px'");
	}
}
function showLastVendor()
{
	if ( vCurrentVendor < vLastVendor ) {
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility='hidden'");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top=''");	
	   vCurrentVendor = vLastVendor;
       vCurrentPage = vVendorStartPages[vCurrentVendor-1];
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility='visible'");
	eval ("parent.report.document"+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top='1px'");	
	}
}



if (parent.frames.length != 0) {
	docRef="parent.report.document";
}
else {
	docRef="document";
}  
function setAll()
{
	var pgHeight = 0;
	for (vCurrentPage=1; vCurrentPage <= vLastPage; vCurrentPage++) {
	eval (docRef+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".visibility='visible'");
	 if (vCurrentPage == 1 ) {
	   eval (docRef+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top='1px'");	
	 }
	 else {
          pgHeight += getPageHeight(vCurrentPage-1);
	   pgHeight -= 20;
	   eval (docRef+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"']"+styleRef+".top='"+ pgHeight +"px'");	
	 }
	}
       vCurrentPage=1;
}
function getPageHeight(page) {
	var pageheight = eval(docRef+layerRef+"['"+vReportPrefix+"Page"+vCurrentPage+"'].getAttribute('clientHeight',false)");
	return pageheight;
}
function getDate()
{
   var Current_Time=new Date();
   var MM=new Array(13);
       MM[1]="01";MM[2]="02";MM[3]="03";
	   MM[4]="04";MM[5]="05";MM[6]="06";
	   MM[7]="07";MM[8]="08";MM[9]="09";
	   MM[10]="10";MM[11]="11";MM[12]="12";
   var Current_MM=MM[Current_Time.getMonth()+1];
   var Current_DD=Current_Time.getDate();
   var Current_YY=Current_Time.getYear();
   
   if (Current_YY <= 100) {
   	   Current_YY= 1900 + Current_Time.getYear();
   }
   var sDate = Current_MM + "/" + Current_DD + "/" + Current_YY;
   return sDate;
}
function getTime() {
         var Time_Now = new Date();
	  var Time_Hours = Time_Now.getHours();
	  var Time_Minutes = Time_Now.getMinutes();
	  var Time_Seconds = Time_Now.getSeconds();
	  if (Time_Hours >= 12) {
		if (Time_Hours != 12) {
		     Time_Hours = Time_Hours - 12;
		}
		 var AMPM = " PM";
	  } else {
	     var AMPM = " AM";
	  }
      if (Time_Minutes < 10) {
         Time_Minutes = ":0" + Time_Minutes;
      } else {
         Time_Minutes = ":" + Time_Minutes;
      }
      if (Time_Seconds < 10) {
         Time_Seconds = ":0" + Time_Seconds;
      } else {
         Time_Seconds = ":" + Time_Seconds;
      }
      var sTime = "" + Time_Hours + Time_Minutes;
	  sTime += Time_Seconds + AMPM;     
      return sTime;
}
function chkMode() 
{					
	if ( vMode == "Print" ) 
	{
		parent.report.focus();
		parent.report.print();
	}
}
function Rprefresh()
{
parent.report.refresh();
}