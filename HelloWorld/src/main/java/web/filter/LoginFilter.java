package web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest httprequest = (HttpServletRequest)request;
		HttpServletResponse httpresponse = (HttpServletResponse)response;
		String path = httprequest.getContextPath();
//		httprequest.getpath
		String basePath = httprequest.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

		
		System.out.println("==doFilter==");
		System.out.println("=="+path+"==");
		System.out.println("=="+basePath+"==");
		
		if(httprequest.getSession().getAttribute("user")==null){
			httpresponse.sendRedirect(path+"/login.jsp");
			return ;
		}
		chain.doFilter(httprequest, httpresponse);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("==initFilter==");
		
	}

}
