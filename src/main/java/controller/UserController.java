package controller;

import model.Entity.Cart;
import model.Entity.User;
import model.Service.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

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
            response.sendRedirect("trang-chu.jsp");
        }
        else {
            response.sendRedirect("login.jsp");
        }
    }

    public void signupUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String userName = request.getParameter("signup_userName");
        String userPassword = request.getParameter("signup_pwd");
        String userFirstName = request.getParameter("signup_firstName");
        String userLastName = request.getParameter("signup_lastName");
        String email = request.getParameter("signup_email");
        String address = request.getParameter("signup_address");
        Cart newCart = new Cart();
        User newUser = new User(userName, userPassword, userFirstName, userLastName, email, address, newCart.getCartId());
        userService.addNewUser(newUser);
        response.sendRedirect("/signup3.jsp");
    }
}
