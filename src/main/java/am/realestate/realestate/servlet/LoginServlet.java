package am.realestate.realestate.servlet;


import am.realestate.realestate.manager.UserManager;
import am.realestate.realestate.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    UserManager userManager = new UserManager();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = userManager.getUserByEmailAndPassword(email, password);
        if(user == null){
            req.getSession().setAttribute("msg", "Wrong username or password");
            resp.sendRedirect("contact");
        } else {
            req.getSession().setAttribute("user", user);
            resp.sendRedirect("addHome");
        }

    }

}
