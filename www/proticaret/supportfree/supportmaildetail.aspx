<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="supportmaildetail.aspx.vb" Inherits=".supportmaildetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/admin/assets/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="module" class="pagePopup">
            <div class="boxToggle" runat="server">
                <div class="toggleTitle">
                    <div class="titleText">Bilgi Talebi Detayı</div>
                </div>
            
                <div class="toggleContent">
                    <div class="dataForm">
                        <div class="row">
                            <div class="colOne alert" runat="server" id="divAlert" visible="false">
                                <label><asp:Label ID="lblMessage" runat="server"></asp:Label></label>
                            </div>
                        </div>
                        <div runat="server" id="divContent">
                            <div class="row">
                                <div class="colOne">
                                    <label><asp:Label runat="server" ID="lblTitle"></asp:Label></label>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="colTwo">
                                    <label>Konu :</label>
                                    <asp:Label runat="server" ID="lblSubject"></asp:Label>
                                </div>
                                <div class="colTwo">
                                    <label>Konuyu Açan :</label>
                                    <asp:Label runat="server" ID="lblUserMail"></asp:Label>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="colOne">
                                <asp:Panel runat="server" ID="pnlCevap" Visible="false">
                                <asp:TextBox runat="server" TextMode="MultiLine" Rows="10" ID="txtCevap" ValidationGroup="1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCevap" ErrorMessage="Boş Bırakılamaz" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="colTwo">
                                    <label>Dosya Yükle </label>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </div>
                                <div class="colTwo">
                                    <label>&nbsp;</label>
                                    <div class="buttonGroup">
                                    <asp:LinkButton ID="btnCevapYaz" runat="server" CssClass="btnDefault" ForeColor="#FFFFFF" Text="Cevap Yaz" ValidationGroup="1"></asp:LinkButton>
                                    </div>
                                    <asp:Label ID="lblAssignedUserId" runat="server" Text="" Visible="false" /> </asp:Panel>
                                </div>
                                  
                                
                                
                            </div>
                            
                            <div style="background-color:#FFF; padding:10px;">
                                <asp:Repeater runat="server" ID="rptComment">
                                    <ItemTemplate>
                                        <div class='<%# iif(Eval("IsAnswer"),"information","alert") %> row'>
                                            <div class="colOne" style="border-bottom:1px solid #CCC; padding-bottom:5px;">
                                                <label><asp:Label runat="server" ID="lblMail"></asp:Label></label>
                                                <asp:Label runat="server" ID="lblDate" Text='<%# Eval("Date") %>'></asp:Label></br>
                                                <asp:Literal runat="server" ID="lblBody" Text='<%# Eval("Message") %>'></asp:Literal>
                                                <asp:Label runat="server" ID="lblAssignedUserDetail" ToolTip='<%# Eval("assignedUserDetail") %>' Text='<%# Eval("IsAnswer") %>' Visible="false"></asp:Label>
                                                <asp:Label runat="server" ID="lblUserDetail" ToolTip='<%# Eval("UserDetail") %>' Text='<%# Eval("IsAnswer") %>' Visible="false"></asp:Label>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                    <SeparatorTemplate>
                                    </SeparatorTemplate>
                                </asp:Repeater>
                            </div>
                            
                        </div>
                    </div>  
                </div>
            </div>
        </div>
    </form>
</body>
</html>
