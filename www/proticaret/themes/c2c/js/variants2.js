var SizesSelectedInStock = false;
var SizesSelectedUnitId = "";
var Size0Active = false;
var Size1Active = false;
var Size2Active = false;

var HoveredSize0Id = "-1";
var HoveredSize1Id = "-1";
var HoveredSize2Id = "-1";

var SelectedSize0Id = "-1";
var SelectedSize1Id = "-1";
var SelectedSize2Id = "-1";

var SelectedSize0 = "";
var SelectedSize1 = "";
var SelectedSize2 = ""; 

var xmldoc;
$(document).ready(function ()
{
  $.ajax(
  {
    type: "GET",
    url: "/store/productsizesxml.aspx?ProductId=" + ProductId,   
    cache: false, 
    dataType: ($.browser.msie) ? "text" : "xml",    
    success: parseXml
  });
});

function parseXml(xml)
{
if ($.browser.msie) {
    var xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
    xmlDoc.loadXML(xml);
    xml = xmlDoc;
}

  xmldoc = xml;
  CreateVariants();
  InitVariants();  
  ActiveVariants();
  overVariantSize0(0);
  setVariantSize0(0);
  //CheckCartButton();
//   $(":button[rel='variant']").button();
}

function CreateVariants()
{
var size0index = 0 ;
var size1index = 0 ;
var size2index = 0 ;
  $(xmldoc).find("variant").each(function ()
  {
  if ($("#size0SelectorContent input[title=" + $(this).attr("size0") + "]").length == 0)
  {      
//   if ((size0index % 5) == 0 && size0index > 0 )
//   {
//   $("#size0SelectorContent div#sizes0").append('<br />');
//   }
//$("#size0SelectorContent div#sizes0").append('<button type="button" title="' + $(this).attr("size0") + '" id="size0_' + size0index + '" onmouseover="overVariantSize0(' + size0index + ');" onmouseout="outVariantSize0(' + size0index + ');" onclick="setVariantSize0(' + size0index + ');" class="soldOut" style="height:18px;width:18px;background-image:url(' + $(this).attr("size0img") + ')" >' + $(this).attr("size0") + '</button>');
    $("#size0SelectorContent div#sizes0").append('<input rel="' + $(this).attr("pimgval") + '" type="image" title="' + $(this).attr("size0") + '" id="size0_' + size0index + '" onmouseover="overVariantSize0(' + size0index + ');" onmouseout="outVariantSize0(' + size0index + ');" onclick="setVariantSize0(' + size0index + ');return false;" class="soldOut" src="' + $(this).attr("size0img") + '" ></input>');
    size0index = size0index + 1;
  }    
  if ($("#size1SelectorContent button[title=" + $(this).attr("size1") + "]").length == 0)
  {   
//   if ((size1index % 5) == 0 && size1index > 0 )
//   {
//   $("#size1SelectorContent div#sizes1").append('<br />');
//   }     
    $("#size1SelectorContent div#sizes1").append('<button rel="variant" type="button" title="' + $(this).attr("size1") + '" id="size1_' + size1index + '" onmouseover="overVariantSize1(' + size1index + ');" onmouseout="outVariantSize1(' + size1index + ');" onclick="setVariantSize1(' + size1index + ');" class="soldOut" >' + $(this).attr("size1") + '</button>');
    size1index = size1index + 1;
  }
  if ($("#size2SelectorContent button[title=" + $(this).attr("size2") + "]").length == 0)
  {    
//   if ((size2index % 5) == 0 && size2index > 0 )
//   {
//   $("#size2SelectorContent div#sizes2").append('<br />');
//   }  
    $("#size2SelectorContent div#sizes2").append('<button rel="variant" type="button" title="' + $(this).attr("size2") + '" id="size2_' + size2index + '" onmouseover="overVariantSize2(' + size2index + ');" onmouseout="outVariantSize2(' + size2index + ');" onclick="setVariantSize2(' + size2index + ');" class="soldOut">' + $(this).attr("size2") + '</button>');
    size2index = size2index + 1;
  }
  });
 
}

function InitVariants()
{
  $(xmldoc).find("variant[qty != '0']").each(function ()
  {
    //size0
    $("#size0SelectorContent input[title=" + $(this).attr("size0") + "]").attr("class", "normal");
    //size1
    $("#size1SelectorContent button[title=" + $(this).attr("size1") + "]").attr("class", "normal");
    //size2
    $("#size2SelectorContent button[title=" + $(this).attr("size2") + "]").attr("class", "normal");
  });
}

function ActiveVariants()
{
  $(xmldoc).find("variant[qty != '0']").each(function ()
  {
    //size0
    if ($(this).attr("size0") != null)
    {
    Size0Active = true;
    $("#size0SelectorContent").show();
    }
    //size1
    if ($(this).attr("size1") != null)
    {
    Size1Active = true;
    $("#size1SelectorContent").show();
    }
    //size2
    if ($(this).attr("size2") != null)
    {
    Size2Active = true;
    $("#size2SelectorContent").show();
    }
    return false;
  });
}
function CheckCartButton()
{
//btnAddToCart2

var isAllselected = true;
if (Size0Active == true && isAllselected == true && SelectedSize0Id < 0)
{isAllselected = false;}
if (Size1Active == true && isAllselected == true && SelectedSize1Id < 0)
{isAllselected = false;}
if (Size2Active == true && isAllselected == true && SelectedSize2Id < 0)
{isAllselected = false;}

if (isAllselected == true)
{
//$("#btnAddToCart2").html(AddToCartMsg);

// $("#btnAddToCart2").html(StockOutMsg);
//}
    if ($(xmldoc).find("variant[size0 ='" + SelectedSize0 + "'][size1='" + SelectedSize1 + "'][size2='" + SelectedSize2 + "']").attr("qty") > 0)
    {
    SizesSelectedUnitId = $(xmldoc).find("variant[size0 ='" + SelectedSize0 + "'][size1='" + SelectedSize1 + "'][size2='" + SelectedSize2 + "']").attr("id") ;
    SizesSelectedInStock=true;
    $( ".cartbutton2" ).button( "option", "label", AddToCartMsg );
    //$("#btnAddToCart2").html(AddToCartMsg);
    }
    else
    {
    SizesSelectedUnitId = $(xmldoc).find("variant[size0 ='" + SelectedSize0 + "'][size1='" + SelectedSize1 + "'][size2='" + SelectedSize2 + "']").attr("id") ;
    SizesSelectedInStock=false;
    //$("#btnAddToCart2").html(StockOutMsg);
     $( ".cartbutton2" ).button( "option", "label", StockOutMsg );
    }

}
}
function resetButtons()
{
if (SelectedSize0Id >= 0)
  {  
  overVariantSize0(SelectedSize0Id);
  setVariantSize0(SelectedSize0Id);
  }
  else
  {
  $("#size0SelectorContent #textSize0").html("");
  }
  
  if (SelectedSize1Id >= 0)
  {
  overVariantSize1(SelectedSize1Id);
  setVariantSize1(SelectedSize1Id);
  }
  else
  {
  $("#size1SelectorContent #textSize1").html("");
  }  
  if (SelectedSize2Id >= 0)
  {
  overVariantSize2(SelectedSize2Id);
  setVariantSize2(SelectedSize2Id);
  }
  else
  {
  $("#size2SelectorContent #textSize2").html("");
  }
}
//size0
function outVariantSize0(i)
{
  InitVariants();
  $("#size0SelectorContent input[id=size0_" + i + "]").removeClass('hover');
  resetButtons();
  //CheckCartButton();  
}

function overVariantSize0(i)
{
  $("#size0SelectorContent input:not(.selected):not(.soldOut):not(.selectedSoldOut)[id=size0_" + i + "]").addClass("hover");//.removeClass('normal').addClass('hover');
    
  var hovered0Value = $("#size0SelectorContent input[id=size0_" + i + "]").attr("title");
  $("#size0SelectorContent #textSize0").html(hovered0Value);
  //size1 buttons
  $("#size1SelectorContent").find("button").each(function ()
  {
    var size1Value = $(this).attr("title");
    if (SelectedSize2Id >= 0)
    { //size2 selected
      if ($(xmldoc).find("variant[size0 ='" + hovered0Value + "'][size1='" + size1Value + "'][size2='" + SelectedSize2 + "'][qty != '0']").attr("qty") > 0)
      { //in stock
        $(this).attr("class", "normal");
        if (SelectedSize1 == size1Value)
        {
          $(this).attr("class", "selected");
        }        
      }
      else
      { //stockout
        $(this).attr("class", "soldOut");
        if (SelectedSize1 == size1Value)
        {
          $(this).attr("class", "selectedSoldOut");
        }        
      }
    }
    else
    { //size2 not selected
      if ($(xmldoc).find("variant[size0 ='" + hovered0Value + "'][size1='" + size1Value + "'][qty != '0']").attr("qty") > 0)
      { //in stock          
        $(this).attr("class", "normal");
        if (SelectedSize1 == size1Value)
        {
          $(this).attr("class", "selected");
        }  
      }
      else
      { //stockout       
      $(this).attr("class", "soldOut");
        if (SelectedSize1 == size1Value)
        {
          $(this).attr("class", "selectedSoldOut");
        }
      }
    }
  });
  //size2 buttons
  $("#size2SelectorContent").find("button").each(function ()
  {
    var size2Value = $(this).attr("title");
    if (SelectedSize1Id >= 0)
    { //size1 selected
      if ($(xmldoc).find("variant[size0 ='" + hovered0Value + "'][size1='" + SelectedSize1 + "'][size2='" + size2Value + "'][qty != '0']").attr("qty") > 0)
      { //in stock
        $(this).attr("class", "normal");
        if (SelectedSize2 == size2Value)
        {
          $(this).attr("class", "selected");
        }        
      }
      else
      { //stockout
        $(this).attr("class", "soldOut");
        if (SelectedSize2 == size2Value)
        {
          $(this).attr("class", "selectedSoldOut");
        }        
      }
    }
    else
    { //size1 selected
      if ($(xmldoc).find("variant[size0 ='" + hovered0Value + "'][size2='" + size2Value + "'][qty != '0']").attr("qty") > 0)
      { //in stock          
        $(this).attr("class", "normal");
        if (SelectedSize2 == size2Value)
        {
          $(this).attr("class", "selected");
        } 
      }
      else
      { //stockout                        
        $(this).attr("class", "soldOut");
        if (SelectedSize2 == size2Value)
        {
          $(this).attr("class", "selectedSoldOut");
        }   
      }
    }   
  });
//  CheckCartButton();
var pimgval = $("#size0SelectorContent input[id=size0_" + i + "]").attr("rel");
$(".slider_nav li a img").each(function ()
{
if ($(this).attr("src").indexOf(pimgval) >= 0)
{
$(this).trigger('click');
return;
}
});

}

function setVariantSize0(i)
{
  if (i >= 0)
  {
//    $("#size0SelectorContent input").attr("class", "normal");//.removeClass('hover').removeClass('selected').removeClass('selectedSoldOut');
    $("#size0SelectorContent input:not(.selected):not(.soldOut):not(.selectedSoldOut)[id=size0_" + i + "]").attr("class", "selected");
    SelectedSize0 = $("#size0SelectorContent input[id=size0_" + i + "]").attr("title");
    SelectedSize0Id = i;
    $("#size0SelectorContent #textSize0").html(SelectedSize0);    
    CheckCartButton();
  }
}

//size1
function outVariantSize1(i)
{
  InitVariants();
  $("#size1SelectorContent button[id=size1_" + i + "]").removeClass('hover');
  resetButtons();
//  CheckCartButton();
}

function overVariantSize1(i)
{
  $("#size1SelectorContent button:not(.selected):not(.soldOut):not(.selectedSoldOut)[id=size1_" + i + "]").addClass("hover");//.removeClass('normal').addClass('hover');
  //$("#size1SelectorContent button").attr("class","normal");
  //$("#size2SelectorContent button").attr("class","normal");    
  var hovered1Value = $("#size1SelectorContent button[id=size1_" + i + "]").attr("title");
  $("#size1SelectorContent #textSize1").html(hovered1Value);
  //size0 buttons
  $("#size0SelectorContent").find("input").each(function ()
  {
    var size0Value = $(this).attr("title");
    if (SelectedSize2Id >= 0)
    { //size2 selected    
      if ($(xmldoc).find("variant[size0 ='" + size0Value + "'][size1='" + hovered1Value + "'][size2='" + SelectedSize2 + "'][qty != '0']").attr("qty") > 0)
      { //in stock
        $(this).attr("class", "normal");
        if (SelectedSize0 == size0Value)
        {
          $(this).attr("class", "selected");
        }       
      }
      else
      { //stockout
        $(this).attr("class", "soldOut");
        if (SelectedSize0 == size0Value)
        {
          $(this).attr("class", "selectedSoldOut");
        }       
      }
    }
    else
    { //size1 selected
    if ($(xmldoc).find("variant[size0 ='" + size0Value + "'][size1='" + hovered1Value + "'][qty != '0']").attr("qty") > 0)
      { //in stock
        $(this).attr("class", "normal");
        if (SelectedSize0 == size0Value)
        {
          $(this).attr("class", "selected");
        }       
      }
      else
      { //stockout
        $(this).attr("class", "soldOut");
        if (SelectedSize0 == size0Value)
        {
          $(this).attr("class", "selectedSoldOut");
        }       
      }
    }
  });
  //size2 buttons
  $("#size2SelectorContent").find("button").each(function ()
  {
    var size2Value = $(this).attr("title");
    if (SelectedSize0Id >= 0)
    { //size1 selected
      if ($(xmldoc).find("variant[size0 ='" + SelectedSize0 + "'][size1='" + hovered1Value + "'][size2='" + size2Value + "'][qty != '0']").attr("qty") > 0)
      { //in stock
        $(this).attr("class", "normal");
        if (SelectedSize2 == size2Value)
        {
          $(this).attr("class", "selected");
        }      
      }
      else
      { //stockout
        $(this).attr("class", "soldOut");
        if (SelectedSize2 == size2Value)
        {
          $(this).attr("class", "selectedSoldOut");
        }       
      }
    }
    else
    { //size2 selected
    if ($(xmldoc).find("variant[size0 ='" + SelectedSize0 + "'][size2='" + size2Value + "'][qty != '0']").attr("qty") > 0)
      { //in stock
        $(this).attr("class", "normal");
        if (SelectedSize0 == size0Value)
        {
          $(this).attr("class", "selected");
        }       
      }
      else
      { //stockout
        $(this).attr("class", "soldOut");
        if (SelectedSize0 == size0Value)
        {
          $(this).attr("class", "selectedSoldOut");
        }       
      }
    }
  });
//  CheckCartButton();
}

function setVariantSize1(i)
{
  if (i >= 0)
  {
    //$("#size1SelectorContent button").attr("class", "normal");//.removeClass('hover').removeClass('selected').removeClass('selectedSoldOut');
    $("#size1SelectorContent button:not(.selected):not(.soldOut):not(.selectedSoldOut)[id=size1_" + i + "]").attr("class", "selected");//.removeClass('normal').addClass('selected');
    SelectedSize1 = $("#size1SelectorContent button[id=size1_" + i + "]").attr("title");
    SelectedSize1Id = i;
    $("#size1SelectorContent #textSize1").html(SelectedSize1);    
    CheckCartButton();
  }
}  

//size2
function outVariantSize2(i)
{
  InitVariants();
  $("#size2SelectorContent button[id=size2_" + i + "]").removeClass('hover');
  resetButtons();
//  CheckCartButton();
}

function overVariantSize2(i)
{
  $("#size2SelectorContent button:not(.selected):not(.soldOut):not(.selectedSoldOut)[id=size2_" + i + "]").addClass("hover");//.removeClass('normal').addClass('hover');
  //$("#size1SelectorContent button").attr("class","normal");
  //$("#size2SelectorContent button").attr("class","normal");    
  var hovered2Value = $("#size2SelectorContent button[id=size2_" + i + "]").attr("title");
  $("#size2SelectorContent #textSize2").html(hovered2Value);
  //size0 buttons
  $("#size0SelectorContent input").attr("class","soldOut");
  $("#size0SelectorContent").find("input").each(function ()
  {
    var size0Value = $(this).attr("title");
    if (SelectedSize1Id >= 0)
    { //size2 selected    
      if ($(xmldoc).find("variant[size0 ='" + size0Value + "'][size1='" + SelectedSize1 + "'][size2='" + hovered2Value + "'][qty != '0']").attr("qty") > 0)
      { //in stock
        $(this).attr("class", "normal");
        if (SelectedSize0 == size0Value)
        {
          $(this).attr("class", "selected");
        }       
      }
      else
      { //stockout
        $(this).attr("class", "soldOut");
        if (SelectedSize0 == size0Value)
        {
          $(this).attr("class", "selectedSoldOut");
        }       
      }
    }
    else
    { //size1 selected    
    if ($(xmldoc).find("variant[size0 ='" + size0Value + "'][size2='" + hovered2Value + "'][qty != '0']").attr("qty") > 0)
      { //in stock
        $(this).attr("class", "normal");
        if (SelectedSize0 == size0Value)
        {
          $(this).attr("class", "selected");
        }       
      }
      else
      { //stockout
        $(this).attr("class", "soldOut");
        if (SelectedSize0 == size0Value)
        {
          $(this).attr("class", "selectedSoldOut");
        }       
      }
    }
  });
  //size1 buttons
  $("#size1SelectorContent button").attr("class","soldOut");
  $("#size1SelectorContent").find("button").each(function ()
  {
    var size1Value = $(this).attr("title");
    if (SelectedSize1Id >= 0)
    { //size1 selected
      if ($(xmldoc).find("variant[size0 ='" + SelectedSize0 + "'][size1='" + size1Value + "'][size2='" + hovered2Value + "'][qty != '0']").attr("qty") > 0)
      { //in stock
        $(this).attr("class", "normal");
        if (SelectedSize1 == size1Value)
        {
          $(this).attr("class", "selected");
        }      
      }
      else
      { //stockout
        $(this).attr("class", "soldOut");
        if (SelectedSize1 == size1Value)
        {
          $(this).attr("class", "selectedSoldOut");
        }       
      }
    }
    else
    { //size2 selected
    if ($(xmldoc).find("variant[size0 ='" + SelectedSize0 + "'][size1='" + size1Value + "'][size2='" + hovered2Value + "'][qty != '0']").attr("qty") > 0)
      { //in stock
        $(this).attr("class", "normal");
        if (SelectedSize1 == size1Value)
        {
          $(this).attr("class", "selected");
        }       
      }
      else
      { //stockout
        $(this).attr("class", "soldOut");
        if (SelectedSize1 == size1Value)
        {
          $(this).attr("class", "selectedSoldOut");
        }       
      }
    }
  });
//  CheckCartButton();
}

function setVariantSize2(i)
{
  if (i >= 0)
  {
//    $("#size2SelectorContent button:not(.soldOut)").attr("class", "normal");//.removeClass('hover').removeClass('selected').removeClass('selectedSoldOut');
    $("#size2SelectorContent button:not(.selected):not(.soldOut):not(.selectedSoldOut)[id=size2_" + i + "]").attr("class", "selected");//.removeClass('normal').addClass('selected');
    SelectedSize2 = $("#size2SelectorContent button[id=size2_" + i + "]").attr("title");
    SelectedSize2Id = i;
    $("#size2SelectorContent #textSize2").html(SelectedSize2);    
    CheckCartButton();
    
  }
}  
