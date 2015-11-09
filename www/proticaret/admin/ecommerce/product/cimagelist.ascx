<%@ Control Language="vb" AutoEventWireup="false" Inherits="cImageList" CodeBehind="CImageList.ascx.vb" %>
<div class="pageImageList">

    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <div class="alert alert-info" id="alert" runat="server">
        <asp:Label ID="msg" runat="server"></asp:Label>
    </div>
    <div class="buttonGroup">

        <a href="#" id="lnkAddNew" runat="server" class="btnDefault" onclick="AddNew()"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "AddNew")%></a>

    </div>

    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center" DataKeyField="Path">
            <Columns>
                <asp:BoundColumn DataField="ImageId" HeaderText="IND"></asp:BoundColumn>
                <asp:BoundColumn DataField="ProductId" HeaderText="Urün Id" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="Description" HeaderText="<%$ Resources:admin,Explanation %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Picture %>">
                    <ItemTemplate>
                        <a href='<%# baseurl & "/uploads/productsimages/" & DataBinder.Eval(Container.DataItem,"Path")%>' data-width="800" data-height="400" rel="group" class="fancyContent">
                            <img alt="" border="0" src='<%# BaseUrl & "/admin/ecommerce/product/makethumb.aspx?file=" + Container.DataItem("Path") + "&intSize=125"%>'></a>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,IsDefault %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsDefault") %>' ID="Checkbox1"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>

                        <a href="#" class="btnIcon" onclick="<%# "popupWindow(725,350,50,'/admin/ecommerce/product/EditImage.aspx?IND=" & Container.DataItem("ImageId") & "&DIND=" & Container.DataItem("ProductId") & "','popup');"%>"><i class="fa fa-pencil"></i></a>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
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

    function AddNew() {
        var i = "<%= moduleId  %>";
        var a = "<%= IND%>";
        popupWindow(725, 350, 50, '/admin/ecommerce/product/EditImage.aspx?IND=0&DIND=' + a + '&MID=' + i, 'popup');


    }
</script>
