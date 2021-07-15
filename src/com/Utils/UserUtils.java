package com.Utils;

import com.Bean.User;
import org.springframework.util.DigestUtils;

import javax.servlet.http.HttpServletRequest;

public class UserUtils {

    public static String getUsername(HttpServletRequest request){
        return (String) request.getSession().getAttribute(User.NAMESPACE);
    }

    // 对用户密码实现 MD5 加密
    public static String MD5(String password){
        if(password!=null){
            // 密码通过 MD5 加密
            return DigestUtils.md5DigestAsHex(password.getBytes()).toUpperCase();
        }else{
            return null;
        }
    }
}
