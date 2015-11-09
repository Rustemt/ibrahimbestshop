<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.PortalModuleControl" EnableViewState="False"%>
<div id="download" class="module">
  <div id="module_content">
    <% if HeaderVisible then %>
    <div id="module_title"><span><span id="module_title_icon"></span><%=ModuleTitle%>
      <% if IsEditable then %>
      <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
      <% end if %>
      </span></div>
    <% end if %>
    <div>
      <ul>
        <li>          
           <asp:LinkButton ID="lnkDownload" runat="server" OnClick="lnkDownload_Click">proticaret 1.02</asp:LinkButton>
            <br/>
          <span>Son güncelleme tarihi 15.09.2011 19:47</span>
        </li>         
      </ul>
      </div>
      <br/>
      <div>
      <label>Relase Notlarý</label>
      1.02 versiyonu stabil olarak çalýþmaktadýr.
      </div>
      <br/><br/>
      <label>Versiyon 1.02 Deðiþiklikler.</label>
      <br/>
      <ul>
        <li>Kategoriler menüsü deðiþtirildi.</li>
        <li>Tüm alt sayfalardaki sað ve sol alanlar varsayýlan olarak gizlendi.</li>
      </ul>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</div>

<script language="VB" runat="server">
    
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
       
        IsEditable = False
        ModuleTitle = GetGlobalResourceObject("lang", "download")
    End Sub
 
 
    Protected Sub lnkDownload_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.ContentType = "application/x-rar-compressed"
        Response.AppendHeader("Content-Disposition", "attachment; filename=proticaret1.02.zip")
        Response.TransmitFile(Server.MapPath("/downloads/proticaretg5dv1.02.zip"))
        Response.End()

    End Sub
</script>