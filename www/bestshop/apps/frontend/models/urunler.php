<?php
namespace Multiple\Frontend\Models;
use Phalcon\Session\Bag as bag;
class urunler extends \Phalcon\Mvc\Model{


	public function jsonListele(){
		$liste = $this->find()->toArray();
		return json_encode(array("data"=>$liste));
	}


}


?>
