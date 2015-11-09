<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.points" Codebehind="points.ascx.vb" %>
<div id="points" class="module">
    <% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">    
        <div id="alert" runat="server" class="alert">
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
        <div id="infoNo" runat="server" class="information title2"><%=GetGlobalResourceObject("lang", "PointsMsg2")%></div>
        <div id="infoOk" runat="server" class="information title2"><%=GetGlobalResourceObject("lang", "PointsMsg3")%></div>	
        <div class="dataTable">
            <table>
                <tr>
                    <td><%=GetGlobalResourceObject("lang", "OrderPoints")%></td>
                    <td>: <asp:Label ID="lblAlisverisPuan" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td><%=GetGlobalResourceObject("lang", "OtherPoints")%></td>
                    <td>: <asp:Label ID="lblDigerPuan" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td><%=GetGlobalResourceObject("lang", "TotalPoints")%></td>
                    <td>: <asp:Label ID="lblToplamPuan" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td><%=GetGlobalResourceObject("lang", "TotalPointsCost")%></td>
                    <td>: <asp:Label ID="lblPuanPara" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="btnOlustur" CssClass="button" runat="server" Text="<%$ Resources:lang, ConvertToCoupon%>" /></td>
                </tr>
            </table>
        </div>
    </div>
</div>
