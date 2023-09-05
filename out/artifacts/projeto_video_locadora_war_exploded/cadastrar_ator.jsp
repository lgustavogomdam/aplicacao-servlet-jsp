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
<%@include file="cabecalho.jsp"%>

<main class="container-main">
  <div class="form-header">
    <h2>Cadastro de Ator</h2>
  </div>
  <form action="ator-controller" class="formulario" method="post">
    <div class="form-container">
      <div class="content">
        <input type="hidden" name="metodo" value="POST">

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
