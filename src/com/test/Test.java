package com.test;

import com.Bean.User;
import com.Dao.UserDao;
import com.Service.UserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import java.io.InputStream;

//@Component
public class Test {
//    @Autowired
//    private UserDao userDao;

    public static void main(String[] args) throws Exception {

        ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringDao.xml");
        UserDao userDao =  (UserDao)ctx.getBean("userDao");

//        System.out.println(userService.testget("1234"));


        System.out.println(userDao.findUserByUserName("1234"));
    }
}
