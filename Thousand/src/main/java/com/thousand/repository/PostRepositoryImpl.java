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

	@Override
	public List<PostDTO> selectMyPost(String id, Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PostDTO selectOnePost(int pno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void plusReadCount(int pno) {
		// TODO Auto-generated method stub
		
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

	@Override
	public void insertPost(PostDTO pDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePost(PostDTO pDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePost(PostDTO pDTO) {
		// TODO Auto-generated method stub
		
	}

}
