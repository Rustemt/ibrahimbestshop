<%@ Control Language="vb" Inherits="ASPNetPortal.currency" AutoEventWireup="false" CodeBehind="currency.ascx.vb" EnableViewState="False" %>
<div id="currency" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span><%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <asp:Repeater runat="server" ID="rptCurrency">
                <ItemTemplate>
                    <table cellpadding="4" cellpadding="0" border="0">
                        <tr>
                            <td><asp:Label runat="server" ID="lblName" Text='<%# Eval("CurrencyName")  & " Satýþ"%>' ></asp:Label></td>
                            <td>:<asp:Label ID="lblRate"  Text='<%# " " & Eval("Rate") & " TL" %>' runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
