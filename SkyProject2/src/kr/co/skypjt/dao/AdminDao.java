package kr.co.skypjt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.skypjt.beans.ReservationBean;
import kr.co.skypjt.mapper.AdminMapper;

@Repository
public class AdminDao {

	@Autowired
	AdminMapper adminMapper;
	
	
	public List<ReservationBean> getReservationList(){
		return adminMapper.getReservationList();
	}
	
	public void deleteReservation(int room_price) {
		 adminMapper.deleteReservation(room_price);
	}
}
