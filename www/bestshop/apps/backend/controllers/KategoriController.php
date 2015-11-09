<?php
namespace Multiple\Backend\Controllers;
use Phalcon\Mvc\View,
	Multiple\Backend\Models\altKategoriler;

	class KategoriController extends \Phalcon\Mvc\Controller{
		public function initialize(){
			//$this->view->disableLevel(View:: LEVEL_MAIN_LAYOUT);
		}


		public function ozetAction(){



		}

		public function ekleAction(){



		}
		public function ajaxEkleAction(){
			$kategori = new altKategoriler();
			$kategori->ajaxEkle($this->request->getPost());



		}


	}


?>
