package com.thousand.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thousand.dao.ThousandDAO;

@WebServlet("/postDelete.do")
public class postDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public postDeleteServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//pno를 통해 글정보 삭제하기
		int pno = -1;
		pno = Integer.parseInt(request.getParameter("pno"));
		if(pno != -1) {
			ThousandDAO tDao = ThousandDAO.getInstance();
			//pno로 글 삭제하기
			tDao.deletePost(pno);
			//삭제후 메인페이지로 보내주기
			RequestDispatcher dispatcher = request.getRequestDispatcher("main.do");		
			dispatcher.forward(request, response);
		}else {
			//받아온 글번호가 없을경우 -> 삭제 실패
			RequestDispatcher dispatcher = request.getRequestDispatcher("main.do");		//main으로 넘어가기
			dispatcher.forward(request, response);
		}
		//pno를 통해 글정보 삭제하기.end---------------
	}

}
