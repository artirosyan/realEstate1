package am.realestate.realestate.servlet;


import am.realestate.realestate.manager.HomeManager;
import am.realestate.realestate.model.Home;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/singleHome")
public class SingleHomeServlet extends HttpServlet {

    private HomeManager homeManager = new HomeManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        Home home = homeManager.getHomeById(id);

        req.setAttribute("home", home);
        req.getRequestDispatcher("/WEB-INF/singleHome.jsp").forward(req, resp);
    }
}
