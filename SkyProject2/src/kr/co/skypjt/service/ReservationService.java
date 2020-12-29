package kr.co.skypjt.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.skypjt.beans.ReservationBean;
import kr.co.skypjt.dao.ReservationDao;

@Service
public class ReservationService {
	@Autowired
	ReservationDao reservationDao;
	
	
	public ReservationBean getReservationDetail(String user_id) {
		return reservationDao.getReservationDetail(user_id);
	}
	 public ReservationBean getReserveid_table(String user_id) {
	      return reservationDao.getReserveid_table(user_id);
	   }
	 
	 public void addReservationInfo(ReservationBean OrderCheckBean) {
	      reservationDao.addReservationInfo(OrderCheckBean);
	   }
	 
	 public ReservationBean getResvationPrice(int room_price) {
			return reservationDao.getResvationPrice(room_price);
		}
}
