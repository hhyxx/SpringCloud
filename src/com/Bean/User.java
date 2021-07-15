package com.Bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;


public class User implements Serializable {
    public static final String NAMESPACE = "username";
    public static final String RECYCLE = "recycle";

    private int id;
    private String username;
    private String password;
    private String countSize;
    private String totalSize;

    public User() {}

    public User(String username, String password, String countSize, String totalSize) {
        this.username = username;
        this.password = password;
        this.countSize = countSize;
        this.totalSize = totalSize;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", countSize='" + countSize + '\'' +
                ", totalSize='" + totalSize + '\'' +
                '}';
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

    public String getCountSize() {
        return countSize;
    }

    public void setCountSize(String countSize) {
        this.countSize = countSize;
    }

    public String getTotalSize() {
        return totalSize;
    }

    public void setTotalSize(String totalSize) {
        this.totalSize = totalSize;
    }
}
