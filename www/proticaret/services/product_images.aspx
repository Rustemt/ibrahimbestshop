<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.product_images" Debug="true"  %>

<script language="vb" runat="server" >

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim productid As Integer = Request.QueryString("IND")
        Dim ilk As Boolean = True
        Dim cnn As New DatabaseDB
        Dim str As New StringBuilder
        str.Append("<ul class=""productmainimagecontainer"">")
        Dim sqlcode As String = "select ProductImages.*,Products.Url as link  from ProductImages inner join Products on products.ProductId=ProductImages.ProductId  where  ProductImages.ProductId=@ProductId order by IsDefault desc "
        Dim cmd As New SqlCommand(sqlcode, cnn.conn)
        cmd.Parameters.AddWithValue("@ProductId", productid)

        cnn.connectDb()
        Dim dr As SqlDataReader = cmd.ExecuteReader

        Dim i As Integer = 0
        While dr.Read
            If ilk Then
                str.Append(String.Format("<li class=""productmainimage""><a href=""{0}""><img title=""{3}"" src=""{2}"" />{1}</a></li>", BaseUrl & dr("link").ToString.Remove(dr("link").ToString.Length - 1, 1) & ".aspx", dr("Description"), BaseUrl & "/uploads/productsimages/" & dr("Path").ToString.Replace("\", "/"), dr("Description")))
                ilk = False
            End If
            str.Append(String.Format("<li><a href=""{0}""><img title=""{3}"" src=""{2}"" />{1}</a></li>", BaseUrl & "/uploads/productsimages/" & dr("Path").ToString.Replace("\", "/"), dr("Description"), BaseUrl & "/uploads/productsimages/" & dr("Path").ToString.Replace("\", "/"), dr("Description")))
        End While

        cnn.disconnectDb()
        str.Append("</ul>")

        Response.Write(str.ToString)

    End Sub

</script>


<%--kullanımı;

<div id="images" runat="server">
</div>
<script type="text/javascript">

    var i = 0;
    $("*[id$='lblproductId']").each(function () {

        jQuery(document).ready(function () {

            $.ajax(
                {
                    async: false, url: "/services/product_images.aspx?IND=" + $("*[id$='lblproductId']:eq(" + i + ")").text(), context: document.body, success: function (data) {
                        $("*[id$='images']:eq(" + i + ")").html(data);
                        i = i + 1;
                    }
                });
        });

    });
</script>--%>
