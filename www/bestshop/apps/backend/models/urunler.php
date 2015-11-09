<?php
namespace Multiple\Backend\Models;
use Phalcon\Session\Bag as bag;
class urunler extends \Phalcon\Mvc\Model{

	public function ekle($param){

		/*
		 *$this'den sonra soldaki urunfiyat veritabanında ki kolon ismi
		 * sağdaki urun fiyat elementin name'dir.
		 * */
		$this->urunBarkod = $param['urunBarkodNo'];
		$this->urunBaslik = $param['urunBaslik'];
		$this->urunAd = $param['urunAd'];
		$this->urunFiyat = $param['urunFiyat'];
		$this->urunAciklama = $param['urunAciklama'];
		$this->urunFoto = $param['urunFoto'];
		$this->save();
	}


	public function barkodBul($param){
		//$sonuc = $this->findFirst("urunBarkod='".$param."'")->toArray();
		$sonuc = $this->findFirst("urunBarkod ='{$param}'");
		if ($sonuc){
			$dizi = $sonuc->toArray();
			//$dizi["durum"] = "var";
			return json_encode($dizi);
		}else{
			//return array("durum"=>"yok");
			return json_encode(array());
		}
		return $sonuc;
	}

	public function urunSil($id){
		$this->findFirst($id)->delete($id);


	}
	public function urunGuncelle($data){
		$urun = urunler::findFirst($data['id']);
		$urun->urunBaslik = $data['titlename'];
		$urun->urunAd = $data['urunAd'];
		$urun->urunFiyat = $data["urunFiyat"];
		$urun->urunAciklama = $data["urunAciklama"];
		$urun->urunFoto = $data["urunFoto"];
		$urun->update();

	}




	public function jsonListele(){
		$liste = $this->find()->toArray();
		return json_encode(array("data"=>$liste));
	}
}

?>
