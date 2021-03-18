package controller;

import model.Entity.Product;
import model.Service.Product.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProductController", urlPatterns = "/productController")
public class ProductController extends HttpServlet {
    private ProductServiceImpl productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("ac");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create" -> showAddForm(request, response);
                case "delete" -> deleteProduct(request, response);
                case "update" -> showEditForm(request,response);
                default -> showProduct(request,response);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("ac");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create" -> insertProduct(request,response);
            case "delete" -> deleteProduct(request, response);
            case "update" -> updateProduct(request,response);
        }
    }
    private void showAddForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("Product/createproduct.jsp");
        dispatcher.forward(request,response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("idupdate"));
        Product product = productService.selectProductById(id);
        request.setAttribute("product",product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Product/editproduct.jsp");
        dispatcher.forward(request,response);
    }

    private void insertProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int idProduct = Integer.parseInt(request.getParameter("idProduct"));
        String nameProduct = request.getParameter("nameProduct");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        double discount = Double.parseDouble(request.getParameter("discount"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Product product = new Product(idProduct,nameProduct,quantity,price,discount,categoryId);
        try {
            productService.insertProduct(product);
            response.sendRedirect("/productController");

        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
    }
    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("iddelete"));
        try {
            productService.deleteProduct(id);
            response.sendRedirect("/productController");
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
    }
    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("idproduct"));
        String nameProduct = request.getParameter("nameProduct");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        double discount = Double.parseDouble(request.getParameter("discount"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Product product = new Product(id,nameProduct,quantity,price,discount,categoryId);
        try {
            productService.updateProduct(product,id);
            response.sendRedirect("/productController");
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
    }
    private void showProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<Product> list = productService.selectAllProduct();
        request.setAttribute("listProduct",list);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Product/quanlysanpham.jsp");
                dispatcher.forward(request,response);
    }
}
