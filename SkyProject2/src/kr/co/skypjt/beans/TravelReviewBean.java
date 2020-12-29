package kr.co.skypjt.beans;

import javax.validation.constraints.NotNull;

public class TravelReviewBean {

	private int travel_content_idx; //번호
	@NotNull
	private String travel_content_subject; //제목
	@NotNull
	private String travel_content_city; //도시
	@NotNull
	private String travel_content_place; //장소
	@NotNull
	private String travel_content_text; //내용
	@NotNull
	private String travel_content_writer; //작성자
	private String travel_content_date; //날짜
	
	public int getTravel_content_idx() {
		return travel_content_idx;
	}
	public void setTravel_content_idx(int travel_content_idx) {
		this.travel_content_idx = travel_content_idx;
	}
	public String getTravel_content_subject() {
		return travel_content_subject;
	}
	public void setTravel_content_subject(String travel_content_subject) {
		this.travel_content_subject = travel_content_subject;
	}
	public String getTravel_content_city() {
		return travel_content_city;
	}
	public void setTravel_content_city(String travel_content_city) {
		this.travel_content_city = travel_content_city;
	}
	public String getTravel_content_place() {
		return travel_content_place;
	}
	public void setTravel_content_place(String travel_content_place) {
		this.travel_content_place = travel_content_place;
	}
	public String getTravel_content_text() {
		return travel_content_text;
	}
	public void setTravel_content_text(String travel_content_text) {
		this.travel_content_text = travel_content_text;
	}
	public String getTravel_content_writer() {
		return travel_content_writer;
	}
	public void setTravel_content_writer(String travel_content_writer) {
		this.travel_content_writer = travel_content_writer;
	}
	public String getTravel_content_date() {
		return travel_content_date;
	}
	public void setTravel_content_date(String travel_content_date) {
		this.travel_content_date = travel_content_date;
	}

	
	
}
