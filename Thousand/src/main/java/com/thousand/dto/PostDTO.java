package com.thousand.dto;

import java.sql.Timestamp;

public class PostDTO {
	private int pno;				//게시글 번호
	private String id;				//회원 아이디(작성자용)
	private String title;			//게시글 제목
	private String summary;			//게시글 요약
	private String categorycode;	//카테고리 번호 -> 카테고리 불러오기
	private String mainimg;			//메인사진
	private int readcount;			//게시글 전체 조회수
	private String content1;		//본문내용1 -> 재료
	private String content2;		//본문내용2~11 -> 세부내용
	private String content3;	
	private String content4;
	private String content5;
	private String content6;
	private String content7;
	private String content8;
	private String content9;
	private String content10;
	private String content11;
	private String produceImg2;		//본문내용 2~11까지의 사진
	private String produceImg3;
	private String produceImg4;
	private String produceImg5;
	private String produceImg6;
	private String produceImg7;
	private String produceImg8;
	private String produceImg9;
	private String produceImg10;
	private String produceImg11;
	private Timestamp postdate;		//게시글 작성 날짜
	
	
	public int getNo() {
		return pno;
	}
	public void setNo(int pno) {
		this.pno = pno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getCategorycode() {
		return categorycode;
	}
	public void setCategorycode(String categorycode) {
		this.categorycode = categorycode;
	}
	public String getMainimg() {
		return mainimg;
	}
	public void setMainimg(String mainimg) {
		this.mainimg = mainimg;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public String getContent1() {
		return content1;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	public String getContent2() {
		return content2;
	}
	public void setContent2(String content2) {
		this.content2 = content2;
	}
	public String getContent3() {
		return content3;
	}
	public void setContent3(String content3) {
		this.content3 = content3;
	}
	public String getContent4() {
		return content4;
	}
	public void setContent4(String content4) {
		this.content4 = content4;
	}
	public String getContent5() {
		return content5;
	}
	public void setContent5(String content5) {
		this.content5 = content5;
	}
	public String getContent6() {
		return content6;
	}
	public void setContent6(String content6) {
		this.content6 = content6;
	}
	public String getContent7() {
		return content7;
	}
	public void setContent7(String content7) {
		this.content7 = content7;
	}
	public String getContent8() {
		return content8;
	}
	public void setContent8(String content8) {
		this.content8 = content8;
	}
	public String getContent9() {
		return content9;
	}
	public void setContent9(String content9) {
		this.content9 = content9;
	}
	public String getContent10() {
		return content10;
	}
	public void setContent10(String content10) {
		this.content10 = content10;
	}
	public String getContent11() {
		return content11;
	}
	public void setContent11(String content11) {
		this.content11 = content11;
	}
	public String getProduceImg2() {
		return produceImg2;
	}
	public void setProduceImg2(String produceImg2) {
		this.produceImg2 = produceImg2;
	}
	public String getProduceImg3() {
		return produceImg3;
	}
	public void setProduceImg3(String produceImg3) {
		this.produceImg3 = produceImg3;
	}
	public String getProduceImg4() {
		return produceImg4;
	}
	public void setProduceImg4(String produceImg4) {
		this.produceImg4 = produceImg4;
	}
	public String getProduceImg5() {
		return produceImg5;
	}
	public void setProduceImg5(String produceImg5) {
		this.produceImg5 = produceImg5;
	}
	public String getProduceImg6() {
		return produceImg6;
	}
	public void setProduceImg6(String produceImg6) {
		this.produceImg6 = produceImg6;
	}
	public String getProduceImg7() {
		return produceImg7;
	}
	public void setProduceImg7(String produceImg7) {
		this.produceImg7 = produceImg7;
	}
	public String getProduceImg8() {
		return produceImg8;
	}
	public void setProduceImg8(String produceImg8) {
		this.produceImg8 = produceImg8;
	}
	public String getProduceImg9() {
		return produceImg9;
	}
	public void setProduceImg9(String produceImg9) {
		this.produceImg9 = produceImg9;
	}
	public String getProduceImg10() {
		return produceImg10;
	}
	public void setProduceImg10(String produceImg10) {
		this.produceImg10 = produceImg10;
	}
	public String getProduceImg11() {
		return produceImg11;
	}
	public void setProduceImg11(String produceImg11) {
		this.produceImg11 = produceImg11;
	}
	public Timestamp getPostdate() {
		return postdate;
	}
	public void setPostdate(Timestamp postdate) {
		this.postdate = postdate;
	}
	
}
