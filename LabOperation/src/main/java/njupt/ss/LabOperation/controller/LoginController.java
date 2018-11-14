package njupt.ss.LabOperation.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping(value="/")
public class LoginController {
    @RequestMapping(value="login")
    public String login(){
        return "modules/login/login";
    }

    @RequestMapping(value="doLogin")
    @ResponseBody
    public void doLogin(HttpServletRequest request, String identify, String username, String password, HttpServletResponse response){
        System.out.println("identify"+identify);
        String kaptchaExpected= (String) request.getSession().getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
        JSONObject object =new JSONObject();
        if (identify == null || !identify.equalsIgnoreCase(kaptchaExpected)){
           object.put("message","验证码错误");
           object.put("result",false);
        }
        else{
            object.put("result",true);
        }
        try {
            response.getWriter().print(object.toJSONString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value="toIndex")
    public String toIndex(){
        return "modules/sys/index";
    }
}
