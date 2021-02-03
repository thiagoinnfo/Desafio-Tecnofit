<?php
namespace Src\Controller;

class Controller{

    protected function render($template, $data = null)
    {
        require_once SRC_DIR . '/View/templates/' . $template . '.php';
    }
}