package jthr_model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



/**
 *
 * @author Ioana Bugner
 */

public class User {
    private int id;
    private String username;
    private String password;
    private String firstName;
    private String lastName;
    private String phone; 
    private String cellPhone;
    private String email;
    private String userFunction;
    private String roleList;
    private String description;

    public User(){
        
    }

    public User(int id,String username,String password,String firstName,
            String lastName,String phone,String cellPhone,String email,
            String userFunction,String roleList,String description){
        this.id = id;
        this.username = username;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.cellPhone = cellPhone;
        this.email = email;
        this.userFunction = userFunction;
        this.roleList = roleList;
        this.description = description;
    }

    public User(String firstName, String lastName, String phone, String cellPhone, String email, String userFunction, String roleList, String description) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.cellPhone = cellPhone;
        this.email = email;
        this.userFunction = userFunction;
        this.roleList = roleList;
        this.description = description;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCellPhone() {
        return cellPhone;
    }

    public void setCellPhone(String cellPhone) {
        this.cellPhone = cellPhone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserFunction() {
        return userFunction;
    }

    public void setUserFunction(String userFunction) {
        this.userFunction = userFunction;
    }

    public String getRoleList() {
        return roleList;
    }

    public void setRoleList(String roleList) {
        this.roleList = roleList;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
    
    
}
