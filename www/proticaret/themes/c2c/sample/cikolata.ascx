
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.PortalModuleControl" %>

<div id="sample" class="module">
    <div id="module_content">
    <% if HeaderVisible then %>
    <div id="module_title">
        <span>
        <span id="module_title_icon"></span> <%=ModuleTitle%>
        <% if IsEditable then %>
        <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
        <% end if %>
        </span>
    </div>
    <% end if %>
    <div>
   
   <table>
   <tr>
   <td><div id="d1"></div><input id="i1" type="hidden" value="0" /></td>
   <td><div id="d2"></div><input id="i2" type="hidden" value="0" /></td>
   <td><div id="d3"></div><input id="i3" type="hidden" value="0" /></td>
   <td><div id="d4"></div><input id="i4" type="hidden" value="0" /></td>
   <td><div id="d5"></div><input id="i5" type="hidden" value="0" /></td>
   </tr>   
   <tr>
   <td><div id="d6"></div><input id="i6" type="hidden" value="0" /></td>
   <td><div id="d7"></div><input id="i7" type="hidden" value="0" /></td>
   <td><div id="d8"></div><input id="i8" type="hidden" value="0" /></td>
   <td><div id="d9"></div><input id="i9" type="hidden" value="0" /></td>
   <td><div id="d10"></div><input id="i10" type="hidden" value="0" /></td>
   </tr>
   <tr>
   <td><div id="d11"></div><input id="i11" type="hidden" value="0" /></td>
   <td><div id="d12"></div><input id="i12" type="hidden" value="0" /></td>
   <td><div id="d13"></div><input id="i13" type="hidden" value="0" /></td>
   <td><div id="d14"></div><input id="i14" type="hidden" value="0" /></td>
   <td><div id="d15"></div><input id="i15" type="hidden" value="0" /></td>
   </tr>
   </table>
   <a href="javascript:Clearbox()" id="btnClear" style="display:none">Temizle</a>
   <a href="javascript:AddItem('1')" id="a1" title="ürün 1"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('2')" id="a2" title="ürün 2"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('3')" id="a3" title="ürün 3"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('4')" id="a4" title="ürün 4"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('5')" id="a5" title="ürün 5"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('6')" id="a6" title="ürün 6"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('7')" id="a7" title="ürün 7"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('8')" id="a8" title="ürün 8"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('9')" id="a9" title="ürün 9"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('10')" id="a10" title="ürün 10"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('11')" id="a11" title="ürün 11"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('12')" id="a12" title="ürün 12"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('13')" id="a13" title="ürün 13"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('14')" id="a14" title="ürün 14"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddItem('15')" id="a15" title="ürün 15"><img alt="" src="/uploads/kirmizi.png" /></a>
   <a href="javascript:AddToCartBox();">Sepete Ekle</a>
    </div>
</div>
 <script type="text/javascript">
     var ProductCode = 'osb'
 var itemindex = 1;
 function AddItem(item)
 {
 if (itemindex<16)
 {
 $('#d' + itemindex).html($('#a' + item).html());
 $('#i' + itemindex).val($('#a' + item).attr('title'));
 itemindex = itemindex + 1;
 }
 if (itemindex>1)
 {
 $('#btnClear').show();
 }
 }
 function Clearbox()
 {
   for (i=1;i<=16;i++)
        {
         $('#d' + i).html('');
         $('#i' + i).val('');
        }
     itemindex = 1;
     $('#btnClear').hide();      
 }
 
  function AddToCartBox()
 { 
 if (itemindex == 16)
    {   
    var attr='';     
    var desc='';  
    
        for (i=1;i<=(itemindex-1);i++)
        {
        desc = desc +  ($('#i' + i).val()) + ':';
        attr = attr +  i + ',';
        }        
        window.location.href = '/store/addtocart.aspx?ProductCode=' + ProductCode +  '&Qty=1&Attributes=' + attr + '&Description=' + desc ;
    }
 else
    {
    alert('Lütfen Kutuyu Doldurun. Boþ Kutu göndermek istemezsiniz deðilmi ?')
    }
 }
 </script>