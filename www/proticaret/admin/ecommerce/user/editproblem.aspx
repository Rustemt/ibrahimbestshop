<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editproblem.aspx.vb" Inherits="ASPNetPortal.editproblem" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Duyuru Ekle</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Duyuru Ekle</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                    <div class="buttonGroup"> 
                        <a class="btnDefault" href="javascript:void(0)" onclick="popupWindow(600,166,50,'/admin/ecommerce/user/problemedit.aspx?IND=0','popup');"><i class="fa fa-plus"></i> Yeni Ekle</a>
                    </div>
                    <div class="dataTable">
                        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
                            <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
                            <Columns>
                                <asp:BoundColumn DataField="problemId" SortExpression="problemId" HeaderText="IND"></asp:BoundColumn>
                                <asp:BoundColumn DataField="problem" SortExpression="problem" HeaderText="<%$ Resources:admin,NewsletterName %>"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Edit %>"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                                    <ItemTemplate>
                                        <a class="btnIcon" href="#" onclick="<%# "popupWindow(600,166,50,'/admin/ecommerce/user/problemedit.aspx?IND=" & DataBinder.Eval(Container.DataItem, "problemId") & "','popup');" %>"><i class="fa fa-pencil"></i></a>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                                    <ItemTemplate>
                                        <asp:LinkButton Enabled="<%# IsAllowedOnDemo() %>" ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"  ><i class="fa fa-trash-o"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                        </asp:DataGrid>
                    </div>
                    <div class="buttonGroup">
                        <asp:Button runat="server" ID="btncancel" Text="<%$ Resources:admin,Close %>" CssClass="btnDefault" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
