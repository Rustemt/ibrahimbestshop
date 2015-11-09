<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="deneme.ascx.vb" Inherits="ASPNetPortal.deneme" %>

<%--<div id="category_menu" class="top-left-menu">
    <div class="clear"></div>

    <script>
        jQuery(document).ready(function () {
            $.ajax({
                url: "/services/categoryserviceall.aspx",
                context: document.body,
                success: function (data) {
                    $("#category_menu").html(data);
                }
            });
        });

        //jQuery(document).ready(function () {
        //    $.ajax({
        //        url: "/services/brandservice.aspx",
        //        context: document.body,
        //        success: function (data) {
        //            $("#sub-markalar").html(data);
        //        }
        //    });
        //});
    </script>

</div>--%>

<%--<div id="imagessss" class="imagesss">
</div>
<script type="text/javascript">

    jQuery(document).ready(function () {
        $.ajax({
            url: "/services/product_images.aspx?IND=247",
            context: document.body,
            success: function (data) {
                $(".imagesss").html(data);
            }
        });
    });
</script>--%>



<%--<div id="alternatives" class="alternative_elvan">
</div>
<script type="text/javascript">

    jQuery(document).ready(function () {
        $.ajax({
            url: "/services/product_alternatives.aspx?IND=247",
            context: document.body,
            success: function (data) {
                $("#alternatives").html(data);
            }
        });
    });
</script>--%>

<%--<div id="sepet" class="sepet">
</div>
<script type="text/javascript">

    jQuery(document).ready(function () {
        $.ajax({
            url: "/services/ShoppingCartImages.aspx",
            context: document.body,
            success: function (data) {
                $("#sepet").html(data);
            }
        });
    });
</script>--%>


<%--<script>
    $.ajax({
        url: "/services/categoryserviceall.aspx",
        context: document.body,
        success: function (data) {
            $("#menu_top2").html(data);
        }
    });
</script> 
<div id="menu_top2">
</div>--%>
 
<%--<script>
    $.ajax({
        url: "/services/product_nonalternatives.aspx?IND=316",
        context: document.body,
        success: function (data) {
            $("#nonalternatives").html(data);
        }
    });
</script> 
<div id="nonalternatives">
</div>--%>

<%--<script>
    $.ajax({
        url: "/services/product_details.aspx?IND=316",
        context: document.body,
        success: function (data) {
            $("#usages").html(data);
        }
    });
</script> 
<div id="usages">
</div>--%>


<script>
    $.ajax({
        url: "/services/product_prices.aspx?IND=316",
        context: document.body,
        success: function (data) {
            $("#prices").html(data);
        }
    });
</script> 
<div id="prices">
</div>
