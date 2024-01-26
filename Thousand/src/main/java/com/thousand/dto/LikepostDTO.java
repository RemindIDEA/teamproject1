package com.thousand.dto;


public class LikepostDTO {
	private int like;			//좋아요 표시
	private String id;			//좋아요 누른 아이디 rk
	private int pno;			//좋아요 누른 게시물 rk
	
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
		
	
}

