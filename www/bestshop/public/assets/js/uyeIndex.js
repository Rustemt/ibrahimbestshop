$(function(){

	$('#uyeler').DataTable({
		"scrollY":        "200px",
		"scrollCollapse": true,
		"paging":         false,
		"ajax" : "/admin/uye/ajaxListele",
		"columns":[
		     {"data"	:	"kullaniciNo"},
		     {"data"	:	"kullaniciIsim"},
		     {"data"	:	"kullaniciEposta"},
		     {"data"	:	"kullaniciSifre"},
		     {"data"	:	"kullaniciAd"},
		     {"data"	:	"kullaniciDogum"},
				 {"data"	:	"kullaniciMeslek"},
				 {"data"	:	"kullaniciKayıt"},
		     {"data"	:	"kullaniciCinsiyet"},
		     {"data"	:	"kullaniciTc"},
				 {"data"	:	"kullaniciTip"},



		]

	});
});
