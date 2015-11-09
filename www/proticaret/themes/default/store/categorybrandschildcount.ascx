<%@ Control Language="vb" AutoEventWireup="false"  Inherits="ASPNetPortal.PortalModuleControl"   EnableViewState="False" %>
<%--Son Kýrýlýmda gösteriliyor--%> 
<script language="VB" runat="server">

    Private Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
 
        Dim con As New DatabaseDB
       
        Dim CatId As String = Request.QueryString("CatId")
        'MarkId = Request.QueryString("MarkId")
        If CatId <> "" Then
            Dim sqlcode As String = "SELECT   Distinct ProductListLigth.MarkName,dbo.doUrl(ProductListLigth.MarkName) as Url,MarkImage,@CatId as CatId,(Select Count(distinct ProductId ) from ProductListLigth as  p1 where p1.MarkId=ProductMarks.MarkId and CatId=@CatId ) as ChildCount from ProductListLigth left Join ProductMarks ON ProductListLigth.MarkId = ProductMarks.MarkId   WHERE Lineage like '%/' + @CatId + '/%' and ProductListLigth.PortalId = @PortalId Order By MarkName "
 
            Dim cmd As New SqlCommand(sqlcode, con.conn)
            cmd.Parameters.AddWithValue("@CatId", CatId)
            cmd.Parameters.AddWithValue("@PortalId", PortalId)
  
            con.connectDb()
            rptMarks.DataSource = cmd.ExecuteReader
            rptMarks.DataBind()
            con.disconnectDb()
        
        End If
        'End If

        If rptMarks.Items.Count > 0 Then
            Me.Visible = True
        Else
            Me.Visible = False
        End If

    End Sub

</script>

<div id="categorybrands" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span>
                <span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div id="brandlist">
            <asp:Repeater ID="rptMarks" runat="server">
                <HeaderTemplate>
                    <ul class="categorybrands">
                </HeaderTemplate>
                <FooterTemplate></ul></FooterTemplate>
                <ItemTemplate>
                    <li>
                        <asp:HyperLink ID="hlMark" runat="server" NavigateUrl='<%# string.format(BaseUrl & "/marka/{0}" & ".aspx",container.dataitem("Url")) & "?CatId=" & container.dataitem("CatId") & "&tabId=" & Request.QueryString.Item("tabId") %>'> 
<%#IIf(Container.DataItem("MarkImage").ToString <> "", "<img src='" & Container.DataItem("MarkImage") & "' border='0' alt='" & Container.DataItem("MarkName") & "(" & Container.DataItem("ChildCount") & ")" & "' />", Container.DataItem("MarkName") & "(" & Container.DataItem("ChildCount") & ")" )%></asp:HyperLink>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="clear"></div>
        <div id="moreless" style="text-align: right;"></div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        var index = 12;
        if ($("#brandlist ul li").size() > index) {
            $('#moreless').append('<a href="#" class="more">tümünü göster</a>');
            $('#moreless').append('<a href="#" class="less">gizle...</a>');
            $('#brandlist ul li:gt(' + (index - 1) + ')').hide();
            $('#moreless .less').hide();

            $('#moreless .more').click(function () {
                $('#moreless .more').hide();
                $('#moreless .less').show();
                $('#brandlist ul li:gt(' + (index - 1) + ')').show();
            });

            $('#moreless .less').click(function () {
                $('#moreless .less').hide();
                $('#moreless .more').show();
                $('#brandlist ul li:gt(' + (index - 1) + ')').hide();
            });
        }
    });
</script>
