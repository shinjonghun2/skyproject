package kr.co.skypjt.beans;

//hotel summary
public class HotelTotalBean {

	private String city;   //도시
	private String hotel_pic; //호텔사진
	private String hotel_name; //호텔이름
	private int hotel_price; // 호텔 가격
	private int hotel_rating; // 호텔 평점
	private int hotel_num;
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getHotel_pic() {
		return hotel_pic;
	}
	public void setHotel_pic(String hotel_pic) {
		this.hotel_pic = hotel_pic;
	}
	public String getHotel_name() {
		return hotel_name;
	}
	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}
	public int getHotel_price() {
		return hotel_price;
	}
	public void setHotel_price(int hotel_price) {
		this.hotel_price = hotel_price;
	}
	public int getHotel_rating() {
		return hotel_rating;
	}
	public void setHotel_rating(int hotel_rating) {
		this.hotel_rating = hotel_rating;
	}
	public int getHotel_num() {
		return hotel_num;
	}
	public void setHotel_num(int hotel_num) {
		this.hotel_num = hotel_num;
	}
	
	
	
}
