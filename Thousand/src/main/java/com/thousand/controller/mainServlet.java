package com.thousand.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thousand.dao.ThousandDAO;
import com.thousand.dto.PostDTO;



@WebServlet("/main.do")
public class mainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public mainServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//dao 객체색성
		ThousandDAO tDao =ThousandDAO.getInstance();
		//게시물목록조회
		List<PostDTO> postList= tDao.selectPostsAll();
		request.setAttribute("postList", postList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("mainView/index.jsp");
		dispatcher.forward(request, response);
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
