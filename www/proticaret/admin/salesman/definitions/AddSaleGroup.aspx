<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddSaleGroup.aspx.vb" Inherits="ASPNetPortal.AddSaleGroup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title><%= GetGlobalResourceObject("admin","SalesGroup") %></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","SalesGroup") %></div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lbl" Text="" runat="server"></asp:Label>
                    <asp:Label ID="lblErr" Text="" runat="server" Visible="true"></asp:Label>
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="lblArea" runat="server" Text="<%$ Resources:admin,SalesAreaName %>"></asp:Label>
                                    <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlarea" runat="server" InitialValue="0" /></label>
                                <asp:DropDownList ID="ddlarea" runat="server" AutoPostBack="true"></asp:DropDownList>
                            </div>
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="lblPlace" runat="server" Text="<%$ Resources:admin,SalesPlacesName %>"></asp:Label>
                                    <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlPlace" runat="server" InitialValue="0" /></label>
                                <asp:DropDownList ID="ddlPlace" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="lblCode" runat="server" Text="<%$ Resources:admin,SalesGroupCode %>"></asp:Label>
                                    <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtCode" runat="server" /></label>
                                <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="lblName" runat="server" Text="<%$ Resources:admin,SalesGroupName %>"></asp:Label>
                                    <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtGroup" runat="server" /></label>
                                <asp:TextBox ID="txtGroup" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="buttonGroup">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>" />
                        <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Cancel %>" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
