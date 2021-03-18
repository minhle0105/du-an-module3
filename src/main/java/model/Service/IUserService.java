package model.Service;

import model.Entity.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {

    void addNewUser(User newUser);

    boolean getPasswordByUsername(String userName, String login_pwd);

    void updateUserInfo (User userChangeInfo);

    void updateUserPassword (User userChangePassword);

    List<User> selectAllUser() throws SQLException;
}
