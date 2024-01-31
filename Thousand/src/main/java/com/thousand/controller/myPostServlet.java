package com.thousand.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thousand.dao.ThousandDAO;
import com.thousand.dto.PostDTO;

@WebServlet("/myPost.do")
public class myPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public myPostServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "mypage/myPost.jsp";
		ThousandDAO tDao = ThousandDAO.getInstance();
		HttpSession session=request.getSession();
		/********페이징 처리 시작****************************************/
		Map<String, Object> map = new HashMap<String , Object>();
		
		//한페이지에 보여줄 게시물 갯수
		 int pagePerSize = 6;
		//페이징 범위 갯수
		 int blockPage =5;
		 /*페이징 범위 구하기*/
		 
		/***********페이징 처리 끝 ********************************************/
		//디버깅
		//String id = "gijung93";
		//session.setAttribute("loginId", id);
		//String pw = request.getParameter("pw");
		List<PostDTO> myPostList =tDao.selectMyPost((String)session.getAttribute("loginId"));
		request.setAttribute("myPostList", myPostList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
