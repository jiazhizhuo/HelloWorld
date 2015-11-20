package web.aspect;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

@Aspect
//@Component ?? 这个注解怎么用， 
public class MyAspectJ {
	public MyAspectJ() {
		System.out.println("Loading＝＝Class AspectJ");
	}
	
	@Pointcut("execution(* web.controller.Controller.toLogging(..))")
	public void loginAccess(){}
	
	
	
	@Before("web.aspect.MyAspectJ.loginAccess() && "
			+ "args(id,password,session,request,response,..)")
	public void doAccessCheck(String id, String password,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		System.out.println("==doAccessCheck==");
		System.out.println("id= "+id);
		System.out.println("password= "+password);
		// TODO 校验之后如何跳转？？？  aop 无法跳转？  使用filter？ 或者spring的 intercepter？
		return ;
	}
}
