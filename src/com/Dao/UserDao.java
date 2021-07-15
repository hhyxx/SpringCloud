package com.Dao;


import org.apache.ibatis.annotations.Param;
import com.Bean.User;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

@Repository
public interface UserDao{

    User findUser(User user) throws Exception;

    void addUser(User user) throws Exception;

    void reSize(@Param("username") String username, @Param("countSize") String countSize) throws Exception;

    User findUserByUserName(String username) throws Exception;

    String getCountSize(String username) throws Exception;

}



