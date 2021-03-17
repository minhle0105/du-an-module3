package model.Service;

import model.Entity.User;

public interface IUserService {

    void addNewUser(User newUser);

    boolean getPasswordByUsername(String userName, String login_pwd);

    void updateUserInfo (User userChangeInfo);

    void updateUserPassword (User userChangePassword);


}
