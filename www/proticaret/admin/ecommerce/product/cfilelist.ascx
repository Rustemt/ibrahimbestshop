<%@ Control Language="vb" AutoEventWireup="false" Inherits="cFileList" CodeBehind="CFileList.ascx.vb" %>
<div class="pageFileList">

    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <div class="alert alert-info" id="alert" runat="server">
        <asp:Label ID="msg" runat="server"></asp:Label>
    </div>
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin", "AddNew")%></asp:HyperLink>
    </div>

    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="FileId" SortExpression="ImageId" HeaderText="IND"></asp:BoundColumn>
                <asp:BoundColumn DataField="Description" SortExpression="Description" HeaderText="<%$ Resources:admin,Explanation %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,EDocument %>" FooterText="<%$ Resources:admin,EDocument %>">
                    <ItemTemplate>
                        <a target="_blank" href='<%# "/uploads/ProductsFiles/" & DataBinder.Eval(Container.DataItem,"Path")%>'>
                            <img alt="" border="0" src='<%# getimage(DataBinder.Eval(Container.DataItem,"Path")) %>'></a>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn Visible="False" HeaderText="<%$ Resources:admin,IsDefault %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsDefault") %>' ID="Checkbox1"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn  HeaderText="<%$ Resources:admin,Detail %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server"  CssClass="btnIcon" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""EditFile.aspx?IND=" & DataBinder.Eval(Container.DataItem,"FileId") & "&DIND=" &  DataBinder.Eval(Container.DataItem,"ProductId") & ""","""",""width=700,height=230,top=1,left=1,scrollbars=yes,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn  HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server"  CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>
