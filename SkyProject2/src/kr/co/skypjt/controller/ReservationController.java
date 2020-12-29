package kr.co.skypjt.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.skypjt.beans.HotelRoomBean;
import kr.co.skypjt.beans.ReservationBean;
import kr.co.skypjt.service.HotelService;
import kr.co.skypjt.service.ReservationService;

@Controller
public class ReservationController {

	@Autowired
	HotelService hotelservice;
	@Autowired
	private ReservationService reservationService;

	@GetMapping("/reservation")
	public String reservation(@ModelAttribute("resBean") ReservationBean resBean, HttpServletRequest request,
			Model model) throws Exception {

		int hotel_num = Integer.parseInt(request.getParameter("hotel_num"));
		HotelRoomBean hotelRoomBean = hotelservice.getHoteldetailNum(hotel_num);
		int room_num = Integer.parseInt(request.getParameter("room_num"));
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");
		String room_name = null;
		int room_price = 0;

		if (room_num == 1) {

			room_name = hotelRoomBean.getRoom_name1();
			room_price = hotelRoomBean.getRoom_price1();
			model.addAttribute("room_name", room_name);

		} else if (room_num == 2) {

			room_name = hotelRoomBean.getRoom_name2();
			room_price = hotelRoomBean.getRoom_price2();
			model.addAttribute("room_name", room_name);

		} else if (room_num == 3) {

			room_name = hotelRoomBean.getRoom_name3();
			room_price = hotelRoomBean.getRoom_price3();

		}
		model.addAttribute("room_price", room_price);

		String hotel_name = hotelRoomBean.getHotel_name();
		model.addAttribute("hotel_name", hotel_name);
		model.addAttribute("check_in", check_in);
		model.addAttribute("check_out", check_out);
		model.addAttribute("hotel_pic",hotelRoomBean.getHotel_pic());
		return "reservation";
	}

	@GetMapping("/payment")
	public String payment(@ModelAttribute("resBean") ReservationBean resBean, HttpServletRequest request, Model model)
			throws Exception {

		String hotel_name = request.getParameter("hotel_name");
		String room_name = request.getParameter("room_name");
		String room_price = request.getParameter("room_price");
		int room_num = Integer.parseInt(request.getParameter("room_num"));
		String reserve_name = request.getParameter("reserve_name");
		String reserve_phone = request.getParameter("reserve_phone");
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");

		model.addAttribute("hotel_name", hotel_name);
		model.addAttribute("room_name", room_name);
		model.addAttribute("room_price", room_price);
		model.addAttribute("room_num", room_num);

		model.addAttribute("reserve_name", reserve_name);
		model.addAttribute("reserve_phone", reserve_phone);
		model.addAttribute("check_in", check_in);
		model.addAttribute("check_out", check_out);
		
		 reservationService.addReservationInfo(resBean); 
		return "payment";
	}

	// pro===========================================================================================
	@PostMapping("nopassbook_pro")
	public String nopassbook_pro(@ModelAttribute("resBean") ReservationBean resBean, HttpServletRequest request,
			Model model) {
		String hotel_name = request.getParameter("hotel_name");
		String room_name = request.getParameter("room_name");
		String room_price = request.getParameter("room_price");
		int room_num = Integer.parseInt(request.getParameter("room_num"));
		String reserve_name = request.getParameter("reserve_name");
		String reserve_phone = request.getParameter("reserve_phone");
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");

		model.addAttribute("hotel_name", hotel_name);
		model.addAttribute("room_name", room_name);
		model.addAttribute("room_price", room_price);
		model.addAttribute("room_num", room_num);

		model.addAttribute("reserve_name", reserve_name);
		model.addAttribute("reserve_phone", reserve_phone);
		model.addAttribute("check_in", check_in);
		model.addAttribute("check_out", check_out);

		/*
		 * System.out.println("ȣ�� �̸� : " + hotel_name); System.out.println("���� �̸� : " +
		 * room_name); System.out.println("���� ���� : " + room_price);
		 * System.out.println("������ �̸� : " + reserve_name);
		 * System.out.println("������ ��ȭ��ȣ : " + reserve_phone);
		 * System.out.println("üũ�� : " + check_in); System.out.println("üũ�ƿ� : " +
		 * check_out);
		 */

		System.out.println("nopassbook_pro");

		

		return "pay_success";

	}

	
	/*
	 * @PostMapping("kakaopay_pro") public String
	 * kakaopay_pro(@ModelAttribute("resBean") ReservationBean
	 * resBean,HttpServletRequest request,Model model) { String hotel_name =
	 * request.getParameter("hotel_name"); String room_name =
	 * request.getParameter("room_name"); String room_price =
	 * request.getParameter("room_price"); int room_num
	 * =Integer.parseInt(request.getParameter("room_num")) ; String reserve_name =
	 * request.getParameter("reserve_name"); String reserve_phone =
	 * request.getParameter("reserve_phone"); String check_in =
	 * request.getParameter("check_in"); String check_out =
	 * request.getParameter("check_out");
	 * 
	 * model.addAttribute("hotel_name",hotel_name);
	 * model.addAttribute("room_name",room_name);
	 * model.addAttribute("room_price",room_price);
	 * model.addAttribute("room_num",room_num);
	 * 
	 * model.addAttribute("reserve_name",reserve_name);
	 * model.addAttribute("reserve_phone",reserve_phone);
	 * model.addAttribute("check_in",check_in);
	 * model.addAttribute("check_out",check_out);
	 * 
	 * 
	 * System.out.println("ȣ�� �̸� : "+hotel_name);
	 * System.out.println("���� �̸� : "+room_name);
	 * System.out.println("���� ���� : "+room_price);
	 * System.out.println("������ �̸� : "+reserve_name);
	 * System.out.println("������ ��ȭ��ȣ : "+reserve_phone);
	 * System.out.println("üũ�� : "+check_in);
	 * System.out.println("üũ�ƿ� : "+check_out);
	 * 
	 * System.out.println("��ѹ� "+room_num);
	 * 
	 * 
	 * 
	 * 
	 * 
	 * return "kakaopay";
	 * 
	 * }
	 */
	 
	// pro
	// end=================================================================================================

	@GetMapping("/nopassbook")
	public String nopassbook(@ModelAttribute("resBean") ReservationBean resBean, Model model,
			HttpServletRequest request) {

		String hotel_name = request.getParameter("hotel_name");
		String room_name = request.getParameter("room_name");
		String room_price = request.getParameter("room_price");
		int room_num = Integer.parseInt(request.getParameter("room_num"));
		String reserve_name = request.getParameter("reserve_name");
		String reserve_phone = request.getParameter("reserve_phone");
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");

		model.addAttribute("hotel_name", hotel_name);
		model.addAttribute("room_name", room_name);
		model.addAttribute("room_price", room_price);
		model.addAttribute("room_num", room_num);

		model.addAttribute("reserve_name", reserve_name);
		model.addAttribute("reserve_phone", reserve_phone);
		model.addAttribute("check_in", check_in);
		model.addAttribute("check_out", check_out);



		System.out.println("������");

		return "nopassbook";

	}

	@GetMapping("/kakaopay")
	public String kakaopay(@ModelAttribute("resBean") ReservationBean resBean, Model model,
			HttpServletRequest request) {

		String hotel_name = request.getParameter("hotel_name");
		String room_name = request.getParameter("room_name");
		String room_price = request.getParameter("room_price");
		int room_num = Integer.parseInt(request.getParameter("room_num"));
		String reserve_name = request.getParameter("reserve_name");
		String reserve_phone = request.getParameter("reserve_phone");
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");

		model.addAttribute("hotel_name", hotel_name);
		model.addAttribute("room_name", room_name);
		model.addAttribute("room_price", room_price);
		model.addAttribute("room_num", room_num);

		model.addAttribute("reserve_name", reserve_name);
		model.addAttribute("reserve_phone", reserve_phone);
		model.addAttribute("check_in", check_in);
		model.addAttribute("check_out", check_out);

		
		 System.out.println("ȣ�� �̸� : "+hotel_name);
		  System.out.println("���� �̸� : "+room_name);
		  System.out.println("���� ���� : "+room_price);
		  System.out.println("������ �̸� : "+reserve_name);
		  System.out.println("������ ��ȭ��ȣ : "+reserve_phone);
		  System.out.println("üũ�� : "+check_in);
		  System.out.println("üũ�ƿ� : "+check_out);
		  
		  System.out.println("��ѹ� "+room_num);
		System.out.println("īī������" );

		return "kakaopay";
	}

	@GetMapping("/pay_success")
	public String pay_success(@ModelAttribute("resBean") ReservationBean resBean, Model model,
			HttpServletRequest request) {

		String hotel_name = request.getParameter("hotel_name");
		String room_name = request.getParameter("room_name");
		String room_price = request.getParameter("room_price");
		int room_num = Integer.parseInt(request.getParameter("room_num"));
		String reserve_name = request.getParameter("reserve_name");
		String reserve_phone = request.getParameter("reserve_phone");
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");

		model.addAttribute("hotel_name", hotel_name);
		model.addAttribute("room_name", room_name);
		model.addAttribute("room_price", room_price);
		model.addAttribute("room_num", room_num);

		model.addAttribute("reserve_name", reserve_name);
		model.addAttribute("reserve_phone", reserve_phone);
		model.addAttribute("check_in", check_in);
		model.addAttribute("check_out", check_out);

	
		System.out.println("���̼���");

		//reservationService.addReservationInfo(resBean);
		
		
		return "pay_success";
	}

}
