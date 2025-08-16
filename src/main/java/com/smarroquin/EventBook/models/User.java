package com.smarroquin.EventBook.models;

public class User {
    private int id;
    private String name;
    private String email;
    private String password;
    private String role;


    public User(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.role = "USER";
    }

    public User(long l, Object o) {
    }

    public User(long l, String name, String email, String password, String user) {
    }

    public int getId() {return id;}
        public String getName() {return name;}
        public String getEmail() {return email;}
        public String getPassword() {return password;}
        public String getRole() {return role;}

        public void setId(int id) {this.id = id;}
        public void setName(String name) {this.name = name;}
        public void setEmail(String email) {this.email = email;}
        public void setPassword(String password) {this.password = password;}
        public void setRole(String role) {this.role = role;}
}