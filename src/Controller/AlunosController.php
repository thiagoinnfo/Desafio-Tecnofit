<?php
namespace Src\Controller;

class AlunosController extends Controller{

    public function index()
    {
        $this->render('alunos/index');
    }
}