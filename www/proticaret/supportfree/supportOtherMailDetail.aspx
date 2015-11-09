<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="supportOtherMailDetail.aspx.vb" Inherits=".supportOtherMailDetail" ValidateRequest="false"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Talep Detay</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div id="supportDetail" class="module">
            <div id="module_content">
                <div id="module_title">
                    <span><span id="module_title_icon"></span>Talep Detay </span>
                </div>
                <div id="alert" runat="server" visible="false" class="alert">
                    <p>
                        <asp:Label runat="server" ID="lblMessage"></asp:Label>
                    </p>
                </div>
                <div class="module_box" style="text-align: right">
                    <table cellpadding="2" style="margin-right: auto">
                        <tr>
                            <td valign="bottom" align="left">
                                <asp:Label runat="server" ID="lblTicketCount"></asp:Label>
                            </td>
                            <td valign="bottom" align="left">
                                <label>Kategori</label>
                                <asp:DropDownList runat="server" ID="ddlCategory">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Seçiniz" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                            </td>
                            <td valign="bottom" align="left">
                                <label>Durumu</label>
                                <asp:DropDownList runat="server" ID="ddlStatus">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Seçiniz" ControlToValidate="ddlStatus" InitialValue="0"></asp:RequiredFieldValidator>
                            </td>
                            <td align="left" valign="bottom">
                                <label>Sorumlu Personel</label>
                                <asp:DropDownList runat="server" ID="ddlUser">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Seçiniz" ControlToValidate="ddlUser" InitialValue="0"></asp:RequiredFieldValidator>
                            </td>
                            <td align="left" valign="bottom">
                                <asp:Button ID="btnSave" runat="server" Text="Kaydet" CssClass="button"></asp:Button>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="module_box">
                    <asp:Label Text="" Visible="false" ID="lblUserId" runat="server" />
                    <p>
                        <asp:Label runat="server" ID="lblSupportId"></asp:Label><br />
                        Konu :
                            <asp:Label runat="server" ID="lblSubject"></asp:Label><br />
                        Konuyu Açan :
                            <asp:Label runat="server" ID="lblUserName"></asp:Label>&nbsp;&nbsp; : &nbsp;&nbsp;
                            <asp:Label runat="server" ID="lblUserMail"></asp:Label>
                    </p>
                    Dosyalar:<br />
                    <asp:Repeater runat="server" ID="rptFile">
                        <ItemTemplate>
                            <asp:LinkButton runat="server" CausesValidation="false" ID="lnk" CommandName="download" CommandArgument="<%# Container.DataItem %>" Text=" <%# Container.DataItem %>"></asp:LinkButton>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <br />
                        </SeparatorTemplate>
                    </asp:Repeater>
                </div>
                <div>
                    Cevap Yaz
                    <br />
                    <asp:TextBox runat="server" TextMode="MultiLine" Rows="10" Width="863px" ID="txtCevap"
                        ValidationGroup="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Boş Bırakılamaz" ControlToValidate="txtCevap"
                        ValidationGroup="1"></asp:RequiredFieldValidator>
                    <br />
                    Dosya Yükle   
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br>
                    <asp:Button ID="btnCevap" runat="server" Text="Cevap Yaz" CssClass="button"
                        ValidationGroup="1"></asp:Button><br />
                    <br />
                </div>
                <div>
                    Mesajlar
                        <br />
                    <asp:Repeater runat="server" ID="rptComment">
                        <ItemTemplate>
                            <div class="module_box">
                                <div class='<%# iif(Eval("IsAnswer"),"information","alert") %>'>
                                    <asp:Label runat="server" ID="lblMail"></asp:Label><br />
                                    <asp:Label runat="server" ID="lblDate" Text='<%# Eval("Date") %>'></asp:Label><br />
                                    <asp:Literal runat="server" ID="lblBody" Text='<%# Eval("Message") %>'></asp:Literal><br />
                                    <asp:Label runat="server" ID="lblAssignedUserDetail" ToolTip='<%# Eval("assignedUserDetail") %>' Text='<%# Eval("IsAnswer") %>' Visible="false"></asp:Label>
                                    <asp:Label runat="server" ID="lblUserDetail" ToolTip='<%# Eval("UserDetail") %>' Text='<%# Eval("IsAnswer") %>' Visible="false"></asp:Label>
                                </div>
                            </div>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <hr />
                        </SeparatorTemplate>
                    </asp:Repeater>
                </div>
                <asp:Label ID="lbl" runat="server" ></asp:Label>
                <asp:Label ID="lblclose" runat="server" ></asp:Label>
            </div>
        </div>

    </form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
