<?php

namespace Multiple\Backend\Controllers;
use Phalcon\Mvc\View,
	Multiple\Backend\Plugins\EST;

class YonetController extends \Phalcon\Mvc\Controller
{

	public function ozetAction()
	{


	}
	public function yonetAction()
	{

	}

	public function odeAction()
	{
		$kk = new EST("akbank", "100100000", "AKTEST", "AKTEST123", true);

		$no		=	"4355084355084358"; // kredi kartı numarası
		$ska	=	"12"; //Son kullanma ayı
		$sky	=	"18"; // Son kullanma yılı
		$cvc	=	"000";//güvenlik no
		$tutar	=	25.90;
		$taksit	=	4;
		$siparis=	"1234";

		$cevap = $kk->pay($no,$cvc,$ska,$sky,$tutar,$taksit,$siparis);

		print_r($cevap);


	}

}
