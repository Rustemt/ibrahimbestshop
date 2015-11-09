<?php

error_reporting(E_ALL);
ini_set("display_errors","on");
class Application extends \Phalcon\Mvc\Application
{

	/**
	 * Register the services here to make them general or register in the ModuleDefinition to make them module-specific
	 */
	protected function _registerServices()
	{

		$di = new \Phalcon\DI\FactoryDefault();
		//Setup the view component
		$di->set('view', function(){
			$view = new \Phalcon\Mvc\View();
			$view->setViewsDir('../app/views/');
			$view->registerEngines(array(
					".volt" => 'Phalcon\Mvc\View\Engine\Volt'
			));
			return $view;
		});

		$loader = new \Phalcon\Loader();

		/**
		 * We're a registering a set of directories taken from the configuration file
		 */
		$loader->registerDirs(
			array(
				__DIR__ . '/../apps/library/',
				__DIR__ . '/../apps/plugins/',
				
			)
		)->register();

		//Registering a router
		$di->set('router', function(){

			$router = new \Phalcon\Mvc\Router();
			$router->removeExtraSlashes(true);
			//$router->mount(new Routes());


			$router->setDefaultModule("frontend");

			$router->add('/:controller/:action', array(
				'module' => 'frontend',
				'controller' => 1,
				'action' => 2,
			));

			$router->add("/admin", array(
				'module' => 'backend',
				'controller' => 'login',
				'action' => 'yonet',
			));
	
			/*$router->add("/admin/products/:action", array(
				'module' => 'backend',
				'controller' => 'products',
				'action' => 1,
			));*/

			$router->add("/admin/:controller/:action", array(
				'module' => 'backend',
				'controller' => 1,
				'action' => 2,
			));


			return $router;

		});

		$this->setDI($di);
	}

	public function main()
	{

		$this->_registerServices();

		//Register the installed modules
		$this->registerModules(array(
			'frontend' => array(
				'className' => 'Multiple\Frontend\Module',
				'path' => '../apps/frontend/Module.php'
			),
			'backend' => array(
				'className' => 'Multiple\Backend\Module',
				'path' => '../apps/backend/Module.php'
			)
		));

		echo $this->handle()->getContent();
	}
	

}


$application = new Application();
$application->main();
