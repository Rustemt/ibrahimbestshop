<div class="panel panel-default">
  <div class="panel-heading panel-bgcolor">
    <h3 class="panel-title panel-baslik">Kategori ekle</h3>
  </div>
  <div class="panel-body">
  	<form action="/admin/kategori/ajaxEkle" method="Post">
  	<div class="row">
  		<label class="col-md-1 ke-yazi">Üst Kategori:</label>
	  		<div class="col-md-4">
			 		<select name="ustKategori" class="form-control col-md-5">
			 			<option>Kazak</option>
			 			<option>Pantolon</option>
			 			<option>Mont</option>
			 			<option>Ceket</option>
			 			<option>Penye</option>
			 		</select>
			</div>
		             
	 <div class="col-md-5" >
	  	<div data-on="primary" data-off="info" class="make-switch"><input type="checkbox" checked="checked"/></div>
	 </div>
	</div> 
	 	
		<div class="row vertical-offset-2 ">
			<label class="col-md-1 ke-yazi">Kategori adı: </label>
			<div class="col-md-4 ">
				<input name="kategoriAd" type="text" placeholder="" class="form-group kategoriekle-input form-control" />
			</div>
		</div>
		
		
		<div class="row vertical-offset-1">
			<span class="col-md-1"></span>
			<div class="col-md-7">
				<input type="submit" value="Kaydet" class="btn btn-danger kategori-ekle"></input>
				<input type="submit" value="İptal" class="btn btn-success kategori-iptal"></input>
				
			</div>
		</div>
	</form>
	
  </div>
</div>                          