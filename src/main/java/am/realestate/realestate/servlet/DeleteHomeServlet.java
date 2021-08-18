package am.realestate.realestate.servlet;

import am.realestate.realestate.manager.HomeManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/deleteHome")
public class DeleteHomeServlet extends HttpServlet {

    private HomeManager homeManager = new HomeManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int homeId = Integer.parseInt(req.getParameter("id"));
        homeManager.deleteHome(homeId);
        req.getSession().setAttribute("msg", "home was removed");
        resp.sendRedirect("serv");
    }

}
