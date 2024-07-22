package sandro.website.config;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 登陆拦截器
 * 需要实现spring提供的HandlerInterceptor接口
 */
public class LoginHandlerInterceptor implements HandlerInterceptor {

    /**
     * return true,放行;
     *        false；不放行
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //登陆成功后，应该有用户的session，如果存在

        // 获取请求的完整URL
        StringBuffer requestURL = request.getRequestURL();
        String requestURI = request.getRequestURI();
        String queryString = request.getQueryString();
        System.out.println("requestURL : " + requestURL.toString()
                + " , requestURI : " + requestURI
                + (queryString == null?" ,no queryString":(" ,queryString: " + queryString)));

        Object user = request.getSession().getAttribute("loginUser");
        if(user == null){
            request.setAttribute("msg","请重新登陆");
            //重定向页面
            request.getRequestDispatcher("/login.html").forward(request,response);
            return true;
        }
        return true;
    }


}
