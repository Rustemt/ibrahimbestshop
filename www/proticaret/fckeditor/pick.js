// File Picker modification for FCK Editor v2.0 - www.fckeditor.net
// by: Pete Forde <pete@unspace.ca> @ Unspace Interactive

var urlobj;

function BrowseServer()
{	
	OpenServerBrowser(
		'/fckeditor/editor/filemanager/browser/default/browser.html?Connector=/fckeditor/editor/filemanager/connectors/aspx/connector.aspx',		
		screen.width * 0.7,
		screen.height * 0.7 ) ;
	
}
function BrowseServer(obj)
{
	urlobj = obj;
	
	OpenServerBrowser(
		'/fckeditor/editor/filemanager/browser/default/browser.html?Connector=/fckeditor/editor/filemanager/connectors/aspx/connector.aspx',		
		screen.width * 0.7,
		screen.height * 0.7 ) ;
//	OpenServerBrowser(
//		'http://www.localhost.com/fckeditor/editor/filemanager/browser/default/browser.html?Connector=http://www.localhost.com/fckeditor/editor/filemanager/connectors/aspx/connector.aspx',
//		screen.width * 0.7,
//		screen.height * 0.7 ) ;
	
}

function OpenServerBrowser( url, width, height )
{
	var iLeft = (screen.width  - width) / 2 ;
	var iTop  = (screen.height - height) / 2 ;

	var sOptions = "toolbar=no,status=no,resizable=yes,dependent=yes" ;
	sOptions += ",width=" + width ;
	sOptions += ",height=" + height ;
	sOptions += ",left=" + iLeft ;
	sOptions += ",top=" + iTop ;

	var oWindow = window.open( url, "BrowseWindow", sOptions ) ;
}

function SetUrl( url, width, height, alt )
{
document.getElementById(urlobj).value = url ;
try {
document.getElementById(urlobj).onchange();
}
catch(err) {
}
oWindow = null;
}
//function SetUrl( url, width, height, alt )
//{
//	document.getElementById(urlobj).value = url ;
//	oWindow = null;
//}
