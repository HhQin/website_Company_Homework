package com.company.website.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FrontInterceptor implements HandlerInterceptor {

    /**
     * 进入controller层之前拦截请求
     * @param request
     * @param response
     * @param o
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {

        HttpSession session = request.getSession();
        if(session.getAttribute("job").equals("前台")){
            response.sendRedirect("/auth_failed");
            return true;
        }
        return true;
    }
}
