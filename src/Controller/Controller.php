<?php
namespace Src\Controller;

use Exception;

class Controller{

    protected function render($template, $data = null)
    {
        $file = SRC_DIR . '/View/templates/' . $template . '.php';

        if(!file_exists($file)){
            throw new Exception('Não foi possível encontrar o template ' . $template);
        }

        require_once $file;
    }
}