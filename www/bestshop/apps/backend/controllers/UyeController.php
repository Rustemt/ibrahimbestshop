<?php
namespace Multiple\Backend\Controllers;
use Phalcon\Mvc\View,
Multiple\Backend\Models\kullanicilar;

	class UyeController extends \Phalcon\Mvc\Controller{
		public function uyelerAction(){
			$this->assets
			->addJs("assets/odin/vendors/datatables/js/jquery.dataTables.js")
			->addJs("assets/odin/vendors/datatables/js/jquery.jeditable.js")
			->addjs("assets/js/uyeIndex.js")
			->addJs('assets/js/table-editable.js');

		}
	public function ajaxListeleAction(){

		$kullanicilar = new kullanicilar();
		echo $kullanicilar->jsonListele();


		$this->view->disableLevel(View:: LEVEL_MAIN_LAYOUT);
		$this->view->disable();


	}

	public function uyeislemAction(){




	}

	public function ajaxBulAction(){
		$k = new kullanicilar();

		print_r ($k->epostaBul($this->request->getPost('eposta')));

		$this->view->disableLevel(View:: LEVEL_MAIN_LAYOUT);
		$this->view->disable();
	}

	public function ajaxSilAction(){

		//echo $this->request->getPost('id');

		$kullanicilar = new kullanicilar();
		echo $kullanicilar->editorSil($this->request->getPost('id'));

		$this->view->disableLevel(View:: LEVEL_MAIN_LAYOUT);
		$this->view->disable();
	}
	public function ajaxGuncelleAction(){

		//echo $this->request->getPost('id');

		$kullanicilar = new kullanicilar();
		echo $kullanicilar->editorGuncelle($this->request->getPost('id'));

		$this->view->disableLevel(View:: LEVEL_MAIN_LAYOUT);
		$this->view->disable();
	}

	public function ajaxEditorYetkilendirAction(){

		$kullanicilar = new kullanicilar();
		echo $kullanicilar->editorYetkilendir($this->request->getPost('id'));

		$this->view->disableLevel(View:: LEVEL_MAIN_LAYOUT);
		$this->view->disable();



	}
}

?>
