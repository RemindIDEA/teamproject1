package com.thousand.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.thousand.dto.PostDTO;

import util.DBManager;

public class PostRepositoryImpl implements PostRepository{
	private PostRepositoryImpl() {}
	private static PostRepositoryImpl instance = new PostRepositoryImpl();
	public static PostRepositoryImpl getInstance() {
		return instance;
	}
	//전체 글 가져오기(검색 필드 및 키워드 포함인 경우도)
	@Override
	public List<PostDTO> selectPostsAll(Map<String, Object> map) {
		String sql = "select *  from "
				+" ( "
				+" select t.*, rownum rnum from( "
				+"	select * from post ";
		if(map.get("searchWord") != null) {
			sql += "where " + map.get("searchField")
			+ " like '%" + map.get("searchWord") + "%' ";
		}
		sql += "		order by pno desc "
				+" 		) t"
				+"   where rownum <= ?) "
				+"where rnum >=?";

		String[] content = new String[11];
		String[] produceImg = new String[10];
		List<PostDTO> list = new ArrayList<PostDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, map.get("end").toString());
			pstmt.setString(2, map.get("start").toString());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				PostDTO pDto = new PostDTO();
				pDto.setPno(rs.getInt("pno"));
				pDto.setId(rs.getString("id"));
				pDto.setTitle(rs.getString("title"));
				pDto.setSummary(rs.getString("summary"));
				pDto.setCategorycode(rs.getInt("categorycode"));
				pDto.setMainimg(rs.getString("mainimg"));
				pDto.setReadcount(rs.getInt("readcount"));
				// 바로 집어넣을수 없어서 임시 배열에 값 넣기
				for (int i = 0; i < 11; i++) {
					content[i] = rs.getString("content" + Integer.toString(i+1));
				}
				for (int i = 0; i < 10; i++) {
					produceImg[i] = rs.getString("produceImg" + Integer.toString(i+2));
				}
				// 임시배열값으로 세팅하기
				pDto.setContent(content);
				pDto.setProduceImg(produceImg);
				pDto.setRnum(rs.getInt("rnum"));
				list.add(pDto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	//id 작성자가 작성한 글 불러오기
	@Override
	public List<PostDTO> selectMyPost(String id, Map<String, Object> map) {
		// 작성자 id 값으로 작성한 글 불러오기, post 테이블 member 테이블 조인해서 작성자 닉네임 값 불러오기
		String sql = "select *  from "+
				"( select t.*, rownum rnum from( "+ 
				" select * from post where id=? order by pno desc ) t where rownum <= ?) " + 
				" where rnum >=?";
		// 조회된 post 넣어줄 배열생성
		String[] content = new String[11];
		String[] produceImg = new String[10];
		List<PostDTO> list = new ArrayList<PostDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, map.get("end").toString());
			pstmt.setString(3, map.get("start").toString());
			rs = pstmt.executeQuery();
			// 작성한 글이 없을 때 까지 조회
			while (rs.next()) {
				PostDTO pDto = new PostDTO();
				pDto.setPno(rs.getInt("pno"));
				pDto.setId(rs.getString("id"));
				pDto.setTitle(rs.getString("title"));
				pDto.setSummary(rs.getString("summary"));
				pDto.setCategorycode(rs.getInt("categorycode"));
				pDto.setMainimg(rs.getString("mainimg"));
				pDto.setReadcount(rs.getInt("readcount"));
				// 바로 집어넣을수 없어서 임시 배열에 값 넣기
				for (int i = 0; i < 11; i++) {
					content[i] = rs.getString("content" + Integer.toString(i+1));
				}
				for (int i = 0; i < 10; i++) {
					produceImg[i] = rs.getString("produceImg" + Integer.toString(i+2));
				}
				// 임시배열값으로 세팅하기
				pDto.setContent(content);
				pDto.setProduceImg(produceImg);
				pDto.setRnum(rs.getInt("rnum"));
				list.add(pDto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	//글번호로 해당글 상세정보 불러오기
	@Override
	public PostDTO selectOnePost(int pno) {
		// 리턴 해줄 dto 생성
		PostDTO pdto = new PostDTO();
		// 글번호로 글 가져올 쿼리문
		String sql = "select * from post where pno=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		// content랑 produceimg에 정보 넣기위한 배열
		String[] content = new String[11];
		String[] produceImg = new String[10];
		try {
			// db 연결 밑 ?값 셋팅
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rs = pstmt.executeQuery();
			if (rs.next()) { // 받아온 자료가 있을 시
				// 생성한 객체에 해당 자료 전부 집어넣기.
				pdto.setPno(rs.getInt("pno"));
				pdto.setId(rs.getString("id"));
				pdto.setTitle(rs.getString("title"));
				pdto.setSummary(rs.getString("summary"));
				pdto.setCategorycode(rs.getInt("categorycode"));
				pdto.setMainimg(rs.getString("mainimg"));
				pdto.setReadcount(rs.getInt("readcount"));
				// 바로 집어넣을수 없어서 임시 배열에 값 넣기
				for (int i = 0; i < 11; i++) {
					content[i] = rs.getString("content" + Integer.toString(i+1));
				}
				for (int i = 0; i < 10; i++) {
					produceImg[i] = rs.getString("produceImg" + Integer.toString(i+2));
				}
				// 임시배열값으로 세팅하기
				pdto.setContent(content);
				pdto.setProduceImg(produceImg);
				pdto.setPostdate(rs.getTimestamp("postdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return pdto;
	}
	//글 조회수 올리기
	@Override
	public void plusReadCount(int pno) {
		String sql = "update post set readcount=readcount+1 where pno=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			// 조회수 +1 기록
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	//해당글 작성자와 아이디가 일치하는지 체크
	@Override
	public boolean checkPnoId(int pno, String id) {
		boolean result = false;
		String sql = "select * from post where pno=? and id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,pno);
			pstmt.setString(2, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	}

	//전체 글 갯수 확인
	@Override
	public int selectCount() {
		int totalCount=0;
		String sql = "select count(*) from post";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				totalCount = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return totalCount;
	}
	//해당 id가 작성한 글 갯수 확인
	@Override
	public int selectCount(String id) {
		int totalCount=0;
		String sql = "select count(*) from post where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				totalCount = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return totalCount;
	}
	//새로운 글 등록하기
	@Override
	public void insertPost(PostDTO pDTO) {
		// 받아온 데이터 게시글 추가하기
		String sql = "insert into post(pno, id, title,summary,categorycode,mainimg"
				+ ",readcount,content1,content2,content3,content4,content5,content6,content7,"
				+ " content8, content9, content10, content11, produceimg2, produceimg3, produceimg4"
				+ ", produceimg5, produceimg6, produceimg7, produceimg8, produceimg9, produceimg10, produceimg11)"
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
			pstmt.setString(5, pDTO.getMainimg());
			for (int i = 0; i < 11; i++) {
				// 컨텐츠 내용이 존재할 시에는 정보 넣고 아니면 null값 넣기
				if (pDTO.getContent()[i] != null) {
					pstmt.setString(i + 6, pDTO.getContent()[i]);
				} else {
					pstmt.setString(i + 6, null);
				}
				if (i == 10) {// index가 11일때 밑에 img코드는 생략
					break;
				}
				// 사진 내용이 존재할 시에는 정보 넣고 아니면 null값 넣기
				if (pDTO.getProduceImg()[i] != null) {
					pstmt.setString(i + 17, pDTO.getProduceImg()[i]);
				} else {
					pstmt.setString(i + 17, null);
				}
			}
			pstmt.executeUpdate();
			// 입력한 후에 바로 입력한 카테고리 코드 확인해서 가져오기
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	@Override
	public void updatePost(PostDTO pDTO) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deletePost(PostDTO pDTO) {
		// TODO Auto-generated method stub

	}
	//카테고리로 해당 글번호 조회하기
	@Override
	public int selectInsertingPost(int categorycode) {
		int pno = 0;
		String sql = "select pno from post where categorycode=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, categorycode);
			rs = pstmt.executeQuery();
			if (rs.next()) { // 받아온 자료가 있을 시
				pno = rs.getInt(1); // 첫번째 값만 받아오면 됨. 내림차순이기에 최신글은 가장 높은 숫자.
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return pno;
	}


}
