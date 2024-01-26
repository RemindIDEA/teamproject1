package com.thousand.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.thousand.dto.CategoryDTO;
import com.thousand.dto.LikepostDTO;
import com.thousand.dto.MemberDTO;
import com.thousand.dto.PostDTO;

public class ThousandDAO {
	
	private ThousandDAO() {
	}
	
	private static ThousandDAO instance = new ThousandDAO();
	
	public static ThousandDAO getInstance() {
		return instance;
	}
	
	
/* 포스팅 ***********************************************/
	//전체글 수 조회
	public void selectCount() {
	}
	
	//전체글 불러오기 
	public List<PostDTO> selectPostsAll(){
		List<PostDTO> list = new ArrayList<PostDTO>();
		return list;
	}
	
	//글 작성
	public void createPost(PostDTO pDTO) {
	}
	
	// 글 조회
	public void selectPost(PostDTO pDTO) {
	}
	
	// 글 수정
	public void updatePost(PostDTO pDTO) {
	}
	
	// 글 삭제
	public void deletePost(PostDTO pDTO) {
	}
	

/* 포스팅.end ***********************************************/
	
	
/* 멤버 ***********************************************/
	//회원 가입
	public void createMember(MemberDTO mDTO) {
	}
	
	// 회원 조회
	public void selectMember(MemberDTO mDTO) {
	}
	
	// 회원 정보 수정
	public void updateMember(MemberDTO mDTO) {
	}
	
	// 회원 탈퇴
	public void deleteMember(MemberDTO mDTO) {
	}
	
	//id 중복 체크
	public int confirmId(String id) {
		int result=-1;
		return result;
	}
	
	//pw 중복체크
	public void confirmPw(MemberDTO mDTO) {
	}
	
	// 마이페이지 접근 시, pw 확인
	public void checkPw(MemberDTO mDTO) {
	}
	
	// 비밀번호 찾기
	public void searchPw(MemberDTO mDTO) {
	}
	
	// id 찾기
	public void searchId(MemberDTO mDTO) {
	}
/* 멤버.end ***********************************************/
	

/* 카테고리 ***********************************************/
	// 카테고리 입력
	public void insertCategory() {
	}
	
	// 카테고리 조회
	public void selectCategory(CategoryDTO cDTO) {
	}
	
	// 카테고리 수정
	public void updateCategory(CategoryDTO cDTO) {
		
	}
/* 카테고리.end ***********************************************/
	
	
/* 좋아요 ***********************************************/
	//좋아요 눌렀는지 체크 함수
	public int checkLike() {
		int check = 0;
		return 0;
	}
	
	// 좋아요 조회 -> counting 하기
	public void selectLike(LikepostDTO lpDTO) {
	}
	
	// 좋아요 정보 넣기
	public void insertLike() {
		
	}
	
	// 좋아요 수정
	public void updateLike(LikepostDTO lpDTO) {
	}
/* 좋아요.end ***********************************************/
	
	/* 당일 조회수  ***********************************************/
	// 당일 조회수 기록하기 
	public void insertTodayReadcount() {
	}
	
	// 당일 조회수 불러오기
	public void selectTodayReadcount() {
	}
	/* 당일 조회수.end ***********************************************/
	
}

