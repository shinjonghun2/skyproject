package kr.co.skypjt.beans;

//ȣ�ڸ��� 
public class HotelReviewBean {

	private int hotel_content_idx; //��ȣ
	private String hotel_content_subject;//����
	private String hotel_content_hotelname; //ȣ���̸�
	private String hotel_content_text; // ����
	private String hotel_content_writer_id; //�ۼ���
	private String hotel_content_date; //�ۼ���¥
	private double hotel_content_rating; //����
	
	
	public int getHotel_content_idx() {
		return hotel_content_idx;
	}
	public void setHotel_content_idx(int hotel_content_idx) {
		this.hotel_content_idx = hotel_content_idx;
	}
	public String getHotel_content_subject() {
		return hotel_content_subject;
	}
	public void setHotel_content_subject(String hotel_content_subject) {
		this.hotel_content_subject = hotel_content_subject;
	}
	public String getHotel_content_hotelname() {
		return hotel_content_hotelname;
	}
	public void setHotel_content_hotelname(String hotel_content_hotelname) {
		this.hotel_content_hotelname = hotel_content_hotelname;
	}
	public String getHotel_content_text() {
		return hotel_content_text;
	}
	public void setHotel_content_text(String hotel_content_text) {
		this.hotel_content_text = hotel_content_text;
	}
	public String getHotel_content_writer_id() {
		return hotel_content_writer_id;
	}
	public void setHotel_content_writer_id(String hotel_content_writer_id) {
		this.hotel_content_writer_id = hotel_content_writer_id;
	}
	public String getHotel_content_date() {
		return hotel_content_date;
	}
	public void setHotel_content_date(String hotel_content_date) {
		this.hotel_content_date = hotel_content_date;
	}
	public double getHotel_content_rating() {
		return hotel_content_rating;
	}
	public void setHotel_content_rating(double hotel_content_rating) {
		this.hotel_content_rating = hotel_content_rating;
	}
	
	
}
