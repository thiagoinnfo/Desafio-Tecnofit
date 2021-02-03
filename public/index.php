<?php
require dirname(__DIR__) . '/config/paths.php';
require dirname(__DIR__) . '/vendor/autoload.php';

use Src\Controller\HomeController;

$controller = new HomeController();
$controller->index();

//$controller = new $controllerClassName();
//$controller->{$action}();