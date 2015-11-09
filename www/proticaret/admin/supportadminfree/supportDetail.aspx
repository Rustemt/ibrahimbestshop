<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="supportDetail.aspx.vb" Inherits=".supportDetail" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title><%= GetGlobalResourceObject("admin","RequestDetail") %></title>
</head>
<body>
<form id="Form1" runat="server">
<div id="supportDetail" class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","RequestDetail") %></div>
		</div>
		<div class="toggleContent">
        	<div class="alert alert-info" id="alert" runat="server" visible="false" ><asp:Label runat="server" ID="lblMessage"></asp:Label></div>
          
            <div class="dataForm">
                <div class="row">
                    <div class="colOne">
                    	<div class="dataFilter boxToggle">
                            <div class="toggleTitle toggleMini">
                                <div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","StatusInformation") %></div>
                            </div>
                            <div class="toggleContent">
                                <div class="colGroup">
                                    <div class="col">
                                        <label runat="server"><%= GetGlobalResourceObject("admin","Category") %></label> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="<%$ Resources:admin,Select %>" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                                        <asp:DropDownList runat="server" ID="ddlCategory"> </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label runat="server"><%= GetGlobalResourceObject("admin","Status") %></label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="<%$ Resources:admin,Select %>" ControlToValidate="ddlStatus" InitialValue="0"></asp:RequiredFieldValidator>
                                        <asp:DropDownList runat="server" ID="ddlStatus"> </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label runat="server"><%= GetGlobalResourceObject("admin","ResponsiblePersonnel") %></label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="<%$ Resources:admin,Select %>" ControlToValidate="ddlUser" InitialValue="0"></asp:RequiredFieldValidator>
                                        <asp:DropDownList runat="server" ID="ddlUser"> </asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label>&nbsp;</label>
                                        <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","TicketInformation") %></div>
                </div>
                <div class="toggleContent">
                    <div class="dataForm">
                        <asp:Label Text="" Visible="false" ID="lblUserId" runat="server" />
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","RequestsID") %> :</label>
                                <label class="labelInput"><asp:Label runat="server" ID="lblSupportId"></asp:Label></label>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","Subject") %> :</label>
                                <label class="labelInput"><asp:Label runat="server" ID="lblSubject"></asp:Label></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","SubjectForm") %> :</label>
                                <label class="labelInput"><asp:Label runat="server" ID="lblUserName"></asp:Label></label>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","Email") %> :</label>
                                <label class="labelInput"><asp:Label runat="server" ID="lblUserMail"></asp:Label></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","OrderId") %> :</label>
                                <label class="labelInput"><asp:HyperLink runat="server" CssClass="textRed" ID="hyporder" /></label>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","AllOrders") %> :</label>
                                <label class="labelInput"><asp:HyperLink ID="hypallorder" CssClass="textRed" Text="<%$ Resources:admin,AllOrders %>" runat="Server"></asp:HyperLink></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label runat="server"><%= GetGlobalResourceObject("admin","Files") %>:</label>
                                <asp:Repeater runat="server" ID="rptFile">
                                <headertemplate><ul></headertemplate>
                                <ItemTemplate>
                                    <li><asp:LinkButton runat="server" CausesValidation="false" ID="lnk" CommandName="download" CssClass="textRed" CommandArgument="<%# Container.DataItem %>" Text=" <%# Container.DataItem %>"></asp:LinkButton></li>
                                </ItemTemplate>
                                <footertemplate></ul></footertemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label runat="server"><%= GetGlobalResourceObject("admin","Reply") %></label> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="<%$ Resources:admin,NotEmpty %>" ControlToValidate="txtCevap" ValidationGroup="1"></asp:RequiredFieldValidator>
                                <asp:TextBox runat="server" TextMode="MultiLine" Rows="10" ID="txtCevap" ValidationGroup="1"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","UploadFile") %></label>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                            <div class="colTwo">
                                <label>&nbsp;</label>
                                <asp:Button ID="btnCevapYaz" runat="server" Text="<%$ Resources:admin,Reply %>" CssClass="btnDefault" ValidationGroup="1"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <p></p>
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText" runat="server"><%=GetGlobalResourceObject("admin", "Messages2")%></div>
                </div>
                <div class="toggleContent">
                    <asp:Repeater runat="server" ID="rptComment">
                        <ItemTemplate>
                            <div class='<%# iif(Eval("IsAnswer"),"alert alert-info","alert") %>'>
                                <p><b><asp:Label runat="server" ID="lblMail"></asp:Label></b> &nbsp;<small><asp:Label runat="server" ID="lblDate" Text='<%# Eval("Date") %>'></asp:Label></small></p>
                                <asp:Literal runat="server" ID="lblBody" Text='<%# Eval("Message") %>'></asp:Literal>
                                <asp:Label runat="server" ID="lblAssignedUserDetail" ToolTip='<%# Eval("assignedUserDetail") %>' Text='<%# Eval("IsAnswer") %>' Visible="false"></asp:Label>
                                <asp:Label runat="server" ID="lblUserDetail" ToolTip='<%# Eval("UserDetail") %>' Text='<%# Eval("IsAnswer") %>' Visible="false"></asp:Label>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
	</div>
</div>
</form>

</body>
</html>
