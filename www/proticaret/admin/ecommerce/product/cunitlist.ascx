<%@ Control Language="vb" AutoEventWireup="false" Inherits="CUnitList" CodeBehind="CUnitList.ascx.vb" %>
<div class="pageCUnitList">
    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <div class="alert alert-info" id="alert" runat="server">
        <asp:Label ID="msg" runat="server"></asp:Label>
    </div>

    <div class="buttonGroup">
        <%--<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin", "AddNew")%></asp:HyperLink>--%>
        <a class="btnDefault" id="lnkAddNew" runat="server" href="#" onclick="AddNewUnit()"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "AddNew")%></a>

    </div>

    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn Visible="False" DataField="UnitId" SortExpression="UnitId" HeaderText="IND"></asp:BoundColumn>
                <asp:BoundColumn Visible="false" DataField="BirimAdi" SortExpression="BirimAdi" HeaderText="<%$ Resources:admin,UnitName %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,UnitName %>">
                    <ItemTemplate>
                        <asp:HyperLink CssClass="btnIcon fancyContent" Visible="false" ID="Hyperlink6" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/EditUsages.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  "" %> '><i class="fa fa-sitemap"></i></asp:HyperLink>
                        <a href="javascript:void(0)" class="btnLink" onclick="<%# "popupWindow(700,850,50,'EditUnit.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UnitId") & "&DIND=" &  IND & "','popup');"%>"><%#Eval("BirimAdi")%></a>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="Aciklama" SortExpression="Aciklama" HeaderText="<%$ Resources:admin,Explanation %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="IsDefault" SortExpression="IsDefault" HeaderText="<%$ Resources:admin,IsDefault %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="IsActive" SortExpression="IsActive" HeaderText="<%$ Resources:admin,Active %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="Carpan" SortExpression="Carpan" HeaderText="<%$ Resources:admin,Multiplier %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="Desi" HeaderText="<%$ Resources:admin,LoadWeight %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,TransferPrice %>">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati0") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.C0Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,SalesPrice1 %>">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati1") %>'></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.C1Name") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,SalesPrice2 %>">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati2") %>'></asp:Label>
                        <asp:Label ID="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.C2Name") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,SalesPrice3 %>">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati3") %>'></asp:Label>
                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.C3Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,SalesPrice4 %>">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati4") %>'></asp:Label>
                        <asp:Label ID="Label10" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.C4Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,SalesPrice5 %>">
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati5") %>'></asp:Label>
                        <asp:Label ID="Label12" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.C5Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" FooterText="<%$ Resources:admin,Detail %>" Visible="false">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" Text="<%$ Resources:admin,Detail %>" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""EditUnit.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UnitId") & "&DIND=" &  IND & ""","""",""width=700,height=842,top=1,left=1,scrollbars=yes,toolbar=0,status=1,resizable=1"")" %> '></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <PagerStyle Visible="False" CssClass="Admin_TabloBaslik" Mode="NumericPages"></PagerStyle>
        </asp:DataGrid>
    </div>
</div>
<script type="text/javascript">
    function AddNewUnit() {
        var a = "<%= IND %>";
        var b = "<%= moduleId %>";
        popupWindow(700, 850, 50, '/admin/ecommerce/product/EditUnit.aspx?IND=0&DIND=' + a + '&MID=' + b, 'popup');
    }

</script>
