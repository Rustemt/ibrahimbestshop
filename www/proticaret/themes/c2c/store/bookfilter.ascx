<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.bookfilter" EnableViewState="False" Codebehind="bookfilter.ascx.vb" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div id="bookfilter" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
		<script type="text/javascript">
            function get_yazarlist(letter)
            {
            document.getElementById("yazar_list").innerHTML = "<center><img src=/images/loading.gif></center>";
            ASPNetPortal.ProductService.GetAuthors(letter,yazar_Complete)
            }
            
            function yazar_Complete(result)
            {
            
            if (result != null)
            {
            var select = document.createElement("select");
            select.id="cmbyazar"
            select.onchange = NavigateYazar
            //select.setAttribute("class","Global_Normal_ComboBox");
            //select.setAttribute("className","Global_Normal_ComboBox");
            //select.setAttribute("onchange", "alert('x');" )
            
            var o = document.createElement("OPTION");
            select.appendChild(o);
            o.value = "-1";
            o.innerHTML = '<%=GetGlobalResourceObject("lang", "SelectAuthor")%>';
            // fill list
            for(var i = 0; i < result.length; i++)
            {
            
            var o = document.createElement("OPTION");
            select.appendChild(o);
            o.value = result[i].Id.toString();
            o.innerHTML = result[i].Label;
            }
            // add dropdown
            document.getElementById("yazar_list").innerHTML = "";
            document.getElementById("yazar_list").appendChild(select);
            }
            else
            {
            document.getElementById("yazar_list").innerHTML = '<%=GetGlobalResourceObject("lang", "NoRecordsFound")%>';
            }
            
            }
            
            function NavigateYazar() 
            {
            var tid = '<%=Request.QueryString("tabId")%>'
            if (tid != null)
            {
            document.location.href = window.location.pathname  + '?tabId=' + '<%=Request.QueryString("tabId")%>' +  '&auth=' + document.getElementById("cmbyazar").value  ;
            }
            else
            {
            document.location.href = window.location.pathname  +  '?auth=' + document.getElementById("cmbyazar").value  ;
            }
            }
            
            
        </script>
        <script type="text/javascript">
            function get_yayinevilist(letter)
            {
            document.getElementById("yayinevi_list").innerHTML = "<center><img src=/images/loading.gif></center>";
            ASPNetPortal.ProductService.GetPublishers(letter,yayinevi_Complete)
            }
            
            function yayinevi_Complete(result)
            {
            if ( result != null)
            {
            var select = document.createElement("select");
            select.id="cmbyayinevi"
            select.onchange = NavigateYayinevi
            //select.setAttribute("class","Global_Normal_ComboBox");
            //select.setAttribute("className","Global_Normal_ComboBox");
            var o = document.createElement("OPTION");
            select.appendChild(o);
            o.value = "-1";
            o.innerHTML = '<%=GetGlobalResourceObject("lang", "SelectPublisher")%>';
            // fill list
            for(var i = 0; i < result.length; i++)
            {
            
            var o = document.createElement("OPTION");
            select.appendChild(o);
            o.value = result[i].Id.toString();
            o.innerHTML = result[i].Label;
            }
            // add dropdown
            document.getElementById("yayinevi_list").innerHTML = "";
            document.getElementById("yayinevi_list").appendChild(select);
            }
            else
            {
            document.getElementById("yayinevi_list").innerHTML = '<%=GetGlobalResourceObject("lang", "NoRecordsFound")%>';
            }
            
            }
            
            function NavigateYayinevi() 
            {
            var tid = '<%=Request.QueryString("tabId")%>'
            if (tid != null)
            {
            document.location.href = window.location.pathname + '?tabId=' + '<%=Request.QueryString("tabId")%>' + '&pub=' + document.getElementById("cmbyayinevi").value ;
            }
            else
            {
            document.location.href = window.location.pathname  + '?pub=' + document.getElementById("cmbyayinevi").value ;
            }
            }
        </script>
        <table>
            <tr>
                <td><b><asp:Label ID="lblyazarlar" runat="server" Text="<%$ Resources:lang, Authors%>"></asp:Label></b></td>
                <td><b><asp:Label ID="lblyayinci" runat="server" Text="<%$ Resources:lang, Publishers%>"></asp:Label></b></td>
            </tr>
            <tr>
                <td>
                    <span><a href="#" onclick="get_yazarlist('A');return false">A</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('B');return false">B</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('C');return false">C</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('Ç');return false">Ç</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('D');return false">D</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('E');return false">E</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('F');return false">F</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('G');return false">G</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('H');return false">H</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('I');return false">I</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('Ý');return false">Ý</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('J');return false">J</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('K');return false">K</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('L');return false">L</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('M');return false">M</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('N');return false">N</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('O');return false">O</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('Ö');return false">Ö</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('P');return false">P</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('R');return false">R</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('S');return false">S</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('Þ');return false">Þ</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('T');return false">T</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('U');return false">U</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('Ü');return false">Ü</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('V');return false">V</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('Q');return false">Q</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('W');return false">W</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('Y');return false">Y</a> , </span>
                    <span><a href="#" onclick="get_yazarlist('Z');return false">Z</a></span> 
                </td>
                <td>
                    <span><a href="#" onclick="get_yayinevilist('A');return false">A</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('B');return false">B</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('C');return false">C</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('Ç');return false">Ç</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('D');return false">D</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('E');return false">E</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('F');return false">F</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('G');return false">G</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('H');return false">H</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('I');return false">I</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('Ý');return false">Ý</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('J');return false">J</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('K');return false">K</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('L');return false">L</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('M');return false">M</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('N');return false">N</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('O');return false">O</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('Ö');return false">Ö</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('P');return false">P</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('R');return false">R</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('S');return false">S</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('Þ');return false">Þ</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('T');return false">T</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('U');return false">U</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('Ü');return false">Ü</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('V');return false">V</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('Q');return false">Q</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('W');return false">W</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('Y');return false">Y</a> , </span>
                    <span><a href="#" onclick="get_yayinevilist('Z');return false">Z</a></span>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="yazar_list">
                        <select id="cmbyazar">
                            <option value="-1" selected="selected"><%=GetGlobalResourceObject("lang", "SelectLatter")%></option>
                        </select>
                    </div>
                </td>
                <td>
                    <div id="yayinevi_list">
                        <select id="cmbyayinevi">
                            <option value="-1"><%=GetGlobalResourceObject("lang", "SelectLatter")%></option>
                        </select>
                    </div>
                </td>
            </tr>
        </table>
	</div>
</div>