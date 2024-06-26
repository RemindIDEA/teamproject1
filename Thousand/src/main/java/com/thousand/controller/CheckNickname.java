package com.thousand.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thousand.service.LoginService;
import com.thousand.service.LoginServiceImpl;

/**
 * Servlet implementation class checkNickname
 */
@WebServlet("/checkNickname.do")
public class CheckNickname extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public CheckNickname() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // 한글 깨짐방지
		String nickname = request.getParameter("nickname");
		LoginService loginService = LoginServiceImpl.getInstance();
		request.setAttribute("nickname", nickname);
		request.setAttribute("result", loginService.confirmNickname(nickname));

		RequestDispatcher dispatcher=request.getRequestDispatcher("mypage/checkNickname.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}


}
