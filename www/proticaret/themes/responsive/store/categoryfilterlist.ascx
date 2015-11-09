<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.categoryfilterlist" CodeBehind="categoryfilterlist.ascx.vb" EnableViewState="False" %>
<div id="categoryfilterlist" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span>
                <span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <script type="text/javascript">

            function getSelectedIndexes(selObj) {
                if (selObj[selObj.selectedIndex].value == "") {
                    return new Array(selObj.selectedIndex);
                }
                else {

                    var slct = selObj.id.substr(selObj.id.length - 1, 1);

                    switch (slct) {
                        case '1':
                            GetSubCtegories1(selObj[selObj.selectedIndex].value)
                            break;
                        case '2':
                            GetSubCtegories2(selObj[selObj.selectedIndex].value)
                            break;
                        case '3':
                            GetCtegoryUrl(selObj[selObj.selectedIndex].value)
                            break;
                        default:

                    }
                }
            }

            function GetSubCtegories1(CatId) {
                ASPNetPortal.CategoryService.GetCategories(CatId, OnRequestComplete1)
            }

            function OnRequestComplete1(result) {
                var lstCat = document.getElementById('<%=lstCat3.ClientID%>')
    var c = lstCat.options.length;
    while (lstCat.options.length > 0)
        lstCat.remove(0);
    var o = document.createElement("OPTION");
    lstCat.options.add(o);
    o.value = "";
    o.innerHTML = '<%=GetGlobalResourceObject("lang", "CategorySelectMsg3")%>';

var lstCat = document.getElementById('<%=lstCat2.ClientID%>')
    var c = lstCat.options.length;
    while (lstCat.options.length > 0)
        lstCat.remove(0);
    var o = document.createElement("OPTION");
    lstCat.options.add(o);
    o.value = "";
    o.innerHTML = '<%=GetGlobalResourceObject("lang", "CategorySelectMsg2")%>';
for (var i = 0; i < result.length; i++) {
    var o = document.createElement("OPTION");
    lstCat.options.add(o);
    o.value = result[i].Id.toString();
    o.innerHTML = result[i].Label;
}
lstCat.disabled = false;
}

function GetSubCtegories2(CatId) {
    ASPNetPortal.CategoryService.GetCategories(CatId, OnRequestComplete2)
}
function OnRequestComplete2(result) {
    var lstCat = document.getElementById('<%=lstCat3.ClientID%>')
    var c = lstCat.options.length;
    while (lstCat.options.length > 0)
        lstCat.remove(0);
    var o = document.createElement("OPTION");
    lstCat.options.add(o);
    o.value = "";
    o.innerHTML = '<%=GetGlobalResourceObject("lang", "CategorySelectMsg3")%>';

for (var i = 0; i < result.length; i++) {
    var o = document.createElement("OPTION");
    lstCat.options.add(o);
    o.value = result[i].Id.toString();
    o.innerHTML = result[i].Label;
}
lstCat.disabled = false;
}

function GetCtegoryUrl(CatId) {
    ASPNetPortal.CategoryService.GetCtegoryUrl(CatId, OnGetCtegoryUrlComplete)
}
function OnGetCtegoryUrlComplete(result) {
    document.location.href = result + '?tabId=' + '<%=Request.QueryString("tabId")%>' //  ASPNetPortal.CategoryService.GetCtegoryUrl(CatId,OnRequestComplete1)
}

        </script>
        <div>
            <table cellpadding="5" cellspacing="0" border="0">
                <tr>
                    <td><%=GetGlobalResourceObject("lang", "CategorySelectLabel1")%></td>
                    <td><%=GetGlobalResourceObject("lang", "CategorySelectLabel2")%></td>
                    <td><%=GetGlobalResourceObject("lang", "CategorySelectLabel3")%></td>
                </tr>
                <tr>
                    <td>
                        <select multiple onchange="getSelectedIndexes(this)" id="lstCat1" runat="server" size="6"></select></td>
                    <td>
                        <select multiple onchange="getSelectedIndexes(this)" id="lstCat2" runat="server" size="6"></select></td>
                    <td>
                        <select multiple onchange="getSelectedIndexes(this)" id="lstCat3" runat="server" size="6"></select></td>
                </tr>
            </table>
        </div>
    </div>
</div>
