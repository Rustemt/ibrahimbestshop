<?php

namespace Multiple\Frontend\Controllers;
use Phalcon\Session\Bag as bag;
class IndexController extends \Phalcon\Mvc\Controller
{

	public function indexAction()
	{
		$uye = new bag('uye');
		if($uye->adsoyad){
			$this->view->durum = 'uye';
			$this->view->isim = $uye->adsoyad;
		}else{
			$this->view->durum = 'ziyaretci';
		}


		$foto = new bag('resim');
		if($foto->urunFoto){
			$this->view->durum = 'resim';
			$this->view->resim = $uye->urunfoto;
		}
	}


	public function testAction(){
		echo $this->sezon->get('adsoyad');
	}
}
