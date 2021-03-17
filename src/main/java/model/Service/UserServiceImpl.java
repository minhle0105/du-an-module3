package model.Service;

import model.Entity.Cart;
import model.Entity.User;

import java.sql.*;

public class UserServiceImpl implements IUserService {
    private String jdbcURL = "jdbc:mysql://localhost:3306/HTMSHOE?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "new_password";

    private static final String SELECT_PASSWORD_BY_USERNAME = "select password from USER where username = ?;";
    private static final String INSERT_NEW_USER = "INSERT INTO USER VALUES (?,?,?,?,?,?,?);";
    private static final String UPDATE_USERS_SQL = "";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

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

    @Override
    public void addNewUser(User newUser) {
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_NEW_USER)) {
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
            printSQLException(e);
        }
    }

    @Override
    public boolean getPasswordByUsername(String userName, String login_pwd) {
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PASSWORD_BY_USERNAME);) {
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
            printSQLException(e);
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
