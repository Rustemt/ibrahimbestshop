<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SendMessages.aspx.vb" Inherits="ASPNetPortal.SendMessages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gönderilen Mesajlar</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Gönderilen Mesajlar</div>
                </div>
                <div class="toggleContent">
                    <div class="dataTable">
                        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" PageSize="20" DataKeyField="unread" HeaderStyle-CssClass="title">
                            <Columns>
                                <asp:BoundColumn DataField="messageid" HeaderText="ID" SortExpression="messageid"></asp:BoundColumn>
                                <asp:BoundColumn DataField="problem" HeaderText="<%$ Resources:admin,NewsletterTopics %>" SortExpression="problem"></asp:BoundColumn>
                                <asp:BoundColumn DataField="messagesubject" HeaderText="<%$ Resources:admin,Subject %>" SortExpression="messagesubject"></asp:BoundColumn>
                                <asp:BoundColumn DataField="messagedate" HeaderText="<%$ Resources:admin,MessageDate %>" SortExpression="messagedate"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,MessageRead %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <a href="javascript:void(0)" class="btnIcon" onclick="<%# "popupWindow(620,300,50,'/store/readsendmessages.aspx?ID=" & DataBinder.Eval(Container.DataItem, "messageid") & "','popup');"%>"><i class="fa fa-envelope"></i></a>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                            <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15" />
                        </asp:DataGrid>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
