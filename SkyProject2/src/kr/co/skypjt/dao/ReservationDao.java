package kr.co.skypjt.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.skypjt.beans.ReservationBean;
import kr.co.skypjt.mapper.ReservationMapper;

@Repository
public class ReservationDao {
	@Autowired
	ReservationMapper reservationmapper;
	
	
	public ReservationBean getReservationDetail(String user_id) {
		return reservationmapper.getReservationDetail(user_id);
	}
	public ReservationBean getReserveid_table(String user_id) {
	      return reservationmapper.getReserveid_table(user_id);
	   }
	
	public void addReservationInfo(ReservationBean OrderCheckBean) {
	      reservationmapper.addReservationInfo(OrderCheckBean);
	   }
	
	
	public ReservationBean getResvationPrice(int room_price) {
		return reservationmapper.getResvationPrice(room_price);
	}
}
