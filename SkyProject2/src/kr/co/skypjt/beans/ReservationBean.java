package kr.co.skypjt.beans;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

//결제정보
public class ReservationBean {
   
   private String user_id; //아이디
   private String hotel_name; //호텔이름
   private String room_name; //객실이름
   private int room_price; //객실가격
   private int room_num; //인원수 
     @NotBlank
      @Pattern(regexp="[가-힣]*")
   private String reserve_name; //예약자 이름
     @NotBlank
   private String reserve_phone; //예약자 번호
   private String check_in; // 체크인
   private String check_out; // 체크아웃
  
   
   public String getUser_id() {
      return user_id;
   }
   public void setUser_id(String user_id) {
      this.user_id = user_id;
   }
   public String getHotel_name() {
      return hotel_name;
   }
   public void setHotel_name(String hotel_name) {
      this.hotel_name = hotel_name;
   }
   public String getRoom_name() {
      return room_name;
   }
   public void setRoom_name(String room_name) {
      this.room_name = room_name;
   }
   public int getRoom_price() {
      return room_price;
   }
   public void setRoom_price(int room_price) {
      this.room_price = room_price;
   }
   public int getRoom_num() {
      return room_num;
   }
   public void setRoom_num(int room_num) {
      this.room_num = room_num;
   }
   public String getReserve_name() {
      return reserve_name;
   }
   public void setReserve_name(String reserve_name) {
      this.reserve_name = reserve_name;
   }
   public String getReserve_phone() {
      return reserve_phone;
   }
   public void setReserve_phone(String reserve_phone) {
      this.reserve_phone = reserve_phone;
   }
   public String getCheck_in() {
      return check_in;
   }
   public void setCheck_in(String check_in) {
      this.check_in = check_in;
   }
   public String getCheck_out() {
      return check_out;
   }
   public void setCheck_out(String check_out) {
      this.check_out = check_out;
   }
   
   
   
   
   
}