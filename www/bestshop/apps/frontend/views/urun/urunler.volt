<div class="row">
  <form class="" action="/urun/urunler" method="post">


    <div class="col-lg-12">
        <div class="portlet">
            <div class="portlet-header">
                <div class="caption">Listele</div>
                <div class="tools">
                  <a  href="/urun/duzenle">
                     <i class="fa fa-pencil-square-o fa-2x" title="Güncelle & Düzenle"></i>
                  </a>
                  <a  href="/urun/duzenle">
                    <i class="fa fa-trash-o fa-2x" title="Sil"></i>
                  </a>
                    <i class="fa fa-refresh" title="Yenile"></i>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-responsive mtl">
                    <table id="urunler" class="table table-striped table-bordered table-hover">
                <thead>
				            <tr>
				                <th>No</th>
				                <th>Ürün Adı</th>
				                <th>Ürün Başlığı</th>
				                <th>Açıklama</th>
				                <th>Ürün Fiyatı</th>
				                <th>Barkod</th>
                        <th>Ürün Resmi</th>
				            </tr>
				        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="form-actions  pal">
        <button type="submit" class="btn btn-primary btn-outlined">Ekle</button>
    </div>
    </form>
</div>
<script type="text/javascript">
$(document).ready(function() {
    //açılışta çalışması için
    gonder();

});

function gonder(){
    $.ajax({
        type:'POST',
        url:'urun/urunler',
        success: function (msg) {
            $("#urunler").html(msg);
        }
    });
}
</script>
