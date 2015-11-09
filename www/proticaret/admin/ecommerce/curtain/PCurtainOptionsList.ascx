<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="PCurtainOptionsList.ascx.vb" Inherits=".PCurtainOptionsList" %>
<div class="pageCurtainOptionsList">
    <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblerr" runat="server" Text="Label"></asp:Label>

    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","CurtainAttributesNew") %></asp:HyperLink>
    </div>

    <div class="dataTable">
        <asp:GridView ID="gwCurtainOptList" runat="server" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="CurtainID" Visible="false" HeaderText="IND"></asp:BoundField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,PropertyName %>">
                    <ItemTemplate>
                        <asp:HyperLink runat="Server" ToolTip="Özellik Düzenle" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/curtain/PCurtainEdit.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID") %>'><%#Eval("CurtainName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Status %>">
                    <ItemTemplate>
                        <asp:CheckBox ToolTip="Özelliği Aktif etmek için seçiniz." ID="cbCurtainActive" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "CurtainActive")%>' runat="server"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:admin,Attribute1 %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink1" runat="Server" Visible='<%# eval("visCurtainUnit1") %>' CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/curtain/PCurtainSizeList.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID") & "&SID=" & 1 & "&TID=" & DataBinder.Eval(Container.DataItem, "CurtainUnit1")%> '><%# DataBinder.Eval(Container.DataItem, "CurtainUnit1")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="<%$ Resources:admin,Attribute2 %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink2" runat="Server" Visible='<%# Eval("visCurtainUnit2")%>' CssClass="btnLink fancyContent" NavigateUrl='<%#  "/admin/ecommerce/curtain/PCurtainSizeList.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID") & "&SID=" & 2 & "&TID=" & DataBinder.Eval(Container.DataItem, "CurtainUnit2")%> '><%# DataBinder.Eval(Container.DataItem, "CurtainUnit2")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:admin,Attribute3 %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink3" runat="Server" Visible='<%# Eval("visCurtainUnit3")%>' CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/curtain/PCurtainSizeList.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID") & "&SID=" & 3 & "&TID=" & DataBinder.Eval(Container.DataItem, "CurtainUnit3") %> '><%# DataBinder.Eval(Container.DataItem, "CurtainUnit3")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:admin,Attribute4 %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink4" runat="Server" Visible='<%# Eval("visCurtainUnit4")%>' CssClass="btnLink fancyContent" NavigateUrl='<%#  "/admin/ecommerce/curtain/PCurtainSizeList.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID") & "&SID=" & 4 & "&TID=" & DataBinder.Eval(Container.DataItem, "CurtainUnit4") %> '><%# DataBinder.Eval(Container.DataItem, "CurtainUnit4")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:admin,Attribute5 %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink5" runat="Server" Visible='<%# Eval("visCurtainUnit5")%>' CssClass="btnLink fancyContent" NavigateUrl='<%#  "/admin/ecommerce/curtain/PCurtainSizeList.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID") & "&SID=" & 5 & "&TID=" & DataBinder.Eval(Container.DataItem, "CurtainUnit5") %> '>  <%# DataBinder.Eval(Container.DataItem, "CurtainUnit5")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:admin,Attribute6 %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink6" runat="Server" Visible='<%# Eval("visCurtainUnit6")%>' data-width="600" data-height="600" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/curtain/PCurtainSizeList.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID") & "&SID=" & 6 & "&TID=" & DataBinder.Eval(Container.DataItem, "CurtainUnit6") %> '><%# DataBinder.Eval(Container.DataItem, "CurtainUnit6")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:admin,Attribute7 %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink7" runat="Server" Visible='<%# Eval("visCurtainUnit7")%>' CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/curtain/PCurtainSizeList.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID") & "&SID=" & 7 & "&TID=" & DataBinder.Eval(Container.DataItem, "CurtainUnit7") %> '><%# DataBinder.Eval(Container.DataItem, "CurtainUnit7")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:admin,Attribute8 %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink8" runat="Server" Visible='<%# Eval("visCurtainUnit8")%>' CssClass="btnLink fancyContent" NavigateUrl='<%#  "/admin/ecommerce/curtain/PCurtainSizeList.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID") & "&SID=" & 8 & "&TID=" & DataBinder.Eval(Container.DataItem, "CurtainUnit8")%> '> <%# DataBinder.Eval(Container.DataItem, "CurtainUnit8")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:admin,Attribute9 %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink9" runat="Server"  Visible='<%# Eval("visCurtainUnit9")%>' CssClass="btnLink fancyContent" NavigateUrl='<%#  "/admin/ecommerce/curtain/PCurtainSizeList.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID") & "&SID=" & 9 & "&TID=" & DataBinder.Eval(Container.DataItem, "CurtainUnit9")%> '> <%# DataBinder.Eval(Container.DataItem, "CurtainUnit9")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:admin,Attribute10 %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink10" runat="Server" Visible='<%# Eval("visCurtainUnit10")%>' CssClass="btnLink fancyContent" NavigateUrl='<%#  "/admin/ecommerce/curtain/PCurtainSizeList.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID") & "&SID=" & 10 & "&TID=" & DataBinder.Eval(Container.DataItem, "CurtainUnit10")%> '> <%# DataBinder.Eval(Container.DataItem, "CurtainUnit10")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Formula %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink11" runat="Server" ToolTip="Formül Ekle" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/curtain/PFormuleList.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID")%>'><i class="fa fa-pencil"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" Visible="false" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Edit %>">
                    <ItemTemplate>
                        <asp:HyperLink runat="Server" ToolTip="Özellik Düzenle" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/curtain/PCurtainEdit.aspx?ID=" & DataBinder.Eval(Container.DataItem, "CurtainID") %>'><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</div>
