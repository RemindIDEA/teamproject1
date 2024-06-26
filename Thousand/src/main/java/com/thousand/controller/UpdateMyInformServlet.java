package com.thousand.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thousand.dto.MemberDTO;
import com.thousand.service.LoginService;
import com.thousand.service.LoginServiceImpl;

@WebServlet("/updateMyInform.do")
public class UpdateMyInformServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateMyInformServlet() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		if(session.getAttribute("loginUser") ==null) {
			//로그인 되어 있을 시 메인으로 이동.
			RequestDispatcher dispatcher=request.getRequestDispatcher("index.do");
			dispatcher.forward(request, response);
		}
		String id = (String)session.getAttribute("loginUser");
		if(id.equals((String)session.getAttribute("loginUser"))) {
			//회원정보 가져와서 수정할 창으로 정보 전달
			LoginService loginService = LoginServiceImpl.getInstance();
			request.setAttribute("member", loginService.getMember(id));
			RequestDispatcher dispatcher=request.getRequestDispatcher("mypage/updateInform.jsp");
			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher=request.getRequestDispatcher("main.do");
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String email = request.getParameter("email");
		String nickname=request.getParameter("nickname"); 
		MemberDTO mDto=new MemberDTO();
		mDto.setId(id);
		mDto.setPw(pw);
		mDto.setEmail(email);
		mDto.setNickname(nickname);
		//수정 정보 저장하기
		LoginService loginService = LoginServiceImpl.getInstance();
		loginService.updateMember(mDto);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("main.do");
		dispatcher.forward(request, response);
	}
}