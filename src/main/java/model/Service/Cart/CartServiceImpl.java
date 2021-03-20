package model.Service.Cart;

import model.Entity.Cart;
import model.Service.DBConnection;

import java.sql.*;

public class CartServiceImpl {

    private static final String INSERT_CART_SQL = "INSERT INTO cart(shipfee,amount,productid)values(?,?,?);";
    private static final String DELETE_CART_SQL = "DELETE FROM cart where id=?;";
    private static final String UPDATE_CART_SQL = "UPDATE cart set shipfee=?,amount=?,productid=? where id=?;";
    private static final String SELECT_CART_BYID = "SELECT * from cart where id=?;";
    private static final String SELECTALL_CART_BYID = "SELECT * from cart;";

    public CartServiceImpl(){}
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

    public void insertCart(Cart cart) throws SQLException {
        try {
            Connection connection = DBConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CART_SQL);
            preparedStatement.setDouble(1,cart.getShipFee());
            preparedStatement.setDouble(2, cart.getTotalAmount());
            preparedStatement.executeUpdate();
        }catch (SQLException e) {
            printSQLException(e);
        }
    }
    public Cart selectById(int id){
        Cart cart = null;
        try {
            Connection connection = DBConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CART_BYID);
            preparedStatement.setInt(1,id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                double shipfee = rs.getDouble("shipfee");
                double amount = rs.getDouble("amount");
            }
        }catch (SQLException e) {
            printSQLException(e);
        }
        return cart;
    }
}
