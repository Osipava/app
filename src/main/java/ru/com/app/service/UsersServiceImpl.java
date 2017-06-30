package ru.com.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.com.app.dao.UsersDao;
import ru.com.app.model.UsersEntity;

import java.util.List;

/**
 * Created by User on 30.06.2017.
 */
@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    UsersDao usersDao;
    public void addUsersEntity(UsersEntity usersEntity) {
        usersDao.addUsersEntity(usersEntity);
    }

    public void editUsersEntity(UsersEntity usersEntity) {
usersDao.editUsersEntity(usersEntity);
    }

    public List<UsersEntity> getUsersEntityByName(String name) {
        return usersDao.getUsersEntityByName(name);
    }

    public void deleteUsersEntity(int id) {
usersDao.deleteUsersEntity(id);
    }

    public UsersEntity getUsersEntityById(int id) {
        return usersDao.getUsersEntityById(id);
    }

    public List<UsersEntity> getUsersEntityByPage(int pageid, int total) {
        return usersDao.getUsersEntityByPage(pageid, total);
    }
}
