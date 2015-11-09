<?php

namespace Multiple\Backend\Controllers;
use Phalcon\Mvc\View,
Multiple\Backend\Models\kullanicilar;
class LoginController extends \Phalcon\Mvc\Controller
{



	public function yonetAction()
	{
			$this->request->getPost();	
		$this->view->disableLevel(View:: LEVEL_MAIN_LAYOUT);


	}


	

}