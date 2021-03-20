package model.Service.User;

import model.Entity.User;
import model.Service.DBConnection;
import model.Service.User.IUserService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserServiceImpl implements IUserService {

    private static final String SELECT_PASSWORD_BY_USERNAME = "select password from USER where username = ?;";
    private static final String INSERT_NEW_USER = "INSERT INTO USER VALUES (?,?,?,?,?,?,?);";
    private static final String UPDATE_USERS_SQL = "";
    private static final String SELECTALLUSER = "SELECT * FROM USER";


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

    @Override
    public List<User> selectAllUser() throws SQLException {
        List<User> list = new ArrayList<>();
        try {
            Connection connection = DBConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECTALLUSER);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()){
                String username = rs.getString("username");
                String password = rs.getString("password");
                String firstname = rs.getString("firstname");
                String lastname = rs.getString("lastname");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int cartid = rs.getInt("cartid");
                list.add(new User(username,password,firstname,lastname,email,address,cartid));
            }
        }catch (SQLException ex){
            DBConnection.printSQLException(ex);
        }
        return list;
    }
}
