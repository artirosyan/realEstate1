package am.realestate.realestate.servlet;

import am.realestate.realestate.manager.HomeManager;
import am.realestate.realestate.model.Home;
import am.realestate.realestate.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.IOException;

@WebServlet(urlPatterns = "/addHome")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class AddHomeServlet extends HttpServlet{
    private static final String UPLOAD_DIR = "D:\\realEstate\\src\\main\\webapp\\img\\";
        private HomeManager homeManager = new HomeManager();

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            req.getRequestDispatcher("/WEB-INF/addHome.jsp").forward(req, resp);
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            User user = (User) req.getSession().getAttribute("user");

            Part filePart = req.getPart("picture");
            String fileName = filePart.getSubmittedFileName();
            String picUrl = System.currentTimeMillis() + "_" + fileName;
            filePart.write(UPLOAD_DIR + picUrl);
            String description = req.getParameter("description");
            int phoneNumber = Integer.parseInt(req.getParameter("phoneNumber"));
            String addres = req.getParameter("addres");
            int rooms = Integer.parseInt(req.getParameter("rooms"));
            int price = Integer.parseInt(req.getParameter("price"));

            Home home = Home.builder()
                    .addres(addres)
                    .rooms(rooms)
                    .price(price)
                    .description(description)
                    .phoneNumber(phoneNumber)
                    .picUrl(picUrl)
                    .user(user)
                    .build();

            homeManager.addHome(home);
            req.getSession().setAttribute("msg", "home was added");
            resp.sendRedirect("addHome");

        }
}
