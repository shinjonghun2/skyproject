package kr.co.skypjt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.skypjt.beans.TravelInfoBean;

public interface TravelInfoMapper {

	
	@Select("select * from travel_info_table where travel_city=#{travel_city}")
	public List<TravelInfoBean> getTravelInfoList(String travel_city);
	
	@Select("select * from travel_info_table where  travel_num=#{travel_num}")
	public TravelInfoBean getTravelDetail(int travel_num);
	
}
