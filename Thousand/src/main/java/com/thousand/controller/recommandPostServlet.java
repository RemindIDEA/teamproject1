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

@WebServlet("/recommandPost.do")
public class recommandPostServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    public recommandPostServlet() {
        super();
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      /* 오늘의 검색 */
      try {
            ThousandDAO tDao = ThousandDAO.getInstance();
            List<PostDTO> todayTopSearch = tDao.todayTopSearch();
            request.setAttribute("todayTopSearch", todayTopSearch);
            RequestDispatcher dispatcher = request.getRequestDispatcher("recommandPost.jsp");
            dispatcher.forward(request, response);
      }catch(Exception e) {
         e.printStackTrace();
      }
      /* 오늘의 검색.end */
      
      /* 메뉴별 추천 */
      try {
            ThousandDAO tDao = ThousandDAO.getInstance();
            List<PostDTO> menuRecommand = tDao.menuRecommand();
            request.setAttribute("menuRecommand", menuRecommand);
            RequestDispatcher dispatcher = request.getRequestDispatcher("recommandPost.jsp");
            dispatcher.forward(request, response);
      }catch(Exception e) {
         e.printStackTrace();
      }
      /* 메뉴별 추천.end */
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

   }

}