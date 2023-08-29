package io.github.lgustavogomdam.projeto_video_locadora.controller;

import io.github.lgustavogomdam.projeto_video_locadora.model.dto.AtorDTO;
import io.github.lgustavogomdam.projeto_video_locadora.service.AtorService;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class AtorController extends HttpServlet {
    private AtorService service;

    public AtorController(){
        this.service = new AtorService();
    }

    public void init() {

    }

    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        response.setContentType("text/html");
//
//        // Hello
//        PrintWriter out = response.getWriter();
//        out.println("<html><body>");
//        out.println("<h1>" + message + "</h1>");
//        out.println("</body></html>");

        String metodo = request.getParameter("metodo");

        switch(metodo){
            case "POST":
                AtorDTO model = new AtorDTO(
                        request.getParameter("primeiro-nome"),
                        request.getParameter("ultimo_nome"));

                model = service.save(model);

                if(model == null)
                    throw new RuntimeException("Ator não cadastrado!");
            break;
            case "GET":
                System.out.println("É GET");
            break;
            case "PUT":
                System.out.println("É PUT");
            break;
            case "DELETE":
                System.out.println("É DELETE");
            break;
        }
    }

    public void destroy() {
    }
}