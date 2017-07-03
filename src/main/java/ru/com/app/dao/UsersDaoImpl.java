package ru.com.app.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.com.app.model.UsersEntity;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
@Transactional
public class UsersDaoImpl implements UsersDao {

    @Autowired
    private SessionFactory sessionFactory;

    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    public void addUsersEntity(UsersEntity usersEntity) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(usersEntity);

    }

    public void editUsersEntity(UsersEntity usersEntity) {
        Session session = sessionFactory.getCurrentSession();
        session.update(usersEntity);
    }


    public List<UsersEntity> getUsersEntityByName(String name) {

        org.hibernate.query.Query<UsersEntity> query = sessionFactory.getCurrentSession().createQuery("from  UsersEntity where name like :NAME", UsersEntity.class);
        query.setParameter("NAME", "%" + name + "%");
        return query.list();
    }


    public void deleteUsersEntity(int id) {
        Session session = sessionFactory.getCurrentSession();
        UsersEntity usersEntity = (UsersEntity) session.get(UsersEntity.class, id);
        session.delete(usersEntity);
    }


    public UsersEntity getUsersEntityById(int id) {
        Session session = sessionFactory.getCurrentSession();
        UsersEntity usersEntity = (UsersEntity) session.get(UsersEntity.class, id);
        return usersEntity;
    }

    public List<UsersEntity> getUsersEntityByPage(int pageid, int total) {
        String sql = "select * from users limit " + (pageid - 1) + "," + total;
        return template.query(sql, new RowMapper<UsersEntity>() {
            public UsersEntity mapRow(ResultSet rs, int row) throws SQLException {
                UsersEntity e = new UsersEntity();
                e.setId(rs.getInt(1));
                e.setName(rs.getString(2));
                e.setAge(rs.getInt(3));
                e.setIsAdmin(rs.getBoolean(4));
                e.setCreated(rs.getTimestamp(5));

                return e;
            }
        });
    }
}
