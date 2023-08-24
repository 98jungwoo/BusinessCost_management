package woo.cost.mgmt.login.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import woo.cost.mgmt.admin.model.AdminDTO;
import woo.cost.mgmt.login.model.LoginDAO;

@Service
public class LoginServiceImp implements LoginService {
	private static final Logger logger = LoggerFactory.getLogger(LoginServiceImp.class);

	private final LoginDAO loginDAO;

	@Autowired
	public LoginServiceImp(LoginDAO loginDAO) {
		this.loginDAO = loginDAO;
	}

	// 로그인을 실행하기 위한 메서드
	@Override
	public AdminDTO login(AdminDTO adminDTO, HttpServletRequest request, HttpServletResponse response) {
		logger.info("■■■■■ LoginServiceImp ■■■■■ login");
		
		adminDTO = loginDAO.login(adminDTO);

		HttpSession httpSession = request.getSession();
		if (adminDTO == null) {
			return null;

		} else {

			httpSession.setAttribute("userID", adminDTO.getUserID());
			httpSession.setAttribute("adminName", adminDTO.getAdminName());
			httpSession.setAttribute("company", adminDTO.getCompany());
			logger.info("■■■3■■■ 로그인 서비스  세션 " + httpSession);

			Cookie userIDCookie = new Cookie("userID", adminDTO.getUserID());
			userIDCookie.setMaxAge(60 * 60 * 24);
			userIDCookie.setPath("/");
			response.addCookie(userIDCookie);
			logger.info("■■■4■■■ 로그인 서비스  쿠키 " + response + " ///// " + userIDCookie);

			Cookie adminNameCookie = new Cookie("adminName", adminDTO.getAdminName());
			adminNameCookie.setMaxAge(60 * 60 * 24);
			adminNameCookie.setPath("/");
			response.addCookie(adminNameCookie);
			logger.info("■■■5■■■ 로그인 서비스  쿠키 " + response + " ///// " + adminNameCookie);

			Cookie companyCookie = new Cookie("company", adminDTO.getCompany());
			companyCookie.setMaxAge(60 * 60 * 24);
			companyCookie.setPath("/");
			response.addCookie(companyCookie);
			logger.info("■■■6■■■ 로그인 서비스  쿠키 " + response + " ///// " + companyCookie);

			return adminDTO;
		}
	}

	// 로그아웃메서드
	@Override
	public void AdminDTO(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession(false);

		// 세션에 값이 있다면 초기화 해라
		if (session != null) {
			logger.info("■■■1■■■ 로그아웃 서비스  세션 초기화 전 " + session);
			session.invalidate();
			logger.info("■■■2■■■ 로그아웃 서비스  세션 초기화 후 " + session);
		}

		Cookie[] cookies = request.getCookies();

		// 쿠키에 값이 있다면
		if (cookies != null) {
			logger.info("■■■3■■■ 로그아웃 서비스 쿠키 초기화 전 " + cookies);
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("userID") || cookie.getName().equals("adminName")
						|| cookie.getName().equals("company")) {
					cookie.setMaxAge(0); // 쿠키수명을 0으로 초기화 한다.
					cookie.setPath("/");
					response.addCookie(cookie);
				}
			}
			logger.info("■■■4■■■ 로그아웃 서비스 쿠키 초기화 후 " + cookies);
		}
	}

}
