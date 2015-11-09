<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editcontrol.aspx.vb" Inherits="editcontrol" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Servis tip Ekle</title>
    <script type="text/javascript" src="/admin/js/jquery.ui.smoothMenu.min.js"></script>
    <link href="/admin/css/jquery-ui-smoothMenu.css" rel="stylesheet" type="text/css" />
    <link href="../admin/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="../admin/css/portal.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <form id="form1" runat="server">
        <div id="module" class="module">
            <div id="module_content" runat="server">
                <div id="module_title"><span><span id="module_title_icon"></span>Servis Forum Özel Alan Düzenle</span> </div>
                <label id="lblMessage" runat="server" />
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Form Adı</td>
                        <td><asp:TextBox ID="txtFormName" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>DropDownList Alanlar</td>
                        <td>CheckBox Alanlar</td>
                    </tr>
                    <tr>
                        <td>Özelik 1</td>
                        <td><asp:TextBox ID="txtOpt1" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtOpt11" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Özelik 2</td>
                        <td><asp:TextBox ID="txtOpt2" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtOpt12" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Özelik 3</td>
                        <td><asp:TextBox ID="txtOpt3" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtOpt13" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Özelik 4</td>
                        <td><asp:TextBox ID="txtOpt4" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtOpt14" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Özelik 5</td>
                        <td><asp:TextBox ID="txtOpt5" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtOpt15" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Özelik 6</td>
                        <td><asp:TextBox ID="txtOpt6" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtOpt16" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Özelik 7</td>
                        <td><asp:TextBox ID="txtOpt7" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtOpt17" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Özelik 8</td>
                        <td><asp:TextBox ID="txtOpt8" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtOpt18" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Özelik 9</td>
                        <td><asp:TextBox ID="txtOpt9" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtOpt19" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Özelik 10</td>
                        <td><asp:TextBox ID="txtOpt10" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="txtOpt20" runat="server"></asp:TextBox></td>
                    </tr>
                </table>

                <span>
                    <asp:Button ID="btnSave" runat="server" CssClass="button" Text="Kaydet" /></span>
                <span>
                    <asp:Label ID="lblError" runat="server" Visible="false"></asp:Label>
                    <asp:Button ID="btnEdit" runat="server" Text="Kaydet" Visible="false" CssClass="button" />
                </span>
            </div>
        </div>

        <asp:Label Text="" runat="server" ID="lbl" />
        <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
    </form>
</body>
</html>
