<%--
  Created by IntelliJ IDEA.
  User: lgustavogomdam
  Date: 16/08/2023
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>AllocVideo - Home</title>
  <link rel="stylesheet" href="./assets/css/index.css" />
  <link rel="stylesheet" href="./assets/css/common.css" />
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
                  src="./assets/img/2564674-PhotoRoom.png-PhotoRoom.png"
                  alt="logotipo"
                  class="logotipo_img"
          />
          <a class="navbar-brand" href="#">AllocVideo</a>
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
          <a class="nav-link" aria-current="page" href="./cadastrar_ator.jsp"
          >Cadastrar Ator</a>
          <a class="nav-link" href="./cadastrar_classe.jsp">Cadastrar Classe</a>
        </div>
      </div>
    </div>
  </nav>
</header>

<main class="container-main">

  <!--========================================| Tabela AtorEntity |=========================================-->

  <table class="table table-striped tabela-ator">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome do Ator</th>
      <th scope="col">Opções</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <th scope="row">1</th>
      <td class="td-content">Mark</td>
      <td class="td-option">
        <div class="icones">
          <button
                  type="button"
                  class="btn btn-secondary"
          >Excluir</button>
          <!-- Button trigger modal -->
          <button
                  type="button"
                  class="btn btn-primary"
                  data-bs-toggle="modal"
                  data-bs-target="#modalAtor"
          >Editar</button>

          <!-- Modal -->
          <div
                  class="modal fade"
                  id="modalAtor"
                  tabindex="-1"
                  aria-labelledby="exampleModalLabel"
                  aria-hidden="true"
          >
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="modal-ator">
                    Edição de Ator
                  </h1>
                  <button
                          type="button"
                          class="btn btn-primary"
                          data-bs-dismiss="modal"
                          aria-label="Close"
                  >X</button>
                </div>
                <div class="modal-body">
                  <form action="" class="form-ator" method="post" name="formAtor">
                    <div class="form-container">
                      <div class="content">
                        <label for="primeiro-nome">Primeiro nome do Ator:</label>
                        <br>
                        <input type="text" class="form-control" name="primeiro-nome" placeholder="" aria-label="First name" required>

                        <label for="ultimo-nome">Segundo nome:</label>
                        <br>
                        <input type="text" class="form-control" name="ultimo-nome" placeholder="" aria-label="Last name" required>
                      </div>
                    </div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button
                          type="button"
                          class="btn btn-secondary"
                          data-bs-dismiss="modal"
                  >
                    Close
                  </button>
                  <button
                          type="button"
                          class="btn btn-primary">
                    Save changes
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </td>
    </tr>
    </tbody>
  </table>

  <!--========================================| Tabela Classe |=========================================-->

  <table class="table table-striped tabela-classe">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome da Classe</th>
      <th scope="col">Valor</th>
      <th scope="col">Data de Devolução</th>
      <th scope="col">Opções</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <th scope="row">1</th>
      <td class="td-content">Mark</td>
      <td class="td-content">R$ 000,00</td>
      <td class="td-content">dd/mm/yyyy</td>
      <td class="td-option">
        <div class="icones">
          <button
                  type="button"
                  class="btn btn-secondary"
          >Excluir</button>
          <!-- Button trigger modal -->
          <button
                  type="button"
                  class="btn btn-primary"
                  data-bs-toggle="modal"
                  data-bs-target="#modalClasse"
          >Editar</button>

          <!-- Modal -->
          <div
                  class="modal fade"
                  id="modalClasse"
                  tabindex="-1"
                  aria-labelledby="exampleModalLabel"
                  aria-hidden="true"
          >
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="modal-classe">
                    Edição de Classe
                  </h1>
                  <button
                          type="button"
                          class="btn btn-primary"
                          data-bs-dismiss="modal"
                          aria-label="Close"
                  >X</button>
                </div>
                <div class="modal-body">
                  <form action="" class="form-classe" method="post">
                    <div class="form-container">
                      <div class="content">
                        <label for="primeiro-nome">Nome da Classe:</label>
                        <br>
                        <input type="text" class="form-control" name="primeiro-nome" placeholder="" aria-label="Primeiro nome" required>

                        <label for="ultimo-nome">Valor:</label>
                        <br>
                        <input type="number" class="form-control" name="valor" placeholder="" aria-label="Valor" required>

                        <label for="Data">Data de Devolução:</label>
                        <br>
                        <input type="date" class="form-control" name="Data" placeholder="" aria-label="Data" required>
                      </div>
                    </div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button
                          type="button"
                          class="btn btn-secondary"
                          data-bs-dismiss="modal"
                  >
                    Close
                  </button>
                  <button
                          type="button"
                          class="btn btn-primary">
                    Save changes
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </td>
    </tr>
    </tbody>
  </table>

</main>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"
></script>
</body>
</html>
