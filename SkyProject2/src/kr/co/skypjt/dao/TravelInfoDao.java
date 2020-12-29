package kr.co.skypjt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.skypjt.beans.TravelInfoBean;
import kr.co.skypjt.mapper.TravelInfoMapper;

@Repository
public class TravelInfoDao {

	
	@Autowired
	TravelInfoMapper travelinfomapper;
	
	public List<TravelInfoBean> getTravelInfoList(String travel_city){
	
	return travelinfomapper.getTravelInfoList(travel_city);
	}
	
	public TravelInfoBean getTravelDetail(int travel_num) {
		return travelinfomapper.getTravelDetail(travel_num);
	}
}
