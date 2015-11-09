<!doctype>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Best Shop</title>
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700&subset=latin-ext' rel='stylesheet' type='text/css'>
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	{{ stylesheet_link("assets/css/bootstrap.min.css") }}
	{{ stylesheet_link("assets/css/custom.css") }}
</head>
<body>
	<header>
		<div class="container">
			<div class="hidden-xs row vertical-offset-1">
				<div class="col-sm-5 col-md-6 no-pad">
					<div class="row">
						<div class="no-pad-l col-sm-7 col-md-4">
							<div class="form-group form-group-sm">
							    <label  id="label-kur" for="kur" class="col-sm-2 col-md-3 control-label">Kur:</label>
							    <div class="col-sm-8 col-md-9 no-md-pad-l no-pad-r">
							      <select class="select-kur col-sm-12 col-md-12 input-sm">
							      	<option value="">TL</option>
							      	<option value="">US</option>
							      </select>
							    </div>
							 </div>
						</div>
						<div class="col-sm-5 col-md-4 no-sm-pad-l">
							<div class="btn-toolbar" role"toolbar">
								<div class="btn-group btn-group-sm">
									<button class="btn btn-default turuncu">TR</button>
								</div>
								<div class="btn-group btn-group-sm">
									<button class="btn btn-default">EN</button>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="hidden-xs col-sm-7 col-md-6 no-pad-r">
					<ul class="header-menu">
						<li>
							<span class="glyphicon glyphicon-user"></span>  Hesabım
						</li>
						<li>
							<span class="glyphicon glyphicon-star"></span>  Favoriler
						</li>
						<li>
							<span class="glyphicon glyphicon-shopping-cart"></span>  Sepetim
						</li>
						<li>
							<span class="glyphicon glyphicon-ok"></span>  Ödeme
						</li>
							<li>
								{% if durum == 'uye' %}
								<div> Hoşgeldiniz Sn. {{isim}} </div>
									{% else %}
							 <button class="giris-buton" data-toggle="modal" data-target="#giris-modal"><span class="glyphicon glyphicon-log-in"></span> Giriş</button>
							 	{% endif %}
							<!-- Modal başlangıç -->
							<!-- Button trigger modal -->
					<div class="modal fade" id="giris-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header no-pad">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					        <h4 class="modal-title modal-baslik" id="exampleModalLabel">Giriş yap ya da Kaydol</h4>
					      </div>
					      <div class="modal-body">
					      	<div role="tabpanel">
								  <!-- Nav tabs -->
								 <ul class="nav nav-tabs col-md-7" role="tablist">
								    <li role="presentation" class="active"><a href="#giris-yap" aria-controls="giris" role="tab" data-toggle="tab">Giriş yap</a></li>
								    <li role="presentation"><a href="#kaydol" aria-controls="kaydol" role="tab" data-toggle="tab">Kaydol</a></li>
								  </ul>

								  <!-- Tab panes -->
								  <div class="tab-content">
								    <div role="tabpanel" class="tab-pane active" id="giris-yap">
								    	<form class="form-horizontal" action="/uye/ajaxGiris" method="Post" id="giris" >
											  <div class="form-group">
											    <label for="inputEmail3" class="control-label"></label>
											    <div class="col-md-7">
											      <input type="email" class="form-control vertical-offset-1" id="inputEmail3" placeholder="Email" name="eposta">
											    </div>
											  </div>
											  <div class="form-group">
											    <label for="inputPassword3" class="control-label"></label>
											    <div class="col-md-7">
											      <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="sifre">
											    </div>
											  </div>
											  <div class="form-group">
											    <div class="col-sm-offset-2">
											      <div class="checkbox">
											        <label>
											          <input type="checkbox"> Beni hatırla
											        </label>
											      </div>
											    </div>
											  </div>
											  <div class="form-group">
											    <div class="col-sm-offset-2">
											      <button type="submit" class="btn btn-default">Giriş yap</button>
														<a href="/uye/ajaxGiris">Gonder</a>
											    </div>
											  </div>
											  <div class="alert alert-danger" id="mesajg"  role="alert">

													Hatalı giriş yaptınız.
											</div>
										</form>
								    </div>
								    <div role="tabpanel" class="tab-pane" id="kaydol">
								    <form action="/uye/kayit" method="POST" class="form-horizontal row col-md-12">
								    		<div class="form-group ">
										    <label for="ad-soyad" class="col-md-2 control-label vertical-offset-1">Ad Soyad:</label>
										    <div class="col-md-5">
										      <input type="text" name="adSoyad" class="form-control vertical-offset-1" id="inputEmail3" placeholder="Adınız Soyadınız">
										    </div>
										  </div>
										  <div class="form-group">
										    <label for="inputEmail3" class="col-md-2 control-label" >Email:</label>
										    <div class="col-md-5">
										      <input type="text" onblur="site.epostaKontrol(this)"name="email" class="form-control" id="inputEmail3" placeholder="Email">
										    </div>
										  </div>
										  <div class="form-group">
										    <label for="inputPassword3" class="col-md-2 control-label">Şifre:</label>
										    <div class="col-md-5">
										      <input type="password" name="sifre" class="form-control" id="inputPassword3" placeholder="Şifre">
										    </div>
										  </div>
										  <div class="form-group">
										    <div class="col-md-offset-2 col-md-5">
										    </div>
										  </div>
										  <div class="form-group">
										    <div class="col-md-offset-2 col-md-5">
										      <button type="submit" class="btn btn-default">Kaydol</button>
										    </div>
										  </div>
										  <div id="mesaj" class="alert alert-success" role="alert">

													İşlem başarılı...

											</div>

										</form>
								    </div>
								  </div>
								</div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">Kapat</button>
					      </div>
					    </div>
					  </div>
					</div>
							<!-- Modal bitiş -->
					<div class="modal fade" id="girisModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					  <div class="modal-dialog">giris-yap
					    <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					        <h4 class="modal-title modal-baslik" id="myModalLabel">Kullanıcı Girişi</h4>
					      </div>
					      <div class="modal-body">
					        ...
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        <button type="button" class="btn btn-primary">Save changes</button>
					      </div>
					    </div>
					  </div>
					</div>


											</li>
										</ul>
									</div>
								</div>
			<div class="row vertical-offset-4 vertical-xs-offset-1">
				<div class="no-sm-pad-l no-md-pad-l no-lg-pad-l col-xs-6  col-sm-4 col-md-4">
					<span class="turuncu buyuk">BEST</span><span class="logo-yazi">SHOP</span>
				</div>
				<div class="visible-xs">
					<div class="col-xs-6">
						<div class="form-group form-group-lg">
						    <div class="col-xs-12 no-pad-r">
						      <select class="select-kur col-xs-12 input-sm">
						      	<option value="">TL</option>
						      	<option value="">US</option>
						      </select>
						    </div>
						 </div>
					</div>
					<div class="clearfix"></div>
					<div class="col-xs-6">
						<address class="no-margin">
							<ul class="list-unstyled">
								<li>TEL: <span class="turuncu">0 (212) 211 00 00</span></li>
								<li>Çalışma saatlerimiz 09:00 - 18:00</li>
							</ul>
						</address>
					</div>
					<div class="col-xs-4 vertical-xs-offset-05 pull-right">
						<div class="btn-toolbar no-margin-l pull-right" role"toolbar">
							<div class="btn-group btn-group-md">
								<button class="btn btn-default turuncu">TR</button>
							</div>
							<div class="btn-group btn-group-md">
								<button class="btn btn-default">EN</button>
							</div>
						</div>
					</div>
				</div>

				<div class="hidden-xs">
					<div class="col-xs-6 col-sm-4 col-md-4 vertical-n-offset-1">
						<address class="no-margin">
							<ul class="list-unstyled">
								<li>TEL: <span class="turuncu">0 (212) 211 00 00</span></li>
								<li>Çalışma saatlerimiz 09:00 - 18:00</li>
							</ul>
						</address>
					</div>

					<div class="col-sm-4 col-md-4 vertical-n-offset-2 no-pad-r">
					<div class="col-sm-4 col-md-4"></div>
						<div class="header-sepet pad-1 col-sm-6 col-md-6"><span class="hidden-sm">SEPETİNİZ - </span> 0 TL</div>
						<div class="col-sm-2 col-md-2 pad-1 text-center header-sepet-icon no-sm-pad-l no-sm-pad-r">
							<span class="glyphicon glyphicon-shopping-cart"></span>
						</div>
					</div>
				</div>

			</div>
		</div>
	</header>

	<nav class="header-nav navbar navbar-default" role="navigation">
		  <div class="container">
		  <div class="row">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-nav-collapse-">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <div class="visible-xs vertical-xs-offset-05">
		      	<form role="search">
		        	<div class="no-pad-r no-margin form-group col-xs-4">
		          		<input ype="text" class="form-control" placeholder="Arama">
		       		</div>
		        	<div class="col-xs-2 no-pad">
				        <button type="submit" class="btn btn-default">
				        	<i class="glyphicon glyphicon-search"></i>
				        </button>
		        	</div>
		      	</form>
		      </div>
		    </div>

		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse no-pad" id="header-nav-collapse-">
		      <ul class="nav navbar-nav">
		        <li class="col-sm-2_5 col-md-2_5 col-lg-2_5 active"><a href="#">Anasayfa</a></li>
		        <li class="col-sm-2_5 col-md-2_5 col-lg-2_5"><a href="#">Kadın</a></li>
		        <li class="col-sm-2_5 col-md-2_5 col-lg-2_5"><a href="#">Erkek</a></li>
		        <li class="col-sm-2_5 col-md-2_5 col-lg-2_5"><a href="#">Çocuk</a></li>
		        <li class="col-sm-2_5 col-md-2_5 col-lg-2_5"><a href="#">Markalar</a></li>
		        <li class="col-sm-2_5 col-md-2_5 col-lg-2_5"><a href="#">İletişim</a></li>

		      </ul>

		      <form class="hidden-xs navbar-form navbar-right no-margin no-pad" role="search">
		        <div class="form-group col-sm-12 col-md-12 no-pad-r">
		          <input id="search-input" type="text" class="form-control" placeholder="Arama">
		          <button id="search-btn" type="submit" class="btn btn-default">
			        	<i class="glyphicon glyphicon-search"></i>
			        </button>
		        </div>

		      </form>

		    </div><!-- /.navbar-collapse -->
		    </div>
		  </div><!-- /.container-->
	</nav>
	<div class="container no-pad-l no-pad-r">

	{{content() }}

	</div>




	<div class="info-area">

		<div class="container">
			<div class="row">
				<div class="col-xs-4 col-sm-4 col-md-4 info no-pad vertical-offset-1">
					<div class="follow col-md-5 no-pad">Bizi Takip Et</div>
					<div class="col-md-7 follow-icon no-pad">
						<i class="fa fa-facebook"></i>
						<i class="fa fa-twitter"></i>
						<i class="fa fa-rss"></i>
						<i class="fa fa-youtube"></i>
					</div>
				</div>
				<div class="col-xs-4 col-sm-4 col-md-4 info info-cargo no-pad">
					<div class="cargo col-sm-3 col-md-3 vertical-offset-05">
						<i class="fa fa-truck"></i>
					</div>
					<div class="col-sm-9 col-md-9">
						<p class="cargo-text">Ücretsiz Kargo</p>
						<p class="cargo-text-extra">499TL ve Üzeri Alışverişlerinizde</p>
					</div>
				</div>
				<div class="col-xs-4 col-sm-4 col-md-4 info no-pad">
					<div class="cargo col-sm-3 col-md-3 vertical-offset-05">
						<i class="fa fa-phone"></i>
					</div>
					<div class="col-sm-9 col-md-9">
						<p class="cargo-text">DOĞRUDAN SATIŞ</p>
						<p class="cargo-text-extra">TELEFON: <span class="turuncu">216 111 24 53</span></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="pad-2 overflow-hidden">
	<div class="container">
		<div class="row">
			<div class="col-sm-4 col-md-3 content">
				<div class="content-title">
					BİLGİLER
				</div>
				<ul class="link-list no-pad">
					<li><a href="">HAKKIMIZDA</a></li>
					<li><a href="">MÜŞTERİ HİZMETLERİ</a></li>
					<li><a href="">GİZLİLİK POLİTİKASI</a></li>
					<li><a href="">SİTEMAP</a></li>
					<li><a href="">İLETİŞİM</a></li>
				</ul>
			</div>
			<div class="col-sm-4 col-md-3">
				<div class="content-title">
					NEDEN BİZ ?
				</div>
				<ul class="link-list no-pad">
					<li><a href="">TAŞIMA</a></li>
					<li><a href="">GÜVENLİ ALIŞVERİŞ</a></li>
					<li><a href="">ULUSLARARASI TAŞIMA</a></li>
					<li><a href="">ORTAKLIK</a></li>
					<li><a href="">GRUP SATIŞI</a></li>
				</ul>
			</div>
			<div class="col-sm-4 col-md-3">
				<div class="content-title">
					HESABIM
				</div>
				<ul class="link-list no-pad">
					<li><a href="">GİRİŞ YAP</a></li>
					<li><a href="" class="turuncu">KARTIM</a></li>
					<li><a href="">DİLEK LİSTESİ</a></li>
					<li><a href="">SİPARİŞ TAKİBİ</a></li>
					<li><a href="">YARDIM</a></li>
				</ul>
			</div>
			<div class="col-sm-12 col-md-3">
				<div class="content-title">
					BÜLTEN
				</div>
				<div class="email no-pad vertical-offset-2">
					<div class="col-xs-9 col-sm-9 col-md-10 no-pad">
						<input type="text" placeholder="E-MAIL ADRESİNİZ" class="form-control input-md email-input">
					</div>
					<div class="col-xs-3 col-sm-3 col-md-2 no-pad vertical-n-offset-05">
						<button class="btn btn-red email-btn">GİT</button>
					</div>
				</div>
				<div class="clearfix"></div>
				<address class="vertical-offset-1">
					<p>Store Location: 8601 Creat Labaratory,</p>
					<p>New York, D05 86GR</p>
				</address>
			</div>
			<div class="clearfix visible-sm"></div>
			<div class="col-sm-12 col-md-12 copyright no-pad">
				<div class="col-xs-5 col-sm-6 col-md-8 no-pad copy vertical-offset-1">
					Copyright © 2013 <span class="turuncu">Fedimo</span>. All rights reserved.
				</div>
				<div class="col-xs-7 col-sm-6 col-md-4 no-pad" >
					<div class="pull-right info-buttons">
		  				<button type="button" class="btn btn-default">&nbsp;</button>
		  				<button type="button" class="btn btn-default">&nbsp;</button>
		  				<button type="button" class="btn btn-default">&nbsp;</button>
		  				<button type="button" class="btn btn-default">&nbsp;</button>
		  				<button type="button" class="btn btn-default">&nbsp;</button>
	  				</div>
				</div>
			</div>

		</div><!-- /.row -->
	</div>
	</footer>
</body>
	{{ javascript_include("assets/js/jquery.min.js") }}
	{{ javascript_include("assets/js/bootstrap.min.js") }}
	{{ javascript_include("assets/js/holder.js") }}
	{{ javascript_include("assets/js/jquery.form.min.js") }}
	{{ assets.outputJs() }}

	<script>
	var site ={
			epostaKontrol : function(epostaInput){
				//Gittiği action'dan onay veya red cevabı gelir
				$.post('/uye/ajaxepostakontrol', {eposta:epostaInput.value},function(cevap){


					if(cevap == 'onay'){
						$(epostaInput).css('background','#fff');
					}else{

						$(epostaInput).css('background','#FE5552');

					}

				});

			}
	}

		$(document).ready(function(){
			$('#kaydol').ajaxForm({
				success : function(cevap){
					$('#mesaj').fadeIn(1000);

					setTimeout(function(){
						$('#mesaj').fadeOut(1000)
					},2000);

					console.log(cevap);
				}

			});

			$('#giris').ajaxForm({
				success : function(cevap){
					if(cevap == 'red') {
						$('#mesajg').fadeIn(1000);

						setTimeout(function(){
							$('#mesajg').fadeOut(1000);
						},2000);

						console.log(cevap);
					}
				}

			});

		});
	</script>
</html>
