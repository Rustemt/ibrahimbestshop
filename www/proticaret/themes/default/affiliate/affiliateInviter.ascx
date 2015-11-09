<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.affiliateInviter" Codebehind="affiliateinviter.ascx.vb" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div id="affiliateinviter" class="module">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
    <div id="inviterTab" runat="server" >
    <ul>
    <li><a href="#tab_providers"><%=GetGlobalResourceObject("lang", "AffiliateAddressBook")%></a></li>
    <li><a href="#tab_mail"><%=GetGlobalResourceObject("lang", "AffiliateSendEmail")%></a></li>  
    <li><a href="#tab_network"><%=GetGlobalResourceObject("lang", "AffiliateShare")%></a></li>  
    <li><a href="#tab_invited"><%=GetGlobalResourceObject("lang", "AffiliateInvited")%></a></li>  
    </ul>
    <div id="tab_providers">
       <input type="hidden" id="servicename" runat="server" />
        <table id="providerstable">
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="rbprvider" value="0" id="rb_0" onclick="selectprovider('0');" /></td>
                            <td align="left" valign="bottom">
                                <a href="#" onclick="selectprovider('0');" title="Hotmail">
                                    <img src="<%= getThemePath() %>/affiliate/images/logo_01.png" width='<%= iif(Request.QueryString("MnuID") <> "","70","100") %>' alt="Hotmail" style="border: none" title="Hotmail" /></a></td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="rbprvider" value="1" id="rb_1" onclick="selectprovider('1');" /></td>
                            <td align="left">
                                <a href="#" onclick="selectprovider('1');" title="Mynet">
                                    <img src="<%= getThemePath() %>/affiliate/images/mynet_logo.png" width='<%= iif(Request.QueryString("MnuID") <> "","70","100") %>' alt="Mynet" style="border: none" title="Mynet" /></a></td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="rbprvider" value="2" id="rb_2" onclick="selectprovider('2');" /></td>
                            <td align="left">
                                <a href="#" onclick="selectprovider('2');" title="Gmail">
                                    <img src="<%= getThemePath() %>/affiliate/images/logo_03.png" width='<%= iif(Request.QueryString("MnuID") <> "","70","100") %>' alt="Gmail" style="border: none" title="Gmail" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="rbprvider" value="3" id="rb_3" onclick="selectprovider('3');" /></td>
                            <td align="left">
                                <a href="#" onclick="selectprovider('3');" title="Yahoo">
                                    <img src="<%= getThemePath() %>/affiliate/images/logo_04.png" width='<%= iif(Request.QueryString("MnuID") <> "","70","100") %>' alt="Yahoo" style="border: none" title="Yahoo" /></a></td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="rbprvider" value="4" id="rb_4" onclick="selectprovider('4');" /></td>
                            <td align="left" valign="bottom">
                                <a href="#" onclick="selectprovider('4');" title="Msn">
                                    <img src="<%= getThemePath() %>/affiliate/images/logo_06.png" width='<%= iif(Request.QueryString("MnuID") <> "","70","100") %>' alt="Msn" style="border: none" title="Msn" /></a></td>
                        </tr>
                    </table>
                </td>
                 <td>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="rbprvider" value="5" id="rb_5" onclick="selectprovider('5');" /></td>
                            <td align="left" valign="bottom">
                                <a href="#" onclick="selectprovider('5');" title="Windows Live">
                                    <img src="<%= getThemePath() %>/affiliate/images/logo_07.png" width='<%= iif(Request.QueryString("MnuID") <> "","70","100") %>' alt="Windows Live" style="border: none" title="Windows Live" /></a></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <asp:UpdatePanel ID="providerUpdatePanel" runat="server">
            <ContentTemplate>
            <div id="tblproviderlogin" runat="server">
             <% If ConfigurationManager.AppSettings("InviteAffiliateActive") = "True" And ConfigurationManager.AppSettings("InviteAffiliateValue") > 0 And Request.QueryString("MnuID") = "" Then%>
                       <label> <%= String.Format(GetGlobalResourceObject("lang", "AffiliateMsg8").ToString, ConfigurationManager.AppSettings("InviteAffiliateValue"))%></label>
             <% End If%>
             <table cellpadding="4" cellspacing="0" border="0">
             <tr>
             <td align="right"><span id="lblservicename" runat="server"></span> <%=GetGlobalResourceObject("lang", "AffiliateEmail")%></td>
             <td><asp:TextBox ID="txtuid" runat="server" onkeydown="javascript:return OnEnterPres(event)"></asp:TextBox></td>
             </tr>
               <tr>
             <td align="right"><span id="lblservicename2" runat="server"></span> <%=GetGlobalResourceObject("lang", "AffiliatePassword")%></td>
             <td><asp:TextBox ID="txtupass" onkeydown="javascript:return OnEnterPres(event)" runat="server" TextMode="Password"></asp:TextBox></td>
             </tr>
               <tr>
             <td align="right"></td>
             <td><asp:Button ID="btngetcontacts" runat="server" CssClass="button" OnClick="btngetcontacts_Click" OnClientClick="javascript:return showloading();" Text="<%$ Resources:lang, AffiliateInvite%>" /></td>
             </tr>
             </table>           
            
            
            <div id="loadingdiv" style="display: none">
             <img alt="" src="<%= getThemePath() %>/affiliate/images/load.gif" /><%=GetGlobalResourceObject("lang", "WorkingPleaseWait")%>
            </div>
            <div id="contactsmsgdiv" runat="server" style="color: Red;">
            </div>
            </div>
        <div id="providercontactsdiv" runat="server">
                    <div  id="tblprovidersend" runat="server"> 
                    <label><%=GetGlobalResourceObject("lang", "YourMessage")%></label>
                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Width="400px" Height="100px" ></asp:TextBox>
                    
                    <label><%=GetGlobalResourceObject("lang", "AffiliateMsg9")%></label>
                    <asp:Button ID="btnSend" runat="server" CssClass="button" OnClick="btnSend_Click" Text="<%$ Resources:lang, Send%>" />
                    </div>
                    
                    <div id="tblprovidersendend" runat="server">
                    <label><%=GetGlobalResourceObject("lang", "AffiliateMsg10")%></label>
                    <a class="button" href="<%= System.Web.HttpContext.Current.Request.RawUrl %>" >
                        <%=GetGlobalResourceObject("lang", "GoBack")%>
                    </a>
                    </div>                     
                    <div id="dgcontactsdiv" runat="server" style="height: 260px; width:500px; overflow: scroll; overflow-x: hidden">
                        <asp:DataGrid ID="dgcontacts" runat="server"  CssClass="datalist" AutoGenerateColumns="False" ShowFooter="True">
                            <HeaderStyle CssClass="title" />
            <FooterStyle CssClass="footer" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="<%$ Resources:lang, SelectAll%>">                                    
                                    <HeaderTemplate>
                                        <input id="chkselectall" type="checkbox" checked="checked" onclick="checkallcb('chksend',this.checked);" /><%=GetGlobalResourceObject("lang", "SelectAll")%></HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chksend" Checked="true" runat="server">
                                        </asp:CheckBox>
                                        <asp:Label ID="lblemail" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"email") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                        </asp:DataGrid>
                        
                    </div>
                    <div id="providermessagediv" runat="server"></div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>  
    </div>  
    <div id="tab_mail">     
    <asp:UpdatePanel ID="sendmailUpdatePanel" runat="server">    
     <ContentTemplate>
     <div id="tblsendmail" runat="server" style="width:100%;">
    <label><%=GetGlobalResourceObject("lang", "AffiliateMessage")%></label>
    <asp:TextBox ID="txtmessage2" runat="server" Height="150px" TextMode="MultiLine" Width="400px"></asp:TextBox>  
    <label><%=GetGlobalResourceObject("lang", "AffiliateMaillist")%></label>
    <label><%=GetGlobalResourceObject("lang", "AffiliateMsg11")%></label>
    <asp:TextBox ID="txtmailadress" runat="server" Height="150px" TextMode="MultiLine" Width="400px"></asp:TextBox>
    <asp:Button ID="btnsendtoaddress" CssClass="button" runat="server" Text="<%$ Resources:lang, Send%>" />
    </div>
      <div id="tblsendmailend" runat="server">
      <label><%=GetGlobalResourceObject("lang", "AffiliateMsg12")%></label>
      <a class="button" href="<%= System.Web.HttpContext.Current.Request.RawUrl %>" ><%=GetGlobalResourceObject("lang", "GoBack")%></a>
      </div>
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>    
    <div id="tab_network">
    <label><%=GetGlobalResourceObject("lang", "AffiliateMsg13")%></label>
<script runat="server" type="text/VB"> 
    'post bilgileri
    Private strPostURL As String
    Private strPostTitle As String
    'kullanýlanlar
    Private strFacebookLink As String
    Private strGoogleLink As String
    Private strTwitterLink As String
    Private strFriendfeedLink As String
    Private strMyspaceLink As String
    Private strDiggLink As String
    Private strDeliciousLink As String
    Private strStumbleuponLink As String
    Private strRedditLink As String
     
    Private Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        'post bilgileri 
        If HttpContext.Current.User.Identity.IsAuthenticated() Then
            strPostURL = System.Web.HttpUtility.UrlEncode(BaseUrl & "?AffiliateId=" & GetShoppingCartId())
            strPostTitle = System.Web.HttpUtility.UrlEncode(IIf(HttpContext.Current.User.Identity.IsAuthenticated(), Context.User.Identity.Name.Split("|")(2), "Arkadaþýnýz") & " sizi " & ConfigurationManager.AppSettings("SiteName") & "'a davet ediyor.")
        Else
            strPostURL = System.Web.HttpUtility.UrlEncode(BaseUrl & "?AffiliateId=0")
            strPostTitle = System.Web.HttpUtility.UrlEncode("Arkadaþýnýz sizi " & ConfigurationManager.AppSettings("SiteName") & "'a davet ediyor.")
        End If
        
        'kullanýlanlar
        strFacebookLink = "<a rel=""nofollow"" href=""http://www.facebook.com/sharer.php?t=" & strPostTitle & "&amp;u=" & strPostURL & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/facebook_24.png"" style=""border: 0;"" alt=""facebook'ta paylaþ"" /></a>"
        strGoogleLink = "<a rel=""nofollow"" href=""http://www.google.com/bookmarks/mark?op=edit&amp;bkmk=" & strPostURL & "&amp;title=" & strPostTitle & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/google_24.jpg"" style=""border: 0;"" alt=""google favorilerime ekle"" /></a>"
        strTwitterLink = "<a rel=""nofollow"" href=""http://twitter.com/home?status=" & strPostTitle & " " & strPostURL & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/twitter_24.png"" style=""border: 0;"" alt=""twitter'da paylaþ"" /></a>"
        strFriendfeedLink = "<a rel=""nofollow"" href=""http://friendfeed.com/?url=" & strPostURL & "&amp;title=" & strPostTitle & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/friendfeed_24.png"" style=""border: 0;"" alt=""friendfeed'de paylaþ"" /></a>"
        strMyspaceLink = "<a rel=""nofollow"" href=""http://www.myspace.com/Modules/PostTo/Pages/?u=" & strPostURL & "&amp;t=" & strPostTitle & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/myspace_24.png"" style=""border: 0;"" alt=""myspace'te paylaþ"" /></a>"
        strDiggLink = "<a rel=""nofollow"" href=""http://digg.com/submit?phase=2&amp;url=" & strPostURL & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/digg_24.png"" style=""border: 0;"" alt=""Digg'e ekle"" /></a>"
        strDeliciousLink = "<a rel=""nofollow"" href=""http://del.icio.us/post?url=" & strPostURL & "&amp;title=" + strPostTitle & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/delicious_24.png"" style=""border: 0;""  alt=""Delicious'a ekle"" /></a>"
        strStumbleuponLink = "<a rel=""nofollow"" href=""http://www.stumbleupon.com/submit?url=" & strPostURL & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/stumbleupon_24.png"" style=""border: 0;""  alt=""Stumbleupon'da paylaþ"" /></a>"
        strRedditLink = "<a rel=""nofollow"" href=""http://reddit.com/submit?url=" & strPostURL & "&amp;title=" + strPostTitle & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/reddit_24.png"" style=""border: 0;""  alt=""reddit'e ekle"" /></a>"
    End Sub
</script>
<div id="share"> 
    <%=strFacebookLink%>
    <%=strGoogleLink%>
    <%=strTwitterLink %>
    <%=strFriendfeedLink %>
    <%=strMyspaceLink%>
    <%=strDiggLink%>
    <%=strDeliciousLink%>
    <%=strStumbleuponLink%>
    <%=strRedditLink%>
    <div class="clear"></div>
</div>
<label><%=String.Format(GetGlobalResourceObject("lang", "AffiliateMsg14").ToString, BaseUrl & "/", GetShoppingCartId())%></label>
</div>    
    <div id="tab_invited">    
    <asp:updatepanel id="updPnlinvited" runat="server" updatemode="Conditional">
                       <contenttemplate>
                         <input id="loadinvited" causesvalidation="false" runat="server" type="button" style="display: none" onserverclick="TabButton_Click" />
                       <asp:panel id="invitedContent" visible="false" runat="server">
                       
                       <label><asp:Label id="lblSendcount" runat="server"><%=GetGlobalResourceObject("lang", "AffiliateMsg15")%></asp:Label></label>
                       <label><asp:Label id="lblAcceptcount" runat="server"><%=GetGlobalResourceObject("lang", "AffiliateMsg16")%></asp:Label></label>
                        <% If ConfigurationManager.AppSettings("InviteAffiliateActive") = "True" And ConfigurationManager.AppSettings("InviteAffiliateValue") > 0 And Request.QueryString("MnuID") = "" Then%>                        
                        <%=GetGlobalResourceObject("lang", "AffiliateMsg17")%>                        
                        <% End If%>
                        
                       
                        <asp:DataGrid ID="dgsentcontacts" runat="server"  AutoGenerateColumns="False"  CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                              <HeaderStyle CssClass="title" />
            <FooterStyle CssClass="footer" />
                            <Columns>
                             <asp:BoundColumn DataField="CreatedDate" DataFormatString="{0:d}" HeaderText="<%$ Resources:lang, SentDate%>"></asp:BoundColumn>
                             <asp:BoundColumn DataField="Email" HeaderText="<%$ Resources:lang, Email%>"></asp:BoundColumn>
                             <asp:TemplateColumn HeaderText="<%$ Resources:lang, Status%>">                             
                                    <ItemTemplate>                                      
                                        <asp:Label ID="lblDurum" runat="server" Text='<%# iif(DataBinder.Eval(Container.DataItem,"IsRegistered")="True",GetGlobalResourceObject("lang", "AffiliateRegistered"),GetGlobalResourceObject("lang", "AffiliateWaiting")) %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                        </asp:DataGrid>
                       </asp:panel>
                      </contenttemplate>
                     </asp:updatepanel>
    </div>
 
    <script language="javascript" type="text/javascript">
jQuery(document).ready(function (){
 jQuery(window).bind("load", function () {
  Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
  Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
  
 });
});

 
  var selectedTabIndex;

function BeginRequestHandler(sender, args) {
args.get_request().get_headers()["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";
 var inviterTab = $("#<%= inviterTab.ClientId %>").tabs();
 selectedTabIndex = inviterTab.tabs('option', 'selected');
}  
function EndRequestHandler(sender, args) {
args.get_request().get_headers()["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";
 var inviterTab = $("#<%= inviterTab.ClientId %>").tabs();
 inviterTab.tabs('select', selectedTabIndex); 
 } 

     $(document).ready(function(){			
			$( "#<%= inviterTab.ClientId %>" ).tabs();			 
			selectprovider('0');					 
		});
		
        function hidecontactsdiv() {
            try {
                if (document.getElementById("<%= providercontactsdiv.ClientID %>") != null)
                    document.getElementById("<%= providercontactsdiv.ClientID %>").innerHTML = "";
                if (document.getElementById("<%= contactsmsgdiv.ClientID %>") != null)
                    document.getElementById("<%= contactsmsgdiv.ClientID %>").innerHTML = "";               
            } catch (e) { }
        }
        
        function selectproviderrb(a) {
            for (var i = 0; i < 10; i++) {
                if (document.getElementById("rb_" + i) != null)
                    document.getElementById("rb_" + i).checked = false;
            }
        document.getElementById("rb_" + a).checked = true;
        }

        function selectprovider(a) {

            var servicearray = "Hotmail,Mynet,Gmail,Yahoo,Msn,Windows Live";
            var servicename = servicearray.split(',');
            showlogintable();        
            $("#<%= tblproviderlogin.ClientID %>").fadeIn("1000");
            hidecontactsdiv();
            document.getElementById("<%= servicename.ClientID %>").value =   servicename[a];
            document.getElementById("<%= lblservicename.ClientID %>").innerHTML = servicename[a]
            document.getElementById("<%= lblservicename2.ClientID %>").innerHTML = servicename[a]
            selectproviderrb(a);
            window.setTimeout("makefocus()", 1001);                     
        }
        function makefocus() {
            document.getElementById("<%= txtuid.ClientID %>").focus();
        }       
        function showlogintable() {            
            document.getElementById("<%= tblproviderlogin.ClientID %>").style.display = "";            
            return false;
        }
             function hidelogintable() {            
            document.getElementById("<%= tblproviderlogin.ClientID %>").style.display = "none";            
            return false;
        }
 
        function showloading() {
            document.getElementById("<%= contactsmsgdiv.ClientID %>").innerHTML = "";
            document.getElementById("loadingdiv").style.display = "";           
            return true;
        }
          function OnEnterPres(e) {
            var code;
            if (!e) var e = window.event;
            if (e.keyCode) code = e.keyCode;
            else if (e.which) code = e.which;
            if (code == 13) {                
                    document.getElementById("<%= btngetcontacts.ClientID %>").click();
            }
        } 
    
    function checkallcb(checkid, checkVal) {

        re = new RegExp(checkid) 
        for(i = 0; i < document.forms[0].elements.length; i++) 
        {
            elm = document.forms[0].elements[i]
            if (elm.type == 'checkbox') 
			{
				if (re.test(elm.name)) 
				{
				elm.checked = checkVal
                }
            }
        }
    }  
    
    $('#<%= inviterTab.ClientId %>').bind('tabsselect', function(event, ui) {
           var str =String(ui.tab);
           if (str.indexOf("tab_invited")>0)
           {
           var updateControl  = $get('<%= inviterTab.Parent.ClientId %>' + '_loadinvited' );
           if ($get('<%= inviterTab.Parent.ClientId %>' + '_invitedContent' )) return;
           
           if (updateControl)
           {
           updateControl.click();
           }
           }          
      });

    </script>

</div>
</div>
</div>