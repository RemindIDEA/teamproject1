package com.thousand.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thousand.dao.ThousandDAO;
import com.thousand.dto.PostDTO;

@WebServlet("/viewPost.do")
public class viewPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public viewPostServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post(글쓰기 후) 자신이 작성한 글 보여주기 위한 부분---------------------------------------------------
		int pno = -1; 
		pno=Integer.parseInt(request.getParameter("pno"));
		if(pno != -1) {	//받아온 글번호가 있을경우
			ThousandDAO tDao = ThousandDAO.getInstance();		//dao 인스턴스 받아오기
			PostDTO pDto = new PostDTO();						//글 내용 받아올 객체 생성
			pDto = tDao.selectOnePost(pno);						//글번호로 해당 글 정보 가져오기
			request.setAttribute("pDto", pDto);					//받아온 객체 정보 request에 저장
			RequestDispatcher dispatcher = request.getRequestDispatcher("mainView/viewPost.jsp");		//viewpost로 넘어가기
			dispatcher.forward(request, response);
		}else {	//받아온 글번호가 없을경우
			RequestDispatcher dispatcher = request.getRequestDispatcher("main.do");		//main으로 넘어가기
			dispatcher.forward(request, response);
		}
		//post(글쓰기 후) 자신이 작성한 글 보여주기 위한 부분.end------------------------------------------------
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);	//post방식으로 넘어올때 get방식으로 넘겨서 처리
	}

}
