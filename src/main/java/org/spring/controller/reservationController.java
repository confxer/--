package org.spring.controller;

import java.util.List;

import org.spring.domain.AccommodationVO;
import org.spring.domain.RoomVO;
import org.spring.service.AccommodationService;
import org.spring.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping()
@AllArgsConstructor
public class reservationController {
	
	@Autowired
	private ReservationService service;
	
	@GetMapping("/reservation")
	public ModelAndView reservationPage(@RequestParam("name") String accommodation_name,
			@RequestParam("r_no") int room_no) {
		ModelAndView mv = new ModelAndView("accommodations/reservation");
		
		List<RoomVO> roomDetails = service.getRoomDetails(room_no);
		
		mv.addObject("name", accommodation_name);
		mv.addObject("r", roomDetails);
		return mv;
	}
}
