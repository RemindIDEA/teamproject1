package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.dto.CategoryDTO;
import com.dto.LikepostDTO;
import com.dto.MemberDTO;
import com.dto.PostDTO;

public class ThousandDAO {
	
	private ThousandDAO() {
	}
	
	private static ThousandDAO instance = new ThousandDAO();
	
	public static ThousandDAO getInstance() {
		return instance;
	}
	
	// DBCP 커넥션
	public Connection getConnection() throws Exception{
		Connection conn=null;
		Context initContext=new InitialContext();
		Context envContext=(Context)initContext.lookup("java:/comp/env");
		DataSource ds=(DataSource)envContext.lookup("jdbc/myoracle");
		conn=ds.getConnection();
		return conn;
	}
	
/* 포스팅 ***********************************************/
	//전체글 수 조회
	public void selectCount() {
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
		String sql="select userid from member where id=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) { // userid가 있는 경우
				result=1;
			}else { // userid가 없는 경우
				result=-1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) {
					rs.close();
				}
				if(pstmt!=null) {
					pstmt.close();
				}
				if(conn!=null) {
					conn.close();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
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
	// 카테고리 조회
	public void selectCategory(CategoryDTO cDTO) {
	}
	
	// 카테고리 수정
	public void updateCategory(CategoryDTO cDTO) {
		
	}
/* 카테고리.end ***********************************************/
	
	
/* 좋아요 ***********************************************/
	// 좋아요 조회
	public void selectLike(LikepostDTO lpDTO) {
	}
	
	// 좋아요 수정
	public void updateLike(LikepostDTO lpDTO) {
	}
/* 좋아요.end ***********************************************/
	
	
}

