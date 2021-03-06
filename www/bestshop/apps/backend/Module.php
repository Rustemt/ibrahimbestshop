<?php

namespace Multiple\Backend;
use Phalcon\Session\Adapter\Files as PhalconSezon;
class Module
{

	public function registerAutoloaders()
	{

		$loader = new \Phalcon\Loader();

		$loader->registerNamespaces(array(
			'Multiple\Backend\Controllers' => '../apps/backend/controllers/',
			'Multiple\Backend\Models' => '../apps/backend/models/',
			'Multiple\Backend\Plugins' => '../apps/plugins/',
		));

		$loader->register();
	}

	/**
	 * Register the services here to make them general or register in the ModuleDefinition to make them module-specific
	 */
	public function registerServices($di)
	{

		//Registering a dispatcher
		$di->set('dispatcher', function() {

			$dispatcher = new \Phalcon\Mvc\Dispatcher();

			//Attach a event listener to the dispatcher
			$eventManager = new \Phalcon\Events\Manager();
			$eventManager->attach('dispatch', new \Acl('backend'));

			$dispatcher->setEventsManager($eventManager);
			$dispatcher->setDefaultNamespace("Multiple\Backend\Controllers\\");
			return $dispatcher;
		});

		//Registering the view component
		$di->set('view', function() {
			$view = new \Phalcon\Mvc\View();
			$view->setViewsDir('../apps/backend/views/');
			$view->registerEngines(array(
					".volt" => 'Phalcon\Mvc\View\Engine\Volt'
			));
			return $view;
		});

		//Set a different connection in each module
		$di->set('db', function() {
			return new \Phalcon\Db\Adapter\Pdo\Mysql(array(
				"host" => "localhost",
				"username" => "root",
				"password" => "0607090096",
				"dbname"	=> "bestshop"
			));
		});

			$di->setShared('session', function() {
				$session = new PhalconSezon;
				$session->start();
				return $session;
			});

	}

}
