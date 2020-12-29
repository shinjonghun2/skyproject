package kr.co.skypjt.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.skypjt.beans.ReservationBean;
import kr.co.skypjt.beans.UserBean;
import kr.co.skypjt.service.AdminService;
import kr.co.skypjt.service.ReservationService;

@Controller
public class AdminController {

	@Autowired
	AdminService adminservice;
	
	@Autowired
	ReservationService reservationservice;
	
	//sessionscope 가져오기
		@Resource(name="loginUserBean")
		private UserBean loginUserBean;
	
	@GetMapping("/reservation_management")
	public String reservation_management(Model model) {
		
		List<ReservationBean> reservationList = adminservice.getReservationList();
		model.addAttribute("reservationList",reservationList);
		
		return "reservation_management";
	}
	
	@GetMapping("/reservation_management_read")
	public String reservation_management_read(HttpServletRequest request, Model model) {
		
		String user_id=(String)request.getParameter("user_id");
        
		//사용자가 입력한값
        ReservationBean reservation=reservationservice.getReservationDetail(user_id);
       

        
        model.addAttribute("reservation",reservation);      
          
        
          
        
    
		
		return "reservation_management_read";
	}
	@PostMapping("/admin_delete")
	public String admin_delete(HttpServletRequest request) {
		
		
		adminservice.deleteReservation(Integer.parseInt(request.getParameter("room_price")));
		
		return "reservation_management_delete";
	}
}
