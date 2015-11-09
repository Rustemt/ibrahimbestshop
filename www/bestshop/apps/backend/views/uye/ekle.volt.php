<div class="panel panel-default">
    <div class="panel-heading panel-bgcolor panel-baslik">Üye Ekle</div>
    <div class="panel-body pan">
        <form action="/admin/uye/deneme" class="form-horizontal vertical-offset-2" method="Post">
            <div class="form-body">
                <div class="form-group"><label for="" class="col-md-2 control-label">kullanıcı No: <span class='require'>*</span></label>
                    <div class="col-md-4"><input name="KullaniciNo" type="text" class="form-control"/></div>
                </div>
                <div class="form-group"><label for="" class="col-md-2 control-label">kullanıcı İsim<span class='require'>*</span></label>

                    <div class="col-md-4">
                        <div class="input-icon right"><input name="KullaniciIsim " type="text"  class="form-control"/></div>
                    </div>
                </div>
                <div class="form-group"><label for="" class="col-md-2 control-label">kullanıcı Eposta <span class='require'>*</span></label>

                    <div class="col-md-4">
                        <div class="input-icon right"><input name="KullaniciEposta" type="text"  class="form-control"/></div>
                       
                    </div>
                    </div>
                    <div class="form-group"><label for="" class="col-md-2 control-label">kullanıcı Tc: <span class='require'>*</span></label>

                    <div class="col-md-4">
                        <div class="input-icon right"><input name="KullaniciTc" type="text" class="form-control"/></div>
                    </div>
                    </div>        
                    <div class="form-group"><label for="" class="col-md-2 control-label">kullanıcı Adı: <span class='require'>*</span></label>

                    <div class="col-md-4">
                        <input class="form-control" rows="3" name="KullaniciAdi"/>
                    </div>
                    </div>

            </div>
            <div class="form-actions  pal">
                <button type="submit" class="btn btn-primary btn-outlined">Ekle</button>
            </div>
        </form>
    </div>
</div>


