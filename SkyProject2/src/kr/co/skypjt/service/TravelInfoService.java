package kr.co.skypjt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.skypjt.beans.TravelInfoBean;

import kr.co.skypjt.dao.TravelInfoDao;

@Service
public class TravelInfoService {

	
	@Autowired
	TravelInfoDao travelinfodao;
	
	public List<TravelInfoBean> getTravelInfoList(String travel_city){
		
		return travelinfodao.getTravelInfoList(travel_city);
		}
	
	public TravelInfoBean getTravelDetail(int travel_num) {
		return travelinfodao.getTravelDetail(travel_num);
	}
	
}
