<?php
namespace Multiple\Frontend\Controllers;
use Phalcon\Mvc\View,
	Multiple\Frontend\Models\urunler;

class UrunController extends \Phalcon\Mvc\Controller{

	public function urunlerAction(){




	}
	public function urunlisteleAction(){



        // Check if the user has uploaded files
        if ($this->request->hasFiles()) {

            // Print the real file names and sizes
            foreach ($this->request->getUploadedFiles() as $file) {

                // Print file details
                echo $file->getName(), " ", $file->getSize(), "\n";

                // Move the file into the application
                $file->moveTo('files/' . $file->getName());
            }


					}
			}



}
?>
