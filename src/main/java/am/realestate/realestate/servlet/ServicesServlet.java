package am.realestate.realestate.servlet;

import am.realestate.realestate.manager.HomeManager;
import am.realestate.realestate.model.Home;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/serv")
public class ServicesServlet extends HttpServlet {

   private HomeManager homeManager =  new HomeManager();
       @Override
       protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
           List<Home> homes = homeManager.getHome();
           req.setAttribute("serv", homes);
        req.getRequestDispatcher("/WEB-INF/services.jsp").forward(req, resp);
    }
}
