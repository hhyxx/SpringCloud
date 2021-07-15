package com.Controller;

import com.Bean.User;
//import com.Service.FileService;
import com.Service.FileService;
import com.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private FileService fileService;

    /**
     * 登录
     * @param request - 存储当前用户信息到请求域
     * @param user - 登陆页面传来，用于查询验证
     * @return
     */
    @RequestMapping("/login")
    public String login(HttpServletRequest request, User user){
        User exsitUser = userService.findUser(user);
        if(exsitUser != null){
            HttpSession session = request.getSession();
            session.setAttribute(User.NAMESPACE, exsitUser.getUsername());
            session.setAttribute("totalSize", exsitUser.getTotalSize());
            return "redirect:/index.action";
        }else{
            request.setAttribute("msg", "用户名或密码错误");
            return "login";
        }
    }
    /**
     * 注册
     *
     * @param request
     * @param user - 注册的用户
     * @return
     */
    @RequestMapping("/regist")
    public String regist(HttpServletRequest request, User user){
        if(user.getUsername() == null || user.getPassword() == null){
            return "regist";
        }else{
            boolean isSuccess = userService.addUser(user);
            if(isSuccess){
                fileService.addNewNameSpace(user.getUsername());
                return "login";
            }else{
                request.setAttribute("msg", "注册失败");
                return "regist";
            }
        }
    }

    /**
     * 登出
     *
     * @param request
     * @return - 退出登陆
     */
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "redirect:/user/login.action";
    }


}