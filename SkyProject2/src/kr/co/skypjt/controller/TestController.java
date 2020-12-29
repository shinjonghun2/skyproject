package kr.co.skypjt.controller;

import java.net.URLDecoder;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.skypjt.beans.TravelInfoBean;
import kr.co.skypjt.beans.UserBean;
import kr.co.skypjt.beans.HotelReviewBean;
import kr.co.skypjt.beans.HotelRoomBean;
import kr.co.skypjt.beans.HotelTotalBean;
import kr.co.skypjt.beans.ReservationBean;
import kr.co.skypjt.beans.TravelReviewBean;
import kr.co.skypjt.service.HotelService;
import kr.co.skypjt.service.ReservationService;
import kr.co.skypjt.service.TravelInfoService;
import kr.co.skypjt.service.UserService;
import kr.co.skypjt.validator.UserValidator;

@Controller
public class TestController {

	
	
	//sessionscope 가져오기
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	@Autowired
	HotelService hotelservice;
	
	@Autowired
	TravelInfoService travelinfoservice;
	
	@Autowired
	ReservationService reservationservice;
	
	
	@GetMapping("/index")
	public String index() {
		return "index";
	}
	
	@GetMapping("/conditions")
	public String conditions() {
		return "conditions";
	}	
	
	@GetMapping("/information_handling")
	public String personal_data() {
		return "information_handling";
	}	
	
	

	
	
	@GetMapping("/service")
	public String sercie() {
		return "service";
	}
	@RequestMapping("/travel_summary")
	public String travle_summary(HttpServletRequest request,Model model, @RequestParam("travel_city")String city) throws Exception {
		String travel_city=(String)request.getParameter("travel_city");
		
		List<TravelInfoBean>travelList=travelinfoservice.getTravelInfoList(travel_city);
		
		
		
		model.addAttribute("travelList",travelList);
		model.addAttribute("city",city);
		return "travel_summary";
	}
	
	
	
	@RequestMapping("/travel_detail")
	public String travel_detail(HttpServletRequest request,Model model) throws Exception {
		
		int travel_num = Integer.parseInt(request.getParameter("travel_num"));
		
		TravelInfoBean travelinfo=travelinfoservice.getTravelDetail(travel_num);
		
		
		model.addAttribute("travelinfo",travelinfo);
		
		return "travel_detail";
	}
		
	@GetMapping("/hotel_search")
	public String hotel_search(@RequestParam("city") String city,
								@RequestParam("check_in") String check_in,
								@RequestParam("check_out") String check_out,Model model) {
		
		List<HotelTotalBean> hotelList = hotelservice.getHotelSearchList(city);
		model.addAttribute("hotelList",hotelList);
		model.addAttribute("check_in",check_in);
		model.addAttribute("check_out",check_out);
		
		
	
		return "hotel_summary";
	}
	
	@GetMapping("/hotel_search1")
	public String hotel_search1(@RequestParam("hotel_search1") String hotel_search1,
							    @RequestParam("check_in") String check_in,
							    @RequestParam("check_out") String check_out,Model model) {
		
		System.out.println(hotel_search1);
		
		List<HotelTotalBean> hotelsearchList = hotelservice.getHotelSearchList1(hotel_search1);
		model.addAttribute("hotelsearchList",hotelsearchList);
		model.addAttribute("check_in",check_in);
		model.addAttribute("check_out",check_out);
		
		
		for (HotelTotalBean hotelTotalBean : hotelsearchList) {
			System.out.println(hotelTotalBean.getHotel_name());
		}
	
		return "hotel_search1";
	}
	
	
	//kj수정 check_in,check_out 땜에 리퀘스트 파람설정후 모델로 넘
	@GetMapping("/hotel_summary")
	public String hotel_summary(HttpServletRequest request, Model model) {
		String city = request.getParameter("city");
		List<HotelTotalBean> hotelList = hotelservice.getHotelSearchList(city);
		
		model.addAttribute("hotelList",hotelList);
		return "hotel_summary";
	}
	
	@GetMapping("/hotel_detail")
	public String hotel_detail(@RequestParam("check_in") String check_in,
			@RequestParam("check_out") String check_out,
			HttpServletRequest request,Model model)throws Exception {
		
		int hotel_num = Integer.parseInt(request.getParameter("hotel_num"));
		
		HotelRoomBean hotelRoomBean=hotelservice.getHoteldetailNum(hotel_num);
		model.addAttribute("hotelRoomBean",hotelRoomBean);
		model.addAttribute("check_in",check_in);
		model.addAttribute("check_out",check_out);
		
		return "hotel_detail";
	}
	
	@GetMapping("/order_check")
	   public String order_check(HttpServletRequest request,Model model) {
	      try {
	         String user_id=(String)request.getParameter("user_id");
	         //사용자가 입력한값
	         ReservationBean reservation=reservationservice.getReservationDetail(user_id);
	         //데이터베이스에서 끌고온값
	         ReservationBean reservation1=reservationservice.getReserveid_table(loginUserBean.getUser_id());
	         System.out.println(reservation1.getUser_id());
	         
	         model.addAttribute("reservation",reservation);      
	         model.addAttribute("reservation1",reservation1);      
	           
	         return "order_check";
	         
	      } catch (Exception e) {
	         return "order_check_fail";
	      }
	}
	
	@GetMapping("/order_check_fail")
	   public String order_check_fail() throws Exception{
	      return "order_check_fail";
	   }

}
