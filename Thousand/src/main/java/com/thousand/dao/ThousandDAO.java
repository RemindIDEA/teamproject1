package com.thousand.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.thousand.dto.CategoryDTO;
import com.thousand.dto.LikepostDTO;
import com.thousand.dto.MemberDTO;
import com.thousand.dto.PostDTO;

import util.DBManager;

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
		String sql ="select * from post order by pno desc";
		List<PostDTO> list = new ArrayList<PostDTO>();
		Connection conn = null;
		PreparedStatement pstmt =null;
		ResultSet rs= null;
		try {
			conn=DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				PostDTO pDto = new PostDTO();
				pDto.setPno(rs.getInt("pno"));
				pDto.setMainimg(rs.getString("mainimg"));
				pDto.setTitle(rs.getString("title"));
				pDto.setSummary(rs.getString("summary"));
				pDto.setId(rs.getString("id"));
				pDto.setReadcount(rs.getInt("readcount"));
				list.add(pDto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	//글 작성
	public void insertPost(PostDTO pDTO) {
		//받아온 데이터 게시글 추가하기
		String sql = "insert into post(pno, id, title,summary,categorycode,mainimg"
				+ ",readcount,content1,content2,produceimg2,content3,produceimg3,content4,produceimg4,"
				+ "content5,produceimg5,content6,produceimg6,content7,produceimg7,content8,produceimg8,"
				+ "content9,produceimg9,content10,produceimg10,content11,produceimg11)"
				+ " values(post_seq.nextval,?,?,?,?,?,0,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pDTO.getId());
			pstmt.setString(2, pDTO.getTitle());
			pstmt.setString(3, pDTO.getSummary());
			pstmt.setInt(4, pDTO.getCategorycode());
			pstmt.setString(5,pDTO.getMainimg());
			for(int i=0; i<11; i++) {
				//컨텐츠 내용이 존재할 시에는 정보 넣고 아니면 null값 넣기
				if(pDTO.getContent()[i] != null) {
					pstmt.setString(i+6, pDTO.getContent()[i]);
				}else {
					pstmt.setString(i+6, null);
				}
				if(i == 10) {//index가 11일때 밑에 img코드는 생략
					break;
				}
				//사진 내용이 존재할 시에는 정보 넣고 아니면 null값 넣기
				if(pDTO.getProduceImg()[i] != null) {
					pstmt.setString(i+17, pDTO.getProduceImg()[i]);
				}else {
					pstmt.setString(i+17, null);
				}	
			}
			pstmt.executeUpdate();
			//입력한 후에 바로 입력한 카테고리 코드 확인해서 가져오기
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}

	//카테고리로 해당 글번호 조회하기
	public int selectInsertingPost(int categorycode) {
		int pno = 0;
		String sql="select pno from post where categorycode=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, categorycode);
			rs = pstmt.executeQuery();
			if(rs.next()) {   //받아온 자료가 있을 시
				pno=rs.getInt(1);   // 첫번째 값만 받아오면 됨. 내림차순이기에 최신글은 가장 높은 숫자.
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return pno;
	}

	// 글 조회 (글번호로 해당 글 조회)
	public PostDTO selectOnePost(int pno) {
		//리턴 해줄 dto 생성
		PostDTO pdto = new PostDTO();
		//글번호로 글 가져올 쿼리문
		String sql = "select * from post where pno=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		//content랑 produceimg에 정보 넣기위한 배열
		String[] content = new String[11];
		String[] produceImg = new String[10];
		try {
			//db 연결 밑 ?값 셋팅
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rs = pstmt.executeQuery();
			if(rs.next()) {   //받아온 자료가 있을 시
				//생성한 객체에 해당 자료 전부 집어넣기.
				pdto.setPno(rs.getInt("pno"));
				pdto.setId(rs.getString("id"));
				pdto.setTitle(rs.getString("title"));
				pdto.setSummary(rs.getString("summary"));
				pdto.setCategorycode(rs.getInt("category"));
				pdto.setMainimg(rs.getString("mainimg"));
				pdto.setReadcount(rs.getInt("readcount"));
				//바로 집어넣을수 없어서 임시 배열에 값 넣기
				for(int i = 0; i < 11; i++) {
					content[i] =  rs.getString("content"+Integer.toString(i));
				}
				for(int i = 0; i < 10; i++) {
					produceImg[i] =  rs.getString("produceImg"+Integer.toString(i));
				}
				//임시배열값으로 세팅하기
				pdto.setContent(content);
				pdto.setProduceImg(produceImg);
				pdto.setPostdate(rs.getTimestamp("postdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return pdto;
	}

	// 글 수정
	public void updatePost(PostDTO pDTO) {
		//받아온 데이터 게시글 수정하기
		String sql = "update post set title=?, summary=?, categorycode=?, mainimg=? "
				+ "content1=?, content2=?, content3=?, content4=?, content5=?, content6=?, "
				+ "content7=?, content8=?, content9=?, content10=?, content11=?, "
				+ "produceimg2 =?, produceimg3 =?, produceimg4 =?, produceimg5 =?, produceimg6 =?, "
				+ "produceimg7 =?, produceimg8 =?, produceimg9 =?, produceimg10 =?, produceimg11 =? "
				+ "where pno=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pDTO.getTitle());
			pstmt.setString(2, pDTO.getSummary());
			pstmt.setInt(3, pDTO.getCategorycode());
			pstmt.setString(4,pDTO.getMainimg());
			for(int i=0; i<11; i++) {
				//컨텐츠 내용이 존재할 시에는 정보 넣고 아니면 null값 넣기
				if(pDTO.getContent()[i] != null) {
					pstmt.setString(i+5, pDTO.getContent()[i]);
				}else {
					pstmt.setString(i+5, null);
				}
				if(i == 10) {//index가 11일때 밑에 img코드는 생략
					break;
				}
				//사진 내용이 존재할 시에는 정보 넣고 아니면 null값 넣기
				if(pDTO.getProduceImg()[i] != null) {
					pstmt.setString(i+16, pDTO.getProduceImg()[i]);
				}else {
					pstmt.setString(i+16, null);
				}
			}
			pstmt.setInt(26, pDTO.getPno());
			pstmt.executeUpdate();
			//입력한 후에 바로 입력한 카테고리 코드 확인해서 가져오기
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 글 삭제
	public void deletePost(int pno) {
		String sql = "delete post where pno=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			//삭제 실행
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}

	//내가 작성한글 조회
	public List<PostDTO> selectMyPost(String id){
		//작성자 id 값으로 작성한 글 불러오기, post 테이블 member 테이블 조인해서 작성자 닉네임 값 불러오기
		String sql ="select  post.pno , post.mainimg, post.title,member.nickname, post.summary , post.readcount"
				+ " from post inner join member"
				+ " on post.id= member.id"
				+ " where member.id = ? " ;
		//조회된 post 넣어줄 배열생성
		List<PostDTO> list = new ArrayList<PostDTO>();
		Connection conn = null;
		PreparedStatement pstmt =null;
		ResultSet rs= null;
		try {
			conn = DBManager.getConnection();
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs =  pstmt.executeQuery();
			//작성한 글이 없을 때 까지 조회
			while(rs.next()) {
				PostDTO pDto = new PostDTO();
				pDto.setPno(rs.getInt("pno"));
				pDto.setMainimg(rs.getString("mainimg"));
				pDto.setTitle(rs.getString("title"));
				pDto.setSummary(rs.getString("summary"));
				pDto.setId(rs.getString("nickname"));
				pDto.setReadcount(rs.getInt("readcount"));
				list.add(pDto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	public void plusReadCount(int pno) {
		String sql = "update post set readcount=readcount+1 where pno=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			//조회수 +1 기록
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	/* 포스팅.end ***********************************************/


	/* 멤버 ***********************************************/
	//회원 가입
	public void createMember(MemberDTO mDTO) {
	}

	// 회원 조회
	public int selectMember(String id , String pw) {
		int result = -1;  //result 기본값 -1
		String sql=" select pw from member where id =?";
		Connection conn = null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		try {
			//db연결 
			conn= DBManager.getConnection();
			//동적 쿼리 생성
			pstmt = conn.prepareStatement(sql);
			// 동적쿼리에  id값 세팅
			pstmt.setString(1, id);
			// 쿼리문 실행
			rs = pstmt.executeQuery();
			//id 값 존재하면
			if(rs.next()) {
				//비밀번호 값이 null이 아니다   그리고  입력한 pw워드가 맞다면
				if(rs.getString("pw")!=null && rs.getString("pw").equals(pw)) {
					result = 1;
					//비밀번호가 틀리면
				}else {
					result =0;
				}
				//id가 존재하지 않으면
			}else {
				result = -1;
			}

		}catch(Exception e){
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		// 1:pw일치, 0:pw불일치, -1:id없음 
		return result; 
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
	// 카테고리 입력
	public void insertCategory(CategoryDTO cDTO) {
		//분류 3가지 집어넣기
		String sql = "insert into category values(category_seq.nextval,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cDTO.getRecipe());
			pstmt.setString(2, cDTO.getLocal());
			pstmt.setString(3, cDTO.getItem());
			pstmt.executeUpdate();
			//입력한 후에 바로 입력한 카테고리 코드 확인해서 가져오기
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}

	//카테고리 번호 가져오기(게시글 입력시 마지막 번호 리턴해주기)
	public int choiceCategoryCode() {
		int categoryCode = -1;   //반환할 카테고리코드 확인   
		String sql="select categorycode from category order by categorycode desc";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {   //받아온 자료가 있을 시
				categoryCode=rs.getInt(1);   // 첫번째 값만 받아오면 됨. 내림차순이기에 최신글은 가장 높은 숫자.
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return categoryCode;
	}


	// 카테고리 수정
	public void updateCategory(CategoryDTO cDTO) {
		//분류 3가지 수정 정보 넣어주기
		String sql = "update category ??";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cDTO.getRecipe());
			pstmt.setString(2, cDTO.getLocal());
			pstmt.setString(3, cDTO.getItem());
			pstmt.setInt(4, cDTO.getCategorycode());
			pstmt.executeUpdate();
			//입력한 후에 바로 입력한 카테고리 코드 확인해서 가져오기
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	/* 카테고리.end ***********************************************/


	/* 좋아요 ***********************************************/
	//좋아요 눌렀는지 체크 함수
	public int checkLike() {
		int check = 0;
		return check;
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
