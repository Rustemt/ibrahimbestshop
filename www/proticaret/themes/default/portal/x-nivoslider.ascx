<%@ Control Language="vb" Inherits="ASPNetPortal.slider" AutoEventWireup="false" Codebehind="slider.ascx.vb" EnableViewState="False"%>
<link rel="stylesheet" href="<% =getThemePath() %>/js/nivo/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<% =getThemePath() %>/js/nivo/nivo-slider.css" type="text/css" media="screen" />
<div id="slidermodule">

	<% if HeaderVisible then %>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    <% end if %>

    <div id="wrapper">
        <asp:Repeater ID="rpt1" runat="server">
        <HeaderTemplate>
            <div class="slider-wrapper theme-default">
                <div id="slider" class="nivoSlider">	
                    </HeaderTemplate>
                    <ItemTemplate>
                            <a href="<%# Container.DataItem("SlideUrl").ToString %>">
                            <span class="title"><%# Container.DataItem("SlideTitle").ToString %></span>
                            <span class="content"><%# Server.HtmlDecode(Container.DataItem("SlideHtml").ToString()) %></span>
                            <img class="image" alt="<%# Container.DataItem("SlideTitle").ToString %>" src="<%# Container.DataItem("SlideImage").ToString %>" data-thumb="<%# Container.DataItem("SlideImage").ToString %>" />
                            </a>
                    </ItemTemplate>
                    <FooterTemplate>
                </div>
            </div>
        </FooterTemplate>
        </asp:Repeater>
        <asp:Repeater ID="rpt2" runat="server" Visible="false">
        <HeaderTemplate>
        <ul class="pager">
            </HeaderTemplate>
            <ItemTemplate>
            <li><a rel="<%# Container.ItemIndex %>" class="pagenum" href="#"><%#Container.ItemIndex + 1%></a></li>
            </ItemTemplate>
            <FooterTemplate>
        </ul>
        </FooterTemplate>
        </asp:Repeater>
    </div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/nivo-js/jquery.nivo.slider.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$('#slider').nivoSlider({
			effect: 'fade', // Specify sets like: 'fold,fade,sliceDown'
			slices: 15, // For slice animations
			boxCols: 8, // For box animations
			boxRows: 4, // For box animations
			animSpeed: 500, // Slide transition speed
			pauseTime: 3000, // How long each slide will show
			startSlide: 0, // Set starting Slide (0 index)
			directionNav: true, // Next & Prev navigation
			controlNav: true, // 1,2,3... navigation
			controlNavThumbs: true, // Use thumbnails for Control Nav
			pauseOnHover: false, // Stop animation while hovering
			manualAdvance: false, // Force manual transitions
			prevText: 'Prev', // Prev directionNav text
			nextText: 'Next', // Next directionNav text
			randomStart: false, // Start on a random slide
			beforeChange: function(){}, // Triggers before a slide transition
			afterChange: function(){}, // Triggers after a slide transition
			slideshowEnd: function(){}, // Triggers after all slides have been shown
			lastSlide: function(){}, // Triggers when last slide is shown
			afterLoad: function(){} // Triggers when slider has loaded
		});
	});
</script>
<div class="clear"></div>