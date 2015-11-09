<?php

namespace Multiple\Backend\Models;

class altKategoriler extends \Phalcon\Mvc\Model
{
	public function initialize(){
		$this-> setSource('altKategoriler');
	}

	public function ajaxEkle($param)
	{
		$this->altKategoriAd = $param['kategoriAd'];
		$this->altKategoriAna = $param['ustKategori'];
		$this->save();
		
	}
	
}