<div class="panel panel-default">
    <div class="panel-heading panel-bgcolor panel-baslik">Ürün Ekle</div>
    <div class="panel-body pan">
        <form action="/admin/urun/ajaxEkle" class="form-horizontal vertical-offset-2" method="Post">
            <div class="form-body">
                <div class="form-group"><label for="" class="col-md-2 control-label">Barkod no: <span class='require'>*</span></label>
                    <div class="col-md-4"><input name="urunBarkodNo" type="text" placeholder="Barkod numarası" class="form-control"/></div>
                </div>
                <div class="form-group"><label for="" class="col-md-2 control-label">Başlık<span class='require'>*</span></label>

                    <div class="col-md-4">
                        <div class="input-icon right"><input name="urunBaslik" type="text" placeholder="Başlık" class="form-control"/></div>
                    </div>
                </div>
                <div class="form-group"><label for="" class="col-md-2 control-label">Ürün Adı: <span class='require'>*</span></label>

                    <div class="col-md-4">
                        <div class="input-icon right"><input name="urunAd" type="text" placeholder="Ürün adı" class="form-control"/></div>

                    </div>
                    </div>
                    <div class="form-group"><label for="" class="col-md-2 control-label">Ürün Fiyatı: <span class='require'>*</span></label>

                    <div class="col-md-4">
                        <div class="input-icon right"><input name="urunFiyat" type="text" placeholder="Ürün Fiyatı" class="form-control"/></div>
                    </div>
                    </div>
                    <div class="form-group"><label for="" class="col-md-2 control-label">Detaylı Açıkmlama: <span class='require'>*</span></label>

                          <div class="col-md-4">
                              <textarea class="form-control" rows="3" name="urunAciklama"></textarea>
                          </div>
                    </div>
                    <div class="form-group"><label for="" class="col-md-2 control-label">Ürün Resmi: </label>
                        <div class="col-md-4">
                            <input name="urunFoto" id="urunFoto" type="file"/>

                        </div>
                    </div>
            <div class="form-actions  pal">
                <button type="submit" class="btn btn-primary btn-outlined">Ekle</button>
            </div>
        </form>
    </div>
</div>
