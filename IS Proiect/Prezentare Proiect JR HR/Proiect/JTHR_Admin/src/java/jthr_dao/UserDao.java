package jthr_dao;

import jthr_util.SQLdb;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import jthr_model.User;

/**
 *
 * @author Alex Cozma, Sabrina Ghip
 */
public class UserDao {

    private SQLdb db;

    public UserDao() 
    {
        db  = new SQLdb();
        db.Connect();
    }
    
    public void done()
    {
        db.closeConnection();
    }
    
    public void AddUser(User user) 
    {
        String sql = "INSERT INTO jthr_admin.users (username, firstname, "
                + "lastname, phone, cellphone, email, userfunction, rolelist, "
                + "description, password) VALUES ('"  + user.getUsername() 
                + "', '" + user.getFirstName() + "', '" + user.getLastName() 
                + "', '" + user.getPhone()     + "', '" + user.getCellPhone() 
                + "', '" + user.getEmail()     + "', '" + user.getUserFunction()
                + "', '" + user.getRoleList()  + "', '" + user.getDescription()
                + "', '" + user.getPassword()  + "');";
        this.db.executeSQL(sql);
    }

    public void editUser(User user) 
    {
        String sql = "UPDATE jthr_admin.users SET username = '" + user.getUsername() 
                + "', firstname = '" + user.getFirstName() 
                + "', lastname = '" + user.getLastName() 
                + "', password = '" + user.getPassword() 
                + "', phone = '" + user.getPhone() 
                + "', cellphone = '" + user.getCellPhone() 
                + "', email = '" + user.getEmail() 
                + "', userfunction = '" + user.getUserFunction() 
                + "', rolelist = '" + user.getRoleList() 
                + "', description = '" + user.getDescription() 
                + "' WHERE userid = " + user.getId();
        this.db.executeSQL(sql);
    }

    public void deleteUser(int userId) 
    {
        String sql = "DELETE FROM jthr_admin.users WHERE userid = " + userId;
           this.db.executeSQL(sql);
    }

    public User getUser(int userId) 
    {
        User user = null;
        String sql = "SELECT * FROM jthr_admin.users WHERE userid = " + userId;
        this.db.executeSQL(sql);
        ResultSet result = this.db.getResult();
        try {
            while(result.next()){
            user = new User(result.getInt("userid"),result.getString("username"),
                    result.getString("password"),result.getString("firstname"),
                    result.getString("lastname"),result.getString("phone"),result.getString("cellphone"),
                    result.getString("email"),result.getString("userfunction"),result.getString("rolelist"),
                    result.getString("description") );
                    return user; // the first only
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public User getUser(String username) throws NullPointerException
    {
        User user;
        String sql = "SELECT * FROM jthr_admin.users WHERE username = '" + username + "'";
        this.db.executeSQL(sql);
        ResultSet result = this.db.getResult();
        try {
            while(result.next()){
            user = new User(result.getInt("userid"),result.getString("username"),
                    result.getString("password"),result.getString("firstname"),
                    result.getString("lastname"),result.getString("phone"),result.getString("cellphone"),
                    result.getString("email"),result.getString("userfunction"),result.getString("rolelist"),
                    result.getString("description") );
            return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public User getUserExcept(String username, int id)
    {
        User user;
        String sql = "SELECT * FROM jthr_admin.users WHERE username = '" + username + "' and id != " + id;
        this.db.executeSQL(sql);
        ResultSet result = this.db.getResult();
        try {
            while(result.next()){
            user = new User(result.getInt("userid"),result.getString("username"),
                    result.getString("password"),result.getString("firstname"),
                    result.getString("lastname"),result.getString("phone"),result.getString("cellphone"),
                    result.getString("email"),result.getString("userfunction"),result.getString("rolelist"),
                    result.getString("description") );
            return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public User getUser(String firstname, String lastname)
    {
        User user;
        String sql = "SELECT * FROM jthr_admin.users WHERE firstname like '" + firstname + 
                "' AND lastname like '" + lastname + "'";
        this.db.executeSQL(sql);
        ResultSet result = this.db.getResult();
        try {
            while(result.next()){
            user = new User(result.getInt("userid"),result.getString("username"),
                    result.getString("password"),result.getString("firstname"),
                    result.getString("lastname"),result.getString("phone"),result.getString("cellphone"),
                    result.getString("email"),result.getString("userfunction"),result.getString("rolelist"),
                    result.getString("description") );
            return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public List<User> getAllUsers() 
    {
        User user;
        List<User> userlst = new ArrayList();
        String sql = "SELECT * FROM users; ";
        this.db.executeSQL(sql);
        try {
            ResultSet result = this.db.getResult();
            while(result.next())
            {
                user = new User(result.getInt("userid"),result.getString("username"),
                    result.getString("password"),result.getString("firstname"),
                    result.getString("lastname"),result.getString("phone"),result.getString("cellphone"),
                    result.getString("email"),result.getString("userfunction"),result.getString("rolelist"),
                    result.getString("description") );
                userlst.add(user);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userlst;
    }
    
    
    
}
