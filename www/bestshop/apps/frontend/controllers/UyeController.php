<?php
	namespace Multiple\Frontend\Controllers;
		use Phalcon\Mvc\View,
		Multiple\Frontend\Models\kullanicilar;
			class UyeController extends \Phalcon\Mvc\Controller{
				public function kayitAction(){
					$uye = new kullanicilar();
					$uye->onKayit($this->request->getPost());
					$this->view->mesaj = "Tebrikler, kayıt oldunuz...";
				}


				public function ajaxepostakontrolAction(){
					$eposta = $this->request->getPost('eposta');
					$kullanici = new kullanicilar();
					$cevap  = $kullanici->epostaKontrol($eposta);

					echo $cevap;

					$this->view->disable();
					$this->view->disableLevel(View::LEVEL_MAIN_LAYOUT);


				}

				public function ajaxGirisAction(){
					$kullanici = new kullanicilar();
					$cevap = $kullanici->giris($this->request->getPost());
					echo $cevap;


					$this->view->disable();
					$this->view->disableLevel(View::LEVEL_MAIN_LAYOUT);

				}

				public function test1Action(){
					//set ile tanımla yapılır.
					$this->session->set("kullaniciAdi", "Aydın");

				}

				public function test2Action(){

					//has -> sorgu yapar
					if ($this->session->has("kullaniciAdi")) {

						//get- > getirir.
						$name = $this->session->get("kullaniciAdi");

						echo $name;
					}


				}


			}
?>
