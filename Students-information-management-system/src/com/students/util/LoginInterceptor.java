package com.students.util;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class LoginInterceptor {

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void init() {
		// TODO Auto-generated method stub
		
	}

	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("test");
		Map session=arg0.getInvocationContext().getSession();
		if(session.get("login")==null)
			return "deny";
		else{
			return arg0.invoke();//进入下一个拦截器，或者执行action0
		}
		
	}
}
