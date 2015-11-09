<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.edittabs" Codebehind="edittabs.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title><%=GetGlobalResourceObject("admin", "ThemesBackUp")%></title>
</head>
<body>
    <form id="Form1" method="post" runat="server">
<div id="module" class="module">
<div id="module_content">
<div id="module_title"> <span> <span id="module_title_icon"></span>Tema Yedekleme</span>
</div> 
  <div class="module_box">
        <p runat="server"><%=GetGlobalResourceObject("admin", "BackUp")%></p>
        <div id="BackupAlert" visible="false" runat="server" class="alert">
        <p><asp:Label ID="lblBackupInfo" runat="Server" EnableViewState="False"></asp:Label></p>
        </div>
        <table cellpadding="2">
            <tr>
                <td runat="server">
                    <%=GetGlobalResourceObject("admin", "Themes")%> :
                </td>
                <td>
                    <b><asp:Label ID="lblTemplate" runat="Server"></asp:Label></b>&nbsp;                    
                    <asp:LinkButton ID="btnBackup" Text="<%$ Resources:admin,BackUp %>" runat="server" CssClass="savebutton"></asp:LinkButton><br />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
</div>
  <div class="module_box">
        <p runat="server"><%=GetGlobalResourceObject("admin", "PreviouslyReceivedReserves")%></p>
        <div id="RestoreAlert" visible="false" runat="server" class="alert">
        <p><asp:Label ID="lblRestoreInfo" runat="Server" EnableViewState="False"></asp:Label></p></div>
        <asp:DataGrid ID="dg" runat="server" Width="100%" PageSize="20" AutoGenerateColumns="False">   
            <Columns>
            <asp:BoundColumn DataField="Name" Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,FileName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="lnkdownload" runat="Server" NavigateUrl='<%# "/themes/" & DataBinder.Eval(Container, "DataItem.Name") %> '>
                        <%# DataBinder.Eval(Container, "DataItem.Name") %>
                        </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Restore %>">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnRestore" runat="server" CssClass="checkbutton" Text="<%$ Resources:admin,BackupRestore %>" CausesValidation="false" CommandName="Update"></asp:LinkButton>
                    </ItemTemplate>
                    
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,DeleteFile %>">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="deletebutton" Text="<%$ Resources:admin,Delete %>" CausesValidation="false" CommandName="Delete"></asp:LinkButton>
                    </ItemTemplate>
                    
                </asp:TemplateColumn>
            </Columns>
            <PagerStyle CssClass="dataPager"></PagerStyle>
        </asp:DataGrid>
          </div>
    </div>
</div>
    </form>
      <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
