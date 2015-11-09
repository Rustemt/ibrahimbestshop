<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>

<%@ Page Language="vb" AutoEventWireup="false" Inherits="EditUserFilter" CodeBehind="EditUserFilter.aspx.vb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title><%=GetGlobalResourceObject("admin", "CustomerFilter")%></title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup" style="width: 580px;">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText" runat="server"><%=GetGlobalResourceObject("admin", "CustomerFilter")%></div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblErr" runat="server"></asp:Label>

                    <table width="100%" cellspacing="0" cellpadding="0" border="0">
                        <tr runat="server">
                            <td>
                                <div class="colGroup">
                                    <div class="col">
                                        <label>
                                            <asp:Label ID="Label4" runat="server"><%=GetGlobalResourceObject("admin", "MemberType")%> :</asp:Label></label>
                                        <asp:DropDownList ID="ddlUserType" runat="server">
                                            <asp:ListItem Text="<%$ Resources:admin,Individual %>" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Institutional %>" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Salesman %>" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,UserAll %>" Value="-1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>
                                            <asp:Label ID="Label6" runat="server"><%=GetGlobalResourceObject("admin", "Dealer")%>:</asp:Label></label>
                                        <asp:DropDownList ID="ddlBayi" runat="server">
                                            <asp:ListItem Text="<%$ Resources:admin,UserAll %>" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Yes %>" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,No %>" Value="0"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col col2">
                                        <label>
                                            <asp:Label ID="Label1" runat="server"><%=GetGlobalResourceObject("admin", "UserName")%> :</asp:Label></label>
                                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                        <asp:DropDownList ID="ddlfilter" runat="server">
                                            <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col col2">
                                        <label>
                                            <asp:Label ID="Label3" runat="server"><%=GetGlobalResourceObject("admin", "FullName")%> :</asp:Label></label>
                                        <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                                        <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                                            <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>
                                            <asp:Label ID="Label5" runat="server"><%=GetGlobalResourceObject("admin", "City")%>:</asp:Label></label>
                                        <asp:DropDownList ID="ddlIl" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>
                                            <asp:Label ID="lbl1" runat="server"><%=GetGlobalResourceObject("admin", "Code1")%></asp:Label></label>
                                        <asp:DropDownList ID="ddlCode1" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>
                                            <asp:Label ID="Label11" runat="server"><%=GetGlobalResourceObject("admin", "Code2")%></asp:Label></label>
                                        <asp:DropDownList ID="ddlCode2" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>
                                            <asp:Label ID="Label10" runat="server"><%=GetGlobalResourceObject("admin", "Code3")%></asp:Label></label>
                                        <asp:DropDownList ID="ddlCode3" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>
                                            <asp:Label ID="Label12" runat="server"><%=GetGlobalResourceObject("admin", "Status")%>:</asp:Label></label>
                                        <asp:DropDownList ID="ddlActive" runat="server">
                                            <asp:ListItem Text="<%$ Resources:admin,UserAll %>" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>&nbsp;</label>
                                        <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="dataTable">
                        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
                            <Columns>
                                <asp:BoundColumn DataField="UserId" SortExpression="UserId" HeaderText="IND"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
                                <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                                <asp:BoundColumn DataField="UCODE1" SortExpression="UCODE1" HeaderText="<%$ Resources:admin,Code1 %>"></asp:BoundColumn>
                                <asp:BoundColumn DataField="UCODE2" SortExpression="UCODE2" HeaderText="<%$ Resources:admin,Code2 %>"></asp:BoundColumn>
                                <asp:BoundColumn DataField="UCODE3" SortExpression="UCODE3" HeaderText="<%$ Resources:admin,Code3 %>"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:HyperLink data-width="750" data-height="600" CssClass="btnIcon" ID="HyperLink1" runat="Server" NavigateUrl='<%#  "Javascript:var PopUpWin = window.open(""/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId")  &  ""","""",""width=700,height=900,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                            <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15" />
                        </asp:DataGrid>
                    </div>
                    <div class="dataCount">
                        <ul>
                            <li>
                                <label runat="server"><%=GetGlobalResourceObject("admin", "TotalRecording")%> :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label></li>
                            <li>
                                <label runat="server"><%=GetGlobalResourceObject("admin", "TotalPage")%> :<asp:Label ID="lblPageCount" runat="server"></asp:Label></label></li>
                            <li>
                                <label runat="server"><%=GetGlobalResourceObject("admin", "CurrentPage")%> :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></label></li>
                        </ul>
                    </div>
                    <div class="buttonGroup">
                        <asp:Button ID="btnSaveExit" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
                        <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" CausesValidation="False"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
