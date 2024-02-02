package com.thousand.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thousand.dao.ThousandDAO;

@WebServlet("/findId.do")
public class findIdServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    public findIdServlet() {
        super();
    }
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      RequestDispatcher dispatcher=request.getRequestDispatcher("mypage/findId.jsp");
      dispatcher.forward(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      
      // 값 받기
      String id=request.getParameter("id");
      String email=request.getParameter("email");
      
      //
      ThousandDAO tDao=ThousandDAO.getInstance();
      int result=tDao.searchId(id,email);
      
      //
      request.setAttribute("id", id);
      request.setAttribute("email", email);
      
      HttpSession session=request.getSession();
      if(result==1) {
         session.setAttribute("UserEmail", email);
         request.setAttribute("message", "일치하는 아이디는 "+ id +"입니다.");
         
         // ID를 찾았을 경우 로그인 페이지로 이동
         RequestDispatcher dispatcher=request.getRequestDispatcher("mypage/login.jsp");
         dispatcher.forward(request, response);
      }else {
         request.setAttribute("message", "일치하는 아이디가 존재하지 않습니다.");
         
         // ID를 찾지 못했을 경우 아이디찾기 페이지
         RequestDispatcher dispatcher=request.getRequestDispatcher("mypage/findid.jsp");
         dispatcher.forward(request, response);
      }
   }

}