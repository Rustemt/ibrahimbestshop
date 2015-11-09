<?php 
namespace Multiple\Backend\Models;
use Phalcon\Session\Bag as bag;
class kullanicilar extends \Phalcon\Mvc\Model{
	
	public function jsonListele(){
		$liste = $this->find()->toArray();
		return json_encode(array("data"=>$liste));
	}
	
	public function epostaBul($param){
		//$sonuc = $this->findFirst("kullaniciEposta ='".$param."'")->toArray();
		$sonuc = $this->findFirst("kullaniciEposta ='{$param}'");
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
	
	public function editorSil($id){
		$this->findFirst($id)->delete($id);

		
	}
	
	public function editorYetkilendir($id){
		$kullanici = $this->findFirst($id);
		$kullanici->kullaniciTip ="editor";
		
		echo $kullanici->save();
	}
	
}

?>