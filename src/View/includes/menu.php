<nav id="navbar-example" class="navbar navbar-default navbar-static">
      <div class="container-fluid">
        <div class="navbar-header">
          <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-example-js-navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Menu</a>
        </div>
        <div class="collapse navbar-collapse bs-example-js-navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a id="drop1" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                Alunos
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu" aria-labelledby="drop1">
                <li><a href="alunos/cadastrar">Cadastrar</a></li>
                <li><a href="alunos/listar">Listar</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a id="drop2" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                Treinos
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu" aria-labelledby="drop2">
                <li><a href="treinos/cadastrar">Cadastrar</a></li>
                <li><a href="treinos/listar">Listar</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a id="drop2" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                Exercícios
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu" aria-labelledby="drop2">
                <li><a href="exercicios/cadastrar">Cadastrar</a></li>
                <li><a href="exercicios/listar">Listar</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.nav-collapse -->
      </div><!-- /.container-fluid -->
    </nav>