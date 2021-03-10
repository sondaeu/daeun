package ani.project.hotel.Interceptor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class UpdateInterctptor extends HandlerInterceptorAdapter{
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(UpdateInterctptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
		LOGGER.info("== Handle 가로챔");
		HttpSession session = request.getSession();		
		String id = (String) session.getAttribute("SessionId");
		System.out.println(id);
		if(id == null || id == "") {
			response.setHeader("Content-Type", "text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print("<head>" + "<meta charset='UTF-8'>" + "</head>");
			out.print("<script>alert('세션이 만료되었습니다.');</script>");
			out.print("<script>location.href='/hotel/main/aniHotel'</script>");			
		}
		return true;
	}
	
}
