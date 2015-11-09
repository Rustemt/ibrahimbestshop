
function tabInit() {
	//Cache images
	if (document.images) {
	mouseleft = new Image();	mouseleft.src = TabImagePath+"tab_mouse_left.gif";
	mousemid = new Image();	mousemid.src = TabImagePath+"tab_mouse_mid.gif";
	mouseright = new Image();	mouseright.src = TabImagePath+"tab_mouse_right.gif";
	offleft = new Image();	offleft.src = TabImagePath+"tab_off_left.gif";
	offmid = new Image();	offmid.src = TabImagePath+"tab_off_mid.gif";
	offright = new Image();	offright.src = TabImagePath+"tab_off_right.gif";
	onleft = new Image();	onleft.src = TabImagePath+"tab_on_left.gif";
	onmid = new Image();	onmid.src = TabImagePath+"tab_on_mid.gif";
	onright = new Image();	onright.src = TabImagePath+"tab_on_right.gif";
	}
}

function changeTabs(tab,strContentID) {
	//Dynamic/Div only: Swap current shown tab
	var strBack = tab.style.backgroundImage;
	var strID = tab.id;
	var strTab = strID.replace("TabMid","");
	if ((strBack.indexOf("off") > -1) || (strBack.indexOf("mouse") > -1)) {
		if (strOnClick != "") tabOnClick(strTab);
		tab.style.backgroundImage = "url("+ onmid.src +")";
		document.getElementById("TabLeft"+strTab).src = onleft.src;
		document.getElementById("TabRight"+strTab).src = onright.src;
		document.getElementById("TabMid"+strPrevTab).style.backgroundImage = "url("+ offmid.src +")";
		document.getElementById("TabLeft"+strPrevTab).src = offleft.src;
		document.getElementById("TabRight"+strPrevTab).src = offright.src;
		try {
			document.getElementById(strPrevContentID).style.display="none";
		} catch(e) {
			alert("Can not find Content ID of: " + strPrevContentID);
		}
		try {
			document.getElementById(strContentID).style.display="block";
		} catch(e) {
			alert("Can not find Content ID of: " + strContentID);
		}
		strPrevTab = strTab;
		strPrevContentID = strContentID;
		if ((intTabType == 1) && ((strWidth =="*") || (strHeight =="*"))) resizeTabControl();
	}
}

function TabOver(tab) {
	//Toggle high-light of mouse over tab
	var strBack = tab.style.backgroundImage;
	var strID = tab.id;
	var strTab = strID.replace("TabMid","");
	if (strBack.indexOf("off") > -1) {
		tab.style.backgroundImage = "url("+ mousemid.src +")";
		document.getElementById("TabLeft"+strTab).src = mouseleft.src;
		document.getElementById("TabRight"+strTab).src = mouseright.src;
	} else if (strBack.indexOf("mouse") > -1) {
		tab.style.backgroundImage = "url("+ offmid.src +")";
		document.getElementById("TabLeft"+strTab).src = offleft.src;
		document.getElementById("TabRight"+strTab).src = offright.src;
	}
}

function tabHome() {
	//Home button - inline tab type only
	document.getElementById("TabContent" + strPrevTab).src = tabList[strPrevTab-1];
}

function resizeTabControl() {
	//TabContent (Frames mode only) to be size of page - even if the window is resized
	var totalOffsetH=0,totalOffsetW=0;
	frm = document.getElementsByTagName("IFRAME")
	ptag = frm[0];
	pTagName = "IFRAME";
	while (pTagName != "BODY") {
		ptag = ptag.offsetParent;
		try {
			pTagName = ptag.tagName.toUpperCase();
			totalOffsetH = totalOffsetH + ptag.offsetTop;
			totalOffsetW = totalOffsetW + ptag.offsetLeft;
		} catch (e) {
			pTagName = "BODY";
		} 
	}
	for (i=0; i<frm.length; i++) {
		if (frm[i].id.substring(0,10) == "TabContent") {
			if (strHeight == "*") frm[i].height = document.body.clientHeight-totalOffsetH-frm[i].offsetTop-2;
			if (strWidth == "*") frm[i].width = document.body.clientWidth-totalOffsetW-frm[i].offsetLeft-2;
		}
	}
}

function tabOnClick(strTabIndex) {
	//Execute the user defined onclick command
	try {
		eval(strOnClick.replace("{0}",strTabIndex));
	} catch (e) {
		alert("Tab Control 'OnClick' Error:\n" + e.message);
	}
}