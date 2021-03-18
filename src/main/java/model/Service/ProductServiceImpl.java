package model.Service;

import model.Entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements IProductService{
    private static final String INSERT_NEW_PRODUCT = "INSERT INTO product VALUES (?,?,?,?,?,?);";
    private static final String DELETE_PRODUCT = "DELETE FROM product where id=?;";
    private static final String UPDATE_PRODUCT_SQL = "UPDATE product set productname=?,quantity=?,price=?,discount=?,categoryid=? where id=?;";
    private static final String SELECT_ALLPRODUCT = "SELECT * from product;";
    private static final String SELECTPRODUCT_BYID = "SELECT * from product WHERE id=?;";


    @Override
    public void insertProduct(Product product) throws SQLException {
        try {
            Connection connection = DBConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_NEW_PRODUCT);
            preparedStatement.setInt(1, product.getProductId());
            preparedStatement.setString(2, product.getProductName());
            preparedStatement.setInt(3, product.getProductQuantity());
            preparedStatement.setDouble(4, product.getProductPrice());
            preparedStatement.setDouble(5, product.getDiscount());
            preparedStatement.setInt(6, product.getCategoryId());
            preparedStatement.executeUpdate();
        }catch (SQLException ex){
            DBConnection.printSQLException(ex);
        }
    }

    @Override
    public Product selectProduct(int id) throws SQLException {
        Product product = null;
        try {
            Connection connection = DBConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECTPRODUCT_BYID);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()){
                String productname = rs.getString("productname");
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                double discount = rs.getDouble("discount");
                int categoryid = rs.getInt("categoryid");
                product = new Product(id,productname,quantity,price,discount,categoryid);
            }
        }catch (SQLException ex){
            DBConnection.printSQLException(ex);
        }
        return product;
    }

    @Override
    public List<Product> selectAllProduct() throws SQLException {
        List<Product> list = new ArrayList<>();
        try {
            Connection connection = DBConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALLPRODUCT);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()){
                int id = rs.getInt("productid");
                String productname = rs.getString("productname");
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                double discount = rs.getDouble("discount");
                int categoryid = rs.getInt("categoryid");
                list.add(new Product(id,productname,quantity,price,discount,categoryid));
            }
        }catch (SQLException ex){
            DBConnection.printSQLException(ex);
        }
        return list;
    }

    @Override
    public boolean deleteProduct(int id) throws SQLException {
        boolean delete = false;
        try {
            Connection connection = DBConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_PRODUCT);
            preparedStatement.setInt(1,id);
            delete = preparedStatement.executeUpdate()>0;
        }catch (SQLException ex){
            DBConnection.printSQLException(ex);
        }
        return delete;
    }

    @Override
    public boolean updateProduct(Product product) throws SQLException {
        return false;
    }
}
