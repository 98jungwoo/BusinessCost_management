package woo.cost.mgmt.login.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	private static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("■■■■■■ interceptor postHandel ■■■■■■");
		HttpSession httpSession = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		
		//로그인 컨트롤러에서 model.addAttribute("adminDTO", adminDTO); 이렇게 모델에 담아줬기 때문에 이름을 adminDTO 로 해야되는거임
		Object adminDTO = modelMap.get("adminDTO");
		
		if (adminDTO != null) {
			logger.info("■■■■■■ interceptor new login success ■■■■■■");
			httpSession.setAttribute(LOGIN, adminDTO);
			response.sendRedirect("/main/index");
		}

	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession httpSession = request.getSession();
		
		// 기존의 로그인 정보 제거
		if (httpSession.getAttribute(LOGIN) != null) {
			logger.info("■■■■■■ clear login data before ■■■■■■");
			httpSession.removeAttribute(LOGIN);
		}
		
		return true;
	}
}

