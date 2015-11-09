<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="newtalep.aspx.vb" Inherits="ASPNetPortal.newtalep1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%= GetGlobalResourceObject("admin","CreateNewRequest") %></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","CreateNewRequest") %></div>
                </div>
                <div class="toggleContent">
                    <div id="alert" runat="server" visible="false" class="alert ">
                        <p>
                            <asp:Label runat="server" ID="lblMessage"></asp:Label>
                        </p>
                    </div>
					<div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","SpecialCode1") %>:</label>
                                <asp:TextBox runat="server" ID="txt1" />
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","SpecialCode2") %>:</label>
                                <asp:TextBox runat="server" ID="txt2" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","SpecialCode3") %>:</label>
                                <asp:TextBox runat="server" ID="txt3" />
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","SenderFullName") %>:</label>
                                <asp:TextBox runat="server" ID="txtname" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","SenderEmail") %>:</label>
                                <asp:TextBox runat="server" ID="txtmail" />
                                <asp:RequiredFieldValidator ID="rfv2" ErrorMessage="<%$ Resources:admin,SupportMsg1 %>" ControlToValidate="txtmail" runat="server"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="<%$ Resources:admin,UserNameMsg2 %>" ControlToValidate="txtmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","SenderPhone") %>:</label>
                                <asp:TextBox runat="server" ID="txtphone" />
                                <asp:FilteredTextBoxExtender runat="server" ID="ftbE" TargetControlID="txtphone" FilterType="Custom" ValidChars="1234567890"></asp:FilteredTextBoxExtender>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","MailBeSent") %></label>
                                <asp:DropDownList runat="server" ID="ddlmail">
                                </asp:DropDownList>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin", "Category")%></label>
                                <asp:DropDownList runat="server" ID="ddlCategory">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin", "Title")%></label>
                                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="<%$ Resources:admin,NotEmpty %>"></asp:RequiredFieldValidator>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin", "UploadFile")%></label>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                        <div class="row">
                        	<div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin", "Detail")%></label>
                                <asp:TextBox runat="server" ID="txtBody" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBody" ErrorMessage="<%$ Resources:admin,NotEmpty %>"></asp:RequiredFieldValidator>
                        	</div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:admin,SendRequest %>" CssClass="btnDefault"></asp:Button>
                            </div>
                        </div>
					</div>
                </div>
            </div>
        </div>
    </form> 
</body>
</html>
