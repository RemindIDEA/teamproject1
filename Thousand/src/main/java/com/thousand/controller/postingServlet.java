package com.thousand.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.thousand.dao.ThousandDAO;
import com.thousand.dto.CategoryDTO;
import com.thousand.dto.PostDTO;

@WebServlet("/posting.do")
public class postingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public postingServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get방식으로 정보가 넘어올 시 posting.jsp 로 보내서 정보 넣고 post로 넘겨서 실행시킬 것
		RequestDispatcher dispatcher =request.getRequestDispatcher("mypage/posting.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//넘겨온 정보에 한글이 있을 시 깨지는 것을 방지하기 위함
		request.setCharacterEncoding("UTF-8");
		
		//정보받아오기 위한 객체 생성
		ServletContext context = getServletContext();
		String path = context.getRealPath("upload");
		String encType = "UTF-8";
		int sizeLimit = 20 * 1024 * 1024;
		MultipartRequest multi = new MultipartRequest(request,path,sizeLimit, encType, new DefaultFileRenamePolicy());
		//아이디 정보받기
		String id = multi.getParameter("id");
		// 정보 받아오기 - 게시글 정보
		String title = multi.getParameter("title");
		String summary = multi.getParameter("summary");
		String mainimg = multi.getFilesystemName("mainimg");
		//레시피 정보
		String recipe = multi.getParameter("recipe");				
		String local = multi.getParameter("local");
		String item = multi.getParameter("item");
		//요리순서 받아오기
		String content1 = multi.getParameter("content1");		//재료
		
		String content2 = multi.getParameter("content2");		//요리순서 1~10까지
		String content3 = multi.getParameter("content3");
		String content4 = multi.getParameter("content4");
		String content5 = multi.getParameter("content5");
		String content6 = multi.getParameter("content6");
		String content7 = multi.getParameter("content7");
		String content8 = multi.getParameter("content8");
		String content9 = multi.getParameter("content9");
		String content10 = multi.getParameter("content10");
		String content11 = multi.getParameter("content11");
		
		String produceImg2 = multi.getFilesystemName("produceImg2");
		String produceImg3 = multi.getFilesystemName("produceImg3");
		String produceImg4 = multi.getFilesystemName("produceImg4");
		String produceImg5 = multi.getFilesystemName("produceImg5");
		String produceImg6 = multi.getFilesystemName("produceImg6");
		String produceImg7 = multi.getFilesystemName("produceImg7");
		String produceImg8 = multi.getFilesystemName("produceImg8");
		String produceImg9 = multi.getFilesystemName("produceImg9");
		String produceImg10 = multi.getFilesystemName("produceImg10");
		String produceImg11 = multi.getFilesystemName("produceImg11");
		
		//글 등록 전 카테고리 우선 등록
		CategoryDTO cDto = new CategoryDTO();
		cDto.setRecipe(recipe);		//선택한 카테고리 각각 넣어주기
		cDto.setLocal(local);
		cDto.setItem(item);

		//dao instance 가져오기
		ThousandDAO tDao = ThousandDAO.getInstance();
		//카테고리 객체를 통해 카테고리 입력하기
		//추가로 입력한 카테고리 번호 받아오기
		tDao.insertCategory(cDto);		
		int categorycode = tDao.choiceCategoryCode();
		
		//불러온 정보 전체 저장 
		PostDTO pDto = new PostDTO();
		pDto.setId(id);
		pDto.setTitle(title);
		pDto.setSummary(summary);
		pDto.setCategorycode(categorycode);		//위에서 받아온 카테고리 코드(가장최신)꺼 등록
		pDto.setContent1(content1);
		pDto.setContent2(content2);
		pDto.setProduceImg2(produceImg2);
		pDto.setContent3(content3);
		pDto.setProduceImg3(produceImg3);
		pDto.setContent4(content4);
		pDto.setProduceImg4(produceImg4);
		pDto.setContent5(content5);
		pDto.setProduceImg5(produceImg5);
		pDto.setContent6(content6);
		pDto.setProduceImg6(produceImg6);
		pDto.setContent7(content7);
		pDto.setProduceImg7(produceImg7);
		pDto.setContent8(content8);
		pDto.setProduceImg8(produceImg8);
		pDto.setContent9(content9);
		pDto.setProduceImg9(produceImg9);
		pDto.setContent10(content10);
		pDto.setProduceImg10(produceImg10);
		pDto.setContent11(content11);
		pDto.setProduceImg11(produceImg11);
		
		tDao.insertPost(pDto);		//정보가 저장된 객체를 넘겨서 insert해주기
		
		//방금 작성한 게시글 번호 받아오기.
		int pno = tDao.selectInsertingPost(categorycode);
		String url;
		
		//pno가 0이면 게시글 못찾았음 -> 글쓰기 실패
		if(pno!= 0) {		//작성한 글 게시글번호를 가져오면 view로 넘겨주기
			request.setAttribute("pno", pno);		
			url = "viewPost.do";		//글 작성이 완료되면 자기가 작성한 글로 보여주기
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}else {		//게시글 작성이 실패할 경우 메인으로 돌아가기
			url = "main.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
	}

}
