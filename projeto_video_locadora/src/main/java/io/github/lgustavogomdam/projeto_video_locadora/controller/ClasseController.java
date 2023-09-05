package io.github.lgustavogomdam.projeto_video_locadora.controller;

import io.github.lgustavogomdam.projeto_video_locadora.model.dto.ClasseDTO;
import io.github.lgustavogomdam.projeto_video_locadora.service.ClasseService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

@WebServlet(name = "classeController", value = "/classe-controller")
public class ClasseController extends HttpServlet {

    private ClasseService service = new ClasseService();
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String metodo = request.getParameter("metodo");

        ClasseDTO model = new ClasseDTO(
                request.getParameter("nome"),
                Double.parseDouble(request.getParameter("valor")),
                Date.valueOf(request.getParameter("data_devolucao")));

        switch(metodo){
            case "POST":

                System.out.println("Fazendo POST");
                model = service.save(model);

                if(model == null)
                    throw new RuntimeException("Classe não cadastrada!");

                emitirMensagem(response, "Classe cadastrada com sucesso, volte para a pagina principal");

                break;
            case "GET/ALL":
                System.out.println("Fazendo GET");

                List<ClasseDTO> listaDeClasses = this.service.getAll();


                break;
            case "PUT":

                System.out.println("Fazendo PUT");

                model.setId(Long.parseLong(request.getParameter("id-classe")));

                model = service.update(model);

                emitirMensagem(response, "Classe alterada com sucesso, volte para a pagina principal");

                if(model == null)
                    throw new RuntimeException("Classe não cadastrado!");
                break;
            case "DELETE":
                System.out.println("Fazendo DELETE");

                model.setId(Long.parseLong(request.getParameter("id-classe")));

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

    @Override
    public void destroy() {
        super.destroy();
    }

    @Override
    public void init() throws ServletException {
        super.init();
    }
}
