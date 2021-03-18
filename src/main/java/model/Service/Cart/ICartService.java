package model.Service.Cart;

import model.Entity.Cart;

import java.sql.SQLException;
import java.util.List;

public interface ICartService {
    void insertCart(Cart cart) throws SQLException;
    Cart selectCart(int id) throws SQLException;
    List<Cart> selectAllCart(int id) throws SQLException;
    boolean deleteCart(int id) throws SQLException;
    boolean updateCart(Cart cart) throws SQLException;
}
