<?php include SRC_DIR . '/View/includes/header.php'; ?>

<div class="container">
  <main>
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="/public/img/logo.jpg" alt="" width="80">
      <h2>Cadastro de Alunos</h2>
    </div>

    <div class="row">
        <div class="col-md-12">
        <form class="needs-validation" method="post" action="/alunos/create">
          <div class="row">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">Nome Completo</label>
              <input type="text" class="form-control" id="firstName" placeholder="">
            </div>

            <div class="col-sm-6">
              <label for="email" class="form-label">E-mail</label>
              <input type="email" class="form-control" id="email" placeholder="">
            </div>

            <div class="col-sm-12" style="text-align: center; margin:20px 0;">
              <button class="btn btn-primary btn-lg" type="submit">Cadastrar</button>
            </div>
          </div> 
        </form>
      </div>
    </div>
  </main>
</div>

<?php include SRC_DIR . '/View/includes/footer.php'; ?>