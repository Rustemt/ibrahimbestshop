<%@ Control Language="vb" AutoEventWireup="false" Inherits="ctablist" CodeBehind="ctablist.ascx.vb" %>
<asp:Label ID="lblerr" runat="server"></asp:Label>
<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
<div class="alert alert-info"  id="alert" runat="server">
    <asp:Label ID="msg" runat="server"></asp:Label>
</div>
<div class="buttonGroup">
    <a class="btnDefault" id="lnkAddNew" runat="server" href="#" onclick="AddNew2()"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "AddNew")%></a>

</div>
<div class="dataTable">
    <asp:DataGrid ID="g1" runat="server" GridLines="None" HeaderStyle-CssClass="title" AllowSorting="True" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundColumn DataField="TabId" SortExpression="TabId" HeaderText="IND" Visible="false"></asp:BoundColumn> 
            <asp:TemplateColumn HeaderText="<%$ Resources:admin,Title %>">
                <ItemTemplate>
                    <a href="javascript:void(0)" class="btnLink" onclick="<%# "popupWindow(800,600,50,'EditTab.aspx?IND=" & DataBinder.Eval(Container.DataItem,"TabId") & "&DIND=" &  DataBinder.Eval(Container.DataItem, "ProductId") & "','popup');"%>"><%#Eval("TabName")%></a>
                    <%--<asp:HyperLink CssClass="btnIcon" ID="HyperLink1" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""EditTab.aspx?IND=" & DataBinder.Eval(Container.DataItem, "TabId") & "&DIND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""","""",""width=800,height=600,top=1,left=1,scrollbars=yes,toolbar=0,status=1,resizable=1"")"%> '><i class="fa fa-pencil"></i></asp:HyperLink>--%>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:LinkButton CssClass="btnIcon" ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete"><i class="fa fa-trash"></i></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
    </asp:DataGrid>
</div>
<script type="text/javascript">
    function AddNew2() {
        var a = "<%= IND %>";
        var b = "<%= moduleId %>";
        popupWindow(800, 600, 50, '/admin/ecommerce/product/EditTab.aspx?IND=0&DIND=' + a + '&MID=' + b, 'popup');
    }

</script>
