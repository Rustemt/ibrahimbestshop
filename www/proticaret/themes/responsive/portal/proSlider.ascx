<%@ Control Language="vb" Inherits="ASPNetPortal.slider" AutoEventWireup="false" Codebehind="slider.ascx.vb" EnableViewState="False"%>
<link href="<% =getThemePath() %>/js/proslider/jquery.proslider.css" type="text/css" rel="stylesheet" />  
<script src="<% =getThemePath() %>/js/proslider/jquery.proslider.min.js" type="text/javascript"></script>
<script src="<% =getThemePath() %>/js/proslider/jquery.proslider.js" type="text/javascript"></script>
<div class="slider module">
   <% if HeaderVisible then %>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% if IsEditable then %>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% end if %>
    </div>
    <% end if %>
    <div id="sliderContainer">
        <div id="slidermodule">
            <div id="slidercontent">
                <asp:Repeater ID="rpt1" runat="server">
                    <HeaderTemplate>
                        <div id="slider">
                            <ul class="bxslider">	
                    </HeaderTemplate>
                    <ItemTemplate>
                                <li>
                                    <a href="<%# Container.DataItem("SlideUrl").ToString %>">
                                        <span class="title"><%# Container.DataItem("SlideTitle").ToString %></span>
                                        <span class="content"><%# Server.HtmlDecode(Container.DataItem("SlideHtml").ToString()) %></span>
                                        <img class="image" alt="<%# Container.DataItem("SlideTitle").ToString %>" src="<%# Container.DataItem("SlideImage").ToString %>" />
                                    </a>
                                </li>
                    </ItemTemplate>
                    <FooterTemplate>
                            </ul>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:Repeater ID="rpt2" runat="server" Visible="false">
                    <HeaderTemplate><ul class="pager"></HeaderTemplate>
                        <ItemTemplate>
                            <li><a rel="<%# Container.ItemIndex %>" class="pagenum" href="#"><%#Container.ItemIndex + 1%></a></li>
                        </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="clear"></div>

        <script type="text/javascript">
			$('.bxslider').bxSlider({
			mode: 'fade',
			auto: 'true',
			pause: 4000,
			speed: 2750
			});
		</script>
    </div>
</div>    