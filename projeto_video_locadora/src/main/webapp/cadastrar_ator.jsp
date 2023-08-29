<%--
  Created by IntelliJ IDEA.
  User: lgustavogomdam
  Date: 16/08/2023
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>AllocVideo - Cadastrar Ator</title>
  <link rel="stylesheet" href="assets/css/common.css" />
  <link rel="stylesheet" href="assets/css/cadastrar.css" />
  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
          crossorigin="anonymous"
  />
</head>
<body>
<header class="header container-fluid">
  <nav class="navbar navbar-expand-lg">
    <div class="container-fluid d-flex justify-content-between">
      <div class="container-logotipo">
        <div>
          <img
                  src="assets/img/2564674-PhotoRoom.png-PhotoRoom.png"
                  alt="logotipo"
                  class="logotipo_img"
          />
          <a class="navbar-brand" href="index.jsp">AllocVideo</a>
        </div>
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-link" aria-current="page" href="cadastrar_ator.jsp"
          >Cadastrar Ator</a
          >
          <a class="nav-link" href="cadastrar_classe.jsp">Cadastrar Classe</a>
        </div>
      </div>
    </div>
  </nav>
</header>
<main class="container-main">
  <div class="form-header">
    <h2>Cadastro de Ator</h2>
  </div>
  <form action="hello-servlet" class="formulario" method="post">
    <div class="form-container">
      <div class="content">
        <input type="hidden" name="metodo" value="GET">

        <label for="primeiro_nome">Primeiro nome do Ator:</label>
        <br>
        <input type="text" class="form-control" name="primeiro_nome" placeholder="" aria-label="Primeiro nome" required>

        <label for="ultimo_nome">Segundo nome:</label>
        <br>
        <input type="text" class="form-control" name="ultimo_nome" placeholder="" aria-label="Ultimo nome" required>
      </div>
      <input type="submit" class="btn btn-primary">
    </div>
  </form>
  <div class="form-footer">

  </div>
</main>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"
></script>
</body>
</html>
