package kr.co.skypjt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.skypjt.beans.ReservationBean;
import kr.co.skypjt.dao.AdminDao;

@Service
public class AdminService {

	@Autowired
	AdminDao admindao;
	
	
	
	public List<ReservationBean> getReservationList(){
		return admindao.getReservationList();
	}
	
	public void deleteReservation(int room_price) {
		 admindao.deleteReservation(room_price);
	}
}
