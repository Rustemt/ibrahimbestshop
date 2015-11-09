<?php
namespace Multiple\Backend\Controllers;
use Phalcon\Mvc\View,
	Multiple\Backend\Models\urunler;

class UrunController extends \Phalcon\Mvc\Controller{
	public function ekleAction(){


	}


	public function ajaxEkleAction(){
		$urun = new urunler();
		$urun->ekle($this->request->getPost());


	}



	public function duzenleAction(){
	}

	public function ajaxBulAction(){

		$this->view->disable();
		$urun = new urunler();
		echo $urun->barkodBul($this->request->getPost('barkod'));

	}
	public function ajaxSilAction(){

		$urunler = new urunler();
		echo $urunler->urunSil($this->request->getPost('barkod'));

		$this->view->disable();
	}

	public function ajaxGuncelleAction(){
		$this->view->disable();


		if($this->request->isPost() && $this->request->isAjax())
		{
			$urunler = new urunler();

			$data = array(

					'id' => $this->request->getPost('id'),
					'titlename' => $this->request->getPost('title'),
					'urunFiyat' => $this->request->getPost('urunFiyat'),
					'urunAd' => $this->request->getPost('urunAd'),
					'urunAciklama' => $this->request->getPost('urunAciklama'),
					'urunFoto' => $this->request->getPost('urunFoto'),

			);

			echo $urunler->urunGuncelle($data);
		}





	}
	public function urunlerAction(){
		$this->assets
			->addJs('assets/odin/vendors/datatables/js/jquery.dataTables.js')
			->addJs('assets/odin/vendors/datatables/js/jquery.jeditable.js')
			->addJs('assets/js/urunIndex.js')
			->addJs('assets/js/table-editable.js');

	}
	public function urunlisteleAction(){
				$urunler = new urunler();
				echo $urunler->jsonListele();

				$this->view->disable();
			}

}
?>
