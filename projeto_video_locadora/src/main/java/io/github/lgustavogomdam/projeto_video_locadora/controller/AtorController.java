package io.github.lgustavogomdam.projeto_video_locadora.controller;

import io.github.lgustavogomdam.projeto_video_locadora.model.dto.AtorDTO;
import io.github.lgustavogomdam.projeto_video_locadora.model.entities.AtorEntity;
import io.github.lgustavogomdam.projeto_video_locadora.service.AtorService;

import java.io.*;
import java.util.List;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.ws.rs.core.Response;

@WebServlet(name = "atorController", value = "/ator-controller")
public class AtorController extends HttpServlet {
    private AtorService service;

    public AtorController(){
        this.service = new AtorService();
    }

    public void init() {

    }

    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String metodo = request.getParameter("metodo");

        AtorDTO model = new AtorDTO(
                request.getParameter("primeiro_nome"),
                request.getParameter("ultimo_nome"));

        switch(metodo){
            case "POST":

                System.out.println("Fazendo POST");
                model = service.save(model);

                if(model == null)
                    throw new RuntimeException("Ator não cadastrado!");

                emitirMensagem(response, "Ator cadastrado com sucesso, volte para a pagina principal");

            break;
            case "GET/ALL":
                System.out.println("Fazendo GET");

                List<AtorDTO> listaDeAtores = this.service.getAll();


            break;
            case "PUT":

                System.out.println("Fazendo PUT");

                model.setId(Long.parseLong(request.getParameter("id-ator")));

                model = service.update(model);

                emitirMensagem(response, "Ator alterado com sucesso, volte para a pagina principal");

                if(model == null)
                    throw new RuntimeException("Ator não cadastrado!");
            break;
            case "DELETE":
                System.out.println("Fazendo DELETE");

                model.setId(Long.parseLong(request.getParameter("id-ator")));

                if(this.service.delete(model))
                    emitirMensagem(response, "Elemento deletado com sucesso!");

            break;
        }
    }

    private HttpServletResponse emitirMensagem(HttpServletResponse response, String mensagem) throws IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head>" +
                "  <meta charset=\"utf-8\" />\n" +
                "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n" +
                "  <title>AllocVideo - Home</title>\n" +
                "  <link rel=\"stylesheet\" href=\"src/main/webapp/assets/css/index.css\" />\n" +
                "  <link rel=\"stylesheet\" href=\"src/main/webapp/assets/css/common.css\" />\n" +
                "  <link\n" +
                "          href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css\"\n" +
                "          rel=\"stylesheet\"\n" +
                "          integrity=\"sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9\"\n" +
                "          crossorigin=\"anonymous\"\n" +
                "  />" +
                "</head>");
        out.println("<body>");
        out.println("" +
                "<main class=\"container-main\">\n" +
                "<h1 style='color: #000;'>" + mensagem + "</h1>");
        out.println("</body>");
        out.println("</html>");

        return response;
    }

    public void destroy() {
    }
}