<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.categoryfiltercombo" CodeBehind="categoryfiltercombo.ascx.vb" EnableViewState="False" %>
<div id="categoryfiltercombo" class="module">
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
                        case '4':
                            GetSubCtegories4(selObj[selObj.selectedIndex].value)
                            break;
                        case '5':
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
                // clear car list
                var lstCat = document.getElementById('<%=ddl5.ClientID%>')
                var c = lstCat.options.length;
                while (lstCat.options.length > 0)
                    lstCat.remove(0);

                var o = document.createElement("OPTION");
                lstCat.options.add(o);
                o.value = "";
                o.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseSelect") %>';

    var lstCat = document.getElementById('<%=ddl4.ClientID%>')
                var c = lstCat.options.length;
                while (lstCat.options.length > 0)
                    lstCat.remove(0);

                var o = document.createElement("OPTION");
                lstCat.options.add(o);
                o.value = "";
                o.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseSelect") %>';

    var lstCat = document.getElementById('<%=ddl3.ClientID%>')
                var c = lstCat.options.length;
                while (lstCat.options.length > 0)
                    lstCat.remove(0);

                var o = document.createElement("OPTION");
                lstCat.options.add(o);
                o.value = "";
                o.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseSelect") %>';

    var lstCat = document.getElementById('<%=ddl2.ClientID%>')
                var c = lstCat.options.length;
                while (lstCat.options.length > 0)
                    lstCat.remove(0);


                var o = document.createElement("OPTION");
                lstCat.options.add(o);
                o.value = "";
                o.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseSelect") %>';

                // fill car list
    for (var i = 0; i < result.length; i++) {
        var o = document.createElement("OPTION");
        lstCat.options.add(o);
        o.value = result[i].Id.toString();
        o.innerHTML = result[i].Label;
    }
                // enable dropdown
    lstCat.disabled = false;

}

function GetSubCtegories2(CatId) {
    ASPNetPortal.CategoryService.GetCategories(CatId, OnRequestComplete2)
}
function OnRequestComplete2(result) {
    // clear car list
    var lstCat = document.getElementById('<%=ddl5.ClientID%>')
    var c = lstCat.options.length;
    while (lstCat.options.length > 0)
        lstCat.remove(0);
    // add first (empty) element
    var o = document.createElement("OPTION");
    lstCat.options.add(o);
    o.value = "";
    o.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseSelect") %>';

    var lstCat = document.getElementById('<%=ddl4.ClientID%>')
    var c = lstCat.options.length;
    while (lstCat.options.length > 0)
        lstCat.remove(0);
    // add first (empty) element
    var o = document.createElement("OPTION");
    lstCat.options.add(o);
    o.value = "";
    o.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseSelect") %>';

    var lstCat = document.getElementById('<%=ddl3.ClientID%>')
    var c = lstCat.options.length;
    while (lstCat.options.length > 0)
        lstCat.remove(0);
    // add first (empty) element
    var o = document.createElement("OPTION");
    lstCat.options.add(o);
    o.value = "";
    o.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseSelect") %>';
    // fill car list
    for (var i = 0; i < result.length; i++) {
        var o = document.createElement("OPTION");
        lstCat.options.add(o);
        o.value = result[i].Id.toString();
        o.innerHTML = result[i].Label;
    }
    // enable dropdown
    lstCat.disabled = false;

}

function GetSubCtegories3(CatId) {
    ASPNetPortal.CategoryService.GetCategories(CatId, OnRequestComplete3)
}
function OnRequestComplete3(result) {
    // clear car list
    var lstCat = document.getElementById('<%=ddl5.ClientID%>')
    var c = lstCat.options.length;
    while (lstCat.options.length > 0)
        lstCat.remove(0);
    // add first (empty) element
    var o = document.createElement("OPTION");
    lstCat.options.add(o);
    o.value = "";
    o.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseSelect") %>';

    var lstCat = document.getElementById('<%=ddl4.ClientID%>')
    var c = lstCat.options.length;
    while (lstCat.options.length > 0)
        lstCat.remove(0);
    // add first (empty) element
    var o = document.createElement("OPTION");
    lstCat.options.add(o);
    o.value = "";
    o.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseSelect") %>';
    // fill car list
    for (var i = 0; i < result.length; i++) {
        var o = document.createElement("OPTION");
        lstCat.options.add(o);
        o.value = result[i].Id.toString();
        o.innerHTML = result[i].Label;
    }
    // enable dropdown
    lstCat.disabled = false;

}
function GetSubCtegories4(CatId) {
    ASPNetPortal.CategoryService.GetCategories(CatId, OnRequestComplete4)
}
function OnRequestComplete4(result) {
    // clear car list

    var lstCat = document.getElementById('<%=ddl5.ClientID%>')
    var c = lstCat.options.length;
    while (lstCat.options.length > 0)
        lstCat.remove(0);
    // add first (empty) element
    var o = document.createElement("OPTION");
    lstCat.options.add(o);
    o.value = "";
    o.innerHTML = '<%=GetGlobalResourceObject("lang", "PleaseSelect") %>';
    // fill car list
    for (var i = 0; i < result.length; i++) {
        var o = document.createElement("OPTION");
        lstCat.options.add(o);
        o.value = result[i].Id.toString();
        o.innerHTML = result[i].Label;
    }
    // enable dropdown
    lstCat.disabled = false;

}
function GetCtegoryUrl(CatId) {
    ASPNetPortal.CategoryService.GetCtegoryUrl(CatId, OnGetCtegoryUrlComplete)
}
function OnGetCtegoryUrlComplete(result) {
    //alert('<%=Request.QueryString("tabId")%>')
    document.location.href = result + '?tabId=' + '<%=Request.QueryString("tabId")%>' //  ASPNetPortal.CategoryService.GetCtegoryUrl(CatId,OnRequestComplete1)
}

        </script>
        <div>
            <table cellpadding="5" cellspacing="0" border="0">
                <tr>
                    <td>Kategori :
                        <select onchange="getSelectedIndexes(this)" id="ddl1" runat="server"></select></td>
                    <td>Alt Kategori :
                        <select onchange="getSelectedIndexes(this)" id="ddl2" runat="server"></select></td>
                    <td>Alt Kategori :
                        <select onchange="getSelectedIndexes(this)" id="ddl3" runat="server"></select></td>
                    <td>4. Kategori :
                        <select onchange="getSelectedIndexes(this)" id="ddl4" runat="server"></select></td>
                    <td>5. Kategori :
                        <select onchange="getSelectedIndexes(this)" id="ddl5" runat="server"></select></td>
                </tr>
            </table>
        </div>
    </di
</div>
