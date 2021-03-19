package controller;

import model.Entity.Cart;
import model.Entity.User;
import model.Service.User.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UserControlloer", urlPatterns = "/users")
public class UserController extends HttpServlet {
    private UserServiceImpl userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("ac");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "login" -> loginUser(request, response);
                case "signup" -> signupUser(request, response);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void loginUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String userName = request.getParameter("login_userName");
        String userPassword = request.getParameter("login_pwd");
        boolean correctUserInfo = userService.getPasswordByUsername(userName, userPassword);
        if (correctUserInfo) {
            if (userName.equals("admin") && userPassword.equals("admin")){
                response.sendRedirect("/productController");
            }else {

                response.sendRedirect("quanlytaikhoan.jsp");
            }
        }
        else {
            response.sendRedirect("login.jsp");
        }
    }
    private void listUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<User> listUser = userService.selectAllUser();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("quanlytaikhoan.jsp");
        dispatcher.forward(request, response);
    }

    public void signupUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String userName = request.getParameter("signup_userName");
        String userPassword = request.getParameter("signup_pwd");
        String userFirstName = request.getParameter("signup_firstName");
        String userLastName = request.getParameter("signup_lastName");
        String email = request.getParameter("signup_email");
        String address = request.getParameter("signup_address");
        Cart newCart = new Cart(1,2000,2000);
        User newUser = new User(userName, userPassword, userFirstName, userLastName, email, address, newCart.getCartId());
        userService.addNewUser(newUser);
        response.sendRedirect("signup3.jsp");
    }
}
