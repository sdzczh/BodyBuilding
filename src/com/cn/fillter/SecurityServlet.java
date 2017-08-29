package com.cn.fillter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SecurityServlet extends HttpServlet implements Filter{
	 private static final long serialVersionUID = 1L;

	    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2) throws IOException, ServletException {
	           HttpServletRequest request=(HttpServletRequest)arg0;   
	           HttpServletResponse response  =(HttpServletResponse) arg1;    
	           String count =  (String) request.getSession().getAttribute("account");
	           String url=request.getRequestURI();   
	           if(url.indexOf("login")<0){
		           if(count==null || "".equals(count) ) {      
		                    response.sendRedirect(request.getContextPath()+"/login.jsp");
		            }else{
		            	arg2.doFilter(arg0, arg1);   
		            }
		           
	           }else{
	        	   arg2.doFilter(arg0, arg1);   
	           }
	           if(url.contains(".css") || url.contains(".js") || url.contains(".png")){
	        	   arg2.doFilter(arg0, arg1);
	           }
	           
	    }
	    public void init(FilterConfig arg0) throws ServletException {
	    }

}
