package model.Service;

import model.Entity.Cart;
import model.Entity.User;

import java.sql.*;

public class UserServiceImpl implements IUserService {

    private static final String SELECT_PASSWORD_BY_USERNAME = "select password from USER where username = ?;";
    private static final String INSERT_NEW_USER = "INSERT INTO USER VALUES (?,?,?,?,?,?,?);";
    private static final String UPDATE_USERS_SQL = "";

    @Override
    public void addNewUser(User newUser) {
        try (Connection connection = DBConnection.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_NEW_USER)) {
            preparedStatement.setString(1, newUser.getUserName());
            preparedStatement.setString(2, newUser.getPassword());
            preparedStatement.setString(3, newUser.getFirstName());
            preparedStatement.setString(4, newUser.getLastName());
            preparedStatement.setString(5, newUser.getEmail());
            preparedStatement.setString(6, newUser.getAddress());
            preparedStatement.setInt(7, newUser.getCartId());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            DBConnection.printSQLException(e);
        }
    }

    @Override
    public boolean getPasswordByUsername(String userName, String login_pwd) {
        try (Connection connection = DBConnection.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PASSWORD_BY_USERNAME);) {
            preparedStatement.setString(1, userName);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            String pwd = "";
            while (rs.next()) {
                pwd = rs.getString("password");
            }

            return login_pwd.equals(pwd);
        }
        catch (SQLException e) {
            DBConnection.printSQLException(e);
            return false;
        }

    }

    @Override
    public void updateUserInfo(User userChangeInfo) {

    }

    @Override
    public void updateUserPassword(User userChangePassword) {

    }
}
