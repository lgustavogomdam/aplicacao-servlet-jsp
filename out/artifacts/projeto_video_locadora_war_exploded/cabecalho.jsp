<%--
  Created by IntelliJ IDEA.
  User: gugag
  Date: 29/08/2023
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <a class="nav-link" aria-current="page" href="./cadastrar_ator.jsp"
                    >Cadastrar Ator</a>
                    <a class="nav-link" href="./cadastrar_classe.jsp">Cadastrar Classe</a>
                </div>
            </div>
        </div>
    </nav>
</header>
