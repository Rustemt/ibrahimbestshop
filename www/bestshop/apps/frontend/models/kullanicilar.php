<?php
namespace Multiple\Frontend\Models;
use Phalcon\Session\Bag as bag;
	class kullanicilar extends \Phalcon\Mvc\Model{
		/*
		 * Bu metod giriş ekranında ilk kaydı almak için kullanılır.
		 * @bilgiler array $bilgiler kullanıcı bilgilerini tutar.
		 * @return kayıtın başarılı olup olmadığını sorgular.
		 */

		public function onKayit($bilgiler){
			$this->kullaniciIsim = $bilgiler['adSoyad'];
			$this->kullaniciEposta = $bilgiler['email'];
			$this->kullaniciSifre = $bilgiler['sifre'];
			return $this-> save();

		}
		/* Kullanıcıdan gelen e-posta adresi tablodan var mı yok mu diye kontrol eder,
		 * doğruysa onay değilse red verir...

		 * @param string kullanıcıdan gelen e-posta adresi
		 * @returns string onay veya red
		 */
		public function epostaKontrol($param){
			$kullanici = $this->findFirst("kullaniciEposta = '{$param}'");

			if($kullanici){
				return 'red';
			}else{
				return 'onay';
			}


		}

		/*Kullanıcı giriş yapar
		 *
		 */
		public function giris($param){

			$kullanici = $this->findFirst("kullaniciSifre = '{$param['sifre']}' and kullaniciEposta = '{$param['eposta']}'");
			if($kullanici){
				/*
				 * //Bazı durumlarda Session aşağıdaki gibi çalışır.
				 *
				 * $this->getDI()->getSession()->set("adsoyad", $kullanici->kullaniciAd);
				 * $this->getDI()->getSession()->set("eposta", $kullanici->kullaniciEposta);
				 *
				 */

				$uye = new bag('uye');
				$uye->adsoyad = $kullanici->kullaniciIsim;
				return 'onay';
			}else{
				return 'red';
			}
		}
	}
?>
