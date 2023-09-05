<%@ page import="io.github.lgustavogomdam.projeto_video_locadora.model.entities.AtorEntity" %>
<%@ page import="io.github.lgustavogomdam.projeto_video_locadora.controller.AtorController" %>
<%@ page import="io.github.lgustavogomdam.projeto_video_locadora.service.AtorService" %>
<%@ page import="io.github.lgustavogomdam.projeto_video_locadora.repository.AtorRepository" %>
<%@ page import="java.util.List" %>
<%@ page import="io.github.lgustavogomdam.projeto_video_locadora.model.dto.AtorDTO" %>
<%@ page import="io.github.lgustavogomdam.projeto_video_locadora.service.ClasseService" %>
<%@ page import="io.github.lgustavogomdam.projeto_video_locadora.model.dto.ClasseDTO" %><%--
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
<%@include file="cabecalho.jsp"%>
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

      <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setDateHeader("Expires", 0); // Proxies.

        AtorService service = new AtorService();

        List<AtorDTO> lista = service.getAll();

        for (AtorDTO ator: lista) {

      %>
        <tr>
          <th scope="row"><%=ator.getId()%></th>
          <td class="td-content"><%=ator.getPrimeiroNome()+ " " + ator.getUltimoNome()%></td>
          <td class="td-option">
            <div class="icones">
              <form action="ator-controller" name="form-delete">
                <input type="hidden" name="metodo" value="DELETE">
                <input type="hidden" name="id-ator" value="<%=ator.getId()%>">
                <input
                        type="submit"
                        class="btn btn-secondary"
                        value="Excluir"
                >
              </form>
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
                      <form action="ator-controller" id="form-ator" class="form-ator" method="PUT" name="formAtor">
                        <div class="form-container">
                          <div class="content">
                            <input type="hidden" name="metodo" value="PUT">

                            <label for="id-ator">ID do Ator:</label>
                            <br>
                            <input type="number" class="form-control" name="id-ator" placeholder="<%=ator.getId()%>" enabled>
                            <label for="primeiro_nome">Primeiro nome do Ator:</label>
                            <br>
                            <input type="text" class="form-control" name="primeiro_nome" placeholder="<%=ator.getPrimeiroNome()%>" aria-label="First name" required>

                            <label for="ultimo_nome">Segundo nome:</label>
                            <br>
                            <input type="text" class="form-control" name="ultimo_nome" placeholder="<%=ator.getUltimoNome()%>" aria-label="Last name" required>
                            <input type="submit" class="btn btn-primary" value="Save changes" style="margin-left: 68.5%; margin-top: 28%" enabled>
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
                              class="btn"
                              style="background-color: #FFFFFF;
                                     color: #FFFFFF;
                                     opacity: 0;"
                              disabled
                      >
                        Save changes
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </td>
        </tr>
      <% }%>
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

    <%
      response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
      response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
      response.setDateHeader("Expires", 0); // Proxies.

      ClasseService classeService = new ClasseService();

      List<ClasseDTO> listaClasse = classeService.getAll();

      for (ClasseDTO classe: listaClasse) {

    %>
      <tr>
        <th scope="row">1</th>
        <td class="td-content"><%=classe.getNome()%></td>
        <td class="td-content"><%=classe.getValor()%></td>
        <td class="td-content"><%=classe.getDataDevolucao()%></td>
        <td class="td-option">
          <div class="icones">
            <form action="classe-controller" name="form-delete">
              <input type="hidden" name="metodo" value="DELETE">
              <input type="hidden" name="id-classe" value="<%=classe.getId()%>">
              <input type="hidden" name="nome" value="<%=classe.getNome()%>">
              <input type="hidden" name="valor" value="<%=classe.getValor()%>">
              <input type="hidden" name="data_devolucao" value="<%=classe.getDataDevolucao()%>">
              <input
                      type="submit"
                      class="btn btn-secondary"
                      value="Excluir"
              >
            </form>
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
                    <form action="classe-controller" class="form-classe" method="PUT">
                      <div class="form-container">
                        <div class="content">
                          <input type="hidden" name="metodo" value="PUT">

                          <label for="id-classe">ID da Classe:</label>
                          <br>
                          <input type="number" class="form-control" name="id-classe" placeholder="<%=classe.getId()%>" aria-label="id-classe" required>

                          <label for="nome">Nome da Classe:</label>
                          <br>
                          <input type="text" class="form-control" name="nome" placeholder="<%=classe.getNome()%>" aria-label="nome" required>

                          <label for="valor">Valor:</label>
                          <br>
                          <input type="text" class="form-control" name="valor" placeholder="<%=classe.getValor()%>" aria-label="Valor" required>

                          <label for="data">Data de Devolução:</label>
                          <br>
                          <input type="date" class="form-control" name="data_devolucao" placeholder="<%=classe.getDataDevolucao()%>" aria-label="data" required>
                          <input type="submit" class="btn btn-primary" value="Save changes" style="margin-left: 68.5%; margin-top: 28%" enabled>
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
    <% }%>
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
