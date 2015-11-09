<div class="panel panel-default">
  <div class="panel-heading panel-bgcolor">
    <h3 class="panel-title panel-baslik">Editör ekle</h3>
  </div>
  <div class="panel-body">
	<form action="/admin/uye/uyeislem" method="post">
		<div class="row">
			<div class="col-md-1">
				<label class="bul-kul-eposta">E-posta:</label>
			</div>
			<div class="input-group col-md-4">
		      <input type="text" id="eposta" class="form-control"   name="email" placeholder="Eposta ara">
		      <span class="input-group-btn">
		        <button id="bul" name="ara" onclick="editor.epostaBul($('#eposta').val())" class="btn btn-default" type="button">Bul!</button>
		      </span>
		    </div>
		</div>
		<div class="row editor-icerik vertical-offset-2">
		<div class="row">
		     <div class="col-md-12">
		         <div class="panel panel-yellow">
		             <div class="panel-heading panel-bgcolor">Left Aligned</div>
		             <div class="panel-body pan">
		                 <form>
		                     <div class="form-body pal">
		                         <div class="form-group"><label for="inputUsername" class="control-label">Kullanıcı Adı: <span class='require'>*</span></label>

		                             <div class="input-icon"><i class="fa fa-user"></i><input id="kullaniciIsimEditor" type="text" placeholder="Username" class="form-control"/></div>
		                         </div>
		                         <div class="form-group"><label for="inputEmail" class="control-label">Eposta <span class='require'>*</span></label>

		                             <div class="input-group"><span class="input-group-addon"><i class="fa fa-envelope"></i></span><input type="text" id="epostaEditor" placeholder="Email Address" class="form-control"/></div>
		                         </div>
		                         <div class="form-group"><label for="inputAddress" class="control-label">Address <span class='require'>*</span></label>

		                             <div class="input-icon right"><i class="fa fa-location-arrow"></i><input type="text" placeholder="Address" class="form-control"/></div>
		                         </div>
		                     </div>
		                     <div class="form-actions pll prl">
		                         <button type="button" class="btn btn-green btn-outlined" onclick="editor.guncelle()">Güncelle</button>
		                         &nbsp;
		                         <button type="button" id="editor-sil" class="btn btn-primary btn-outlined" onclick="editor.sil()">Sil</button>
		                          &nbsp;
		                          <button type="button" class="btn btn-green btn-outlined" onclick="editor.yetkilendir()">Yetkilendir</button>
		                     </div>
		                      <div  class="alert alert-success editor-mesaj" role="alert">
									İşlem başarılı...
							 </div>
		                 </form>
		             </div>
		         </div>
		     </div>
		 </div>
		</div>
	</form>
  </div>
</div>
	<?php echo $this->tag->javascriptInclude('assets/js/jquery.min.js'); ?>
	<?php echo $this->tag->javascriptInclude('assets/js/bootstrap.min.js'); ?>
	<?php echo $this->tag->javascriptInclude('assets/js/holder.js'); ?>
	<?php echo $this->tag->javascriptInclude('assets/js/jquery.form.min.js'); ?>

<script>

var editor = {
		id : 0,
		epostaBul : function(epostaInput){
			$.post('/admin/uye/ajaxBul', {eposta:epostaInput}, function(cevap){
				var obje = $.parseJSON(cevap);
				editor.veriYaz(obje);

			});
		},
		veriYaz : function(cevap){
			editor.id = cevap.kullaniciNo;
			$('#kullaniciIsimEditor').val(cevap.kullaniciIsim);
			$('#epostaEditor').val(cevap.kullaniciEposta);

		},

		sil : function(kullaniciSil){
			$.post('/admin/uye/ajaxSil', {id:editor.id}, function(cevap){

				console.log(cevap);

			});
		},

		guncelle : function(kullaniciGuncelle){
			$.post('/admin/uye/ajaxGuncelle', {id:editor.id}, function(cevap){
				console.log(cevap);

			});
		},

		yetkilendir : function(kullaniciYetkilendir){
			$.post('/admin/uye/ajaxEditorYetkilendir', {id:editor.id}, function(cevap){
				console.log(cevap);
			});

		}

}
		$(document).ready(function(){
			$('#editor-sil').ajaxForm({
				success: function(cevap){
					$('#editor-mesaj').fadeIn(1000);
					setTimeout(function(){
						$('#editor-sil').fadeOut(1000);
					},2000);
						console.log(cevap);
				}

			});

		});

</script>
