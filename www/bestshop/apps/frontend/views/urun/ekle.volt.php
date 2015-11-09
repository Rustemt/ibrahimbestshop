


<!--<div class="panel panel-default">
    <div class="panel-heading panel-bgcolor panel-baslik">Ürün Düzenle-Sil</div>
    <div class="panel-body pan">
        <form action="/urun/ajaxBul" class="form-horizontal vertical-offset-2" method="post">
            <div class="form-body">
                <div class="form-group"><label for="" class="col-md-2 control-label">Barkod no:</label>
					<div class="col-lg-4">
						<div class="input-group">
						  <input type="text" id="barkod" name="urunBarkod" class="form-control" placeholder="Barkod Numarası giriniz">
						  <span class="input-group-btn">
							 <button id="bul" name="ara" onclick="islem.urunBul($('#barkod').val())" class="btn btn-default" type="button">Bul!</button>
						  </span>
						</div>
					  </div>
                </div>
                <form action="/urun/ajaxEkle"class="form-horizontal vertical-offset-2" method="post">
                  <div class="form-body">
               <div class="form-group">
                  <label for="" class="col-md-2 control-label">Başlık<span class='require'>*</span></label>
                  <div class="col-md-4">
                      <div class="input-icon right">
                        <input name="urunBaslik" id="urunBaslik" type="text" placeholder="Başlık" class="form-control"/>
                      </div>
                  </div>
                </div>
                <div class="form-group"><label for="" class="col-md-2 control-label">Ürün Adı: </label>
                    <div class="col-md-4">
                      <div class="input-icon right">
                        <input name="urunAd" id="urunAd" type="text" class="form-control"/>
                      </div>
                    </div>
                    </div>
                    <div class="form-group"><label for="" class="col-md-2 control-label">Ürün Fiyatı: </label>
                      <div class="col-md-4">
                          <div class="input-icon right">
                            <input name="urunFiyat" id="urunFiyat" type="text"  class="form-control"/>
                          </div>
                      </div>
                    </div>
                    <div class="form-group"><label for="" class="col-md-2 control-label">Ürün Açıklaması: </label>
                      <div class="col-md-4">
                          <textarea class="form-control" rows="3" id="urunAciklama" name="urunDetay"></textarea>
                      </div>
                    </div>
                    <div class="form-group"><label for="" class="col-md-2 control-label">Ürün Resmi: </label>

                        <div class="col-md-4">
                            <div class="input-icon right"><input name="urunFoto" id="urunFoto" type="text" class="form-control"/></div>

                        </div>
                        </div>

            </div>
            <div class="form-actions pal">
                <button type="submit" class="btn btn-primary btn-outlined">Güncelle </button>

            </div>
          </div>
        </form>
        </form>
    </div>
</div>


<script>

var islem = {
		id : 0,
		urunBul : function(urunInput){
			$.post('/urun/ajaxBul', {barkod:urunInput}, function(cevap){
				var obje = $.parseJSON(cevap);
				islem.veriYaz(obje);
			});
		},
		veriYaz : function(cevap){
			islem.id = cevap.urunNo;
			$('#urunAd').val(cevap.urunAd);
			$('#urunFiyat').val(cevap.urunFiyat);
			$('#urunAciklama').val(cevap.urunAciklama);
			$('#urunBaslik').val(cevap.urunBaslik);
      $('#urunFoto').val(cevap.urunFoto);

		},
		sil : function(urunSil){
			$.post('/urun/ajaxSil', {id:islem.id}, function(cevap){
				console.log(cevap);
			});
		},
		guncelle : function(urunGuncelle){
			$.post('/urun/ajaxEkle',
					{id:islem.id,title:$('#urunBaslik').val(),urunFiyat:$('#urunFiyat').val(),urunAciklama:$('#urunAciklama').val(),urunAd:$('#urunAd').val(),urunFoto:$('#urunFoto').val()},
					function(cevap){
				console.log(cevap);
			});
		}


}
</script>
