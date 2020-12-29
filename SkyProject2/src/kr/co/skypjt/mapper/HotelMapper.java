package kr.co.skypjt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.skypjt.beans.HotelReviewBean;
import kr.co.skypjt.beans.HotelRoomBean;
import kr.co.skypjt.beans.HotelTotalBean;
import kr.co.skypjt.beans.TravelReviewBean;

public interface HotelMapper {

	//�ε��� ȭ�� ȣ�� ��ġ
	@Select("select * from hoteltotal_table where city=#{city}")
	List<HotelTotalBean> getHotelSearchList(String city);  
	
	// ���Ӹ����� ȣ�ڵ����� �Ѿ��
	@Select("select * from hotelroom_table where hotel_num=#{hotel_num}")
	public HotelRoomBean getHoteldetailNum(int hotel_num); 
	
	//���Ӹ� ȣ�� �˻�
	@Select("select * from hoteltotal_table where hotel_name like '%'||#{hotel_search1}||'%' ")
	List<HotelTotalBean> getHotelSearchList1(String hotel_search1); 
	
	
}
