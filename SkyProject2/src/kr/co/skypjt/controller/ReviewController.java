package kr.co.skypjt.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.skypjt.beans.UserBean;
import kr.co.skypjt.beans.HotelReviewBean;
import kr.co.skypjt.beans.ReservationBean;
import kr.co.skypjt.beans.TravelReviewBean;
import kr.co.skypjt.service.HotelReviewService;
import kr.co.skypjt.service.TravelReviewService;


@Controller
public class ReviewController {

	@Autowired
	HotelReviewService hotelreviewservice;
	
	@Autowired
	TravelReviewService travelreviewservice;
	
	//sessionscope 가져오기
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	
	
	
	@RequestMapping("/hotel_review")
	public String hotel_review(HttpServletRequest request, Model model) throws Exception {

		List<HotelReviewBean> hotelreviewlist = hotelreviewservice.getHotelReviewList();

		model.addAttribute("hotelreviewlist", hotelreviewlist);

		return "hotel_review";
	}

	@RequestMapping("/hotel_review_read")
	public String hotel_review_read(HttpServletRequest request, Model model) throws Exception {
		int hotel_content_idx = Integer.parseInt(request.getParameter("hotel_content_idx"));

		HotelReviewBean hotelreview = hotelreviewservice.getHotelReviewDetail(hotel_content_idx);

		model.addAttribute("hotelreview", hotelreview);

		return "hotel_review_read";
	}
	
	//호텔 리뷰 쓰기
	@GetMapping("/hotel_review_write")
	public String hotel_review_write(HttpServletRequest request, Model model, @ModelAttribute("writeHotelContentBean") HotelReviewBean writeHotelContentBean) {
		
		String user_id = loginUserBean.getUser_id();

		List<ReservationBean> reservationlist = hotelreviewservice.getReservationList(user_id);
		model.addAttribute("reservationlist", reservationlist);

//		if (reservationlist.equals("")) {
//			return "hotel_review_write_fail";
//		}
		
		return "hotel_review_write";
	}
	@PostMapping("hotel_review_write_pro")
	public String hotel_review_write_pro(@Valid @ModelAttribute("writeHotelContentBean") HotelReviewBean writeHotelContentBean, BindingResult result) {
		
		try {
			if(result.hasErrors()) {
				
				return "hotel_review_write";
			}
			hotelreviewservice.addHotelContentInfo(writeHotelContentBean);
			
			return "hotel_review_write_success";
			
		} catch (Exception e) {
			return "hotel_review_write_fail";
		}
	}	
		
	// 호텔 리뷰 수정
	@GetMapping("/hotel_review_modify")
	public String hotel_review_modify(Model model, @RequestParam("hotel_content_idx") int hotel_content_idx,
			@ModelAttribute("modifyHotelContentBean") HotelReviewBean modifyHotelContentBean1) {

		HotelReviewBean hotelreviewmodify = hotelreviewservice.getHotelReviewDetail(hotel_content_idx);
		model.addAttribute("hotelreviewmodify", hotelreviewmodify);
		// modifyHotelContentBean1.setHotel_content_subject("hotel_content_subject");
		// modifyHotelContentBean1.setHotel_content_text("hotel_content_text");
		// modifyHotelContentBean1.setHotel_content_rating("hotel_content_rating");

		return "hotel_review_modify";
	}

	@PostMapping("hotel_review_modify_pro")
	public String hotel_review_modify_pro(
			@Valid @ModelAttribute("modifyHotelContentBean") HotelReviewBean modifyHotelContentBean,
			BindingResult result) {

		try {
			if (result.hasErrors()) {

				return "hotel_review_modify";
			}
			hotelreviewservice.getHotelModifyBean(modifyHotelContentBean);
		} catch (Exception e) {
			return "hotel_review_modify_fail";
		}

		return "hotel_review_modify_success";
	}

	// 호텔 리뷰 삭제
		@GetMapping("/hotel_review_modify_delete")
		public String hotel_review_modify_delete(@RequestParam("hotel_content_idx") int hotel_content_idx, Model model) {

			hotelreviewservice.getHotelDeleteContent(hotel_content_idx);

			// 글 목록 페이지로 이동
			model.addAttribute("hotel_content_idx", hotel_content_idx);

			return "hotel_review_modify_delete";
		}
		
//---------------------------------------------------------------------------------------		
	
		@GetMapping("/travel_review")
		public String travel_review(HttpServletRequest request, Model model) throws Exception {
			List<TravelReviewBean> travelreviewlist = travelreviewservice.getTravelReviewList();

			model.addAttribute("travelreviewlist", travelreviewlist);

			return "travel_review";
		}
		
		@RequestMapping("/travel_review_read")
		public String travel_review_read(HttpServletRequest request, Model model) throws Exception {
			int travel_content_idx = Integer.parseInt(request.getParameter("travel_content_idx"));

			TravelReviewBean travelreview = travelreviewservice.getTravelReviewDetail(travel_content_idx);

			model.addAttribute("travelreview", travelreview);

			return "travel_review_read";
		}
			
			//여행 리뷰 쓰기
		@GetMapping("/travel_review_write")
		public String travel_review_write(@ModelAttribute("writeTravelContentBean") TravelReviewBean writeTravelContentBean) {
			
			return "travel_review_write";
		}
		
		@PostMapping("travel_review_write_pro")
		public String travel_review_write_pro(@Valid @ModelAttribute("writeTravelContentBean") TravelReviewBean writeTravelContentBean, BindingResult result) {
			if(result.hasErrors()) {
				
				return "travel_review_write";
			}
			travelreviewservice.addTravelContentInfo(writeTravelContentBean);
			
			return "travel_review_write_success";
		}
			
		// 리뷰 게시판 수정(여행)
		@GetMapping("/travel_review_modify")
		public String hotel_review_modify(@RequestParam("travel_content_idx") int travel_content_idx,
										  @ModelAttribute("modifyTravelBean") TravelReviewBean modifyTravelBean1,
										  BindingResult result,
				                          Model model) {
							
			TravelReviewBean modifyTravelBean3 = travelreviewservice.getTravelReviewDetail(travel_content_idx);
			model.addAttribute("modifyTravelBean3", modifyTravelBean3);
			
			modifyTravelBean1.setTravel_content_subject("travel_content_subject");
			modifyTravelBean1.setTravel_content_text("travel_content_text");
			
			return "travel_review_modify";
		}
			
		
		//리뷰 게시판 수정 알러트 넘기는 부분(여행)
		@GetMapping("/travel_review_modify_pro")
		public String travle_review_modify_pro(@ModelAttribute("modifyContentBean") TravelReviewBean modifyContentBean) {
			
			travelreviewservice.travelReviewmodify(modifyContentBean);
			return "travel_review_modify_success";
		}
		
		//리뷰게시판 delete
		@GetMapping("travel_review_modify_delete")
		public String travle_review_delete_pro(@RequestParam("travel_content_idx") int travel_content_idx,
				Model model) {
			travelreviewservice.deleteTravelReview(travel_content_idx);

			
			return "travel_review_modify_delete";
		}
}
