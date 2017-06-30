package ru.com.app.service;

import ru.com.app.model.UsersEntity;

import java.util.List;

/**
 * Created by User on 30.06.2017.
 */
public interface UsersService {
    public void addUsersEntity(UsersEntity usersEntity);

    public void editUsersEntity(UsersEntity usersEntity);

    public List<UsersEntity> getUsersEntityByName(String name);

    public void deleteUsersEntity(int id);

    public UsersEntity getUsersEntityById(int id);

    public List<UsersEntity> getUsersEntityByPage(int pageid, int total);
}
