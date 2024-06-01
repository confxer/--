package org.spring.controller;

import java.util.List;

import org.spring.domain.AccommodationVO;
import org.spring.domain.Criteria;
import org.spring.domain.pageDTO;
import org.spring.service.AccommodationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/list")
@AllArgsConstructor
public class HotelController {
	
	@Autowired
	private AccommodationService service;
	
	@GetMapping("/hotels")
	public ModelAndView getHotels(Criteria cri) {
		ModelAndView mv = new ModelAndView("accommodations/getAccommodations");
		
		cri.setCategory("hotel");	//카테고리 설정
		
		int totalCount = service.getAccommodationsCount(cri);
		List<AccommodationVO> accommodations = service.getAccommodations(cri);
		
		 System.out.println("Total Accommodations Count: " + totalCount);
		
		pageDTO dto = new pageDTO(cri, totalCount);
		
		mv.addObject("accommodations",accommodations);
		mv.addObject("pageDTO", dto);
		mv.addObject("category", cri.getCategory());
		
		return mv;
	}
	
	@GetMapping("/motels")
	public ModelAndView getMotels(Criteria cri) {
		ModelAndView mv = new ModelAndView("accommodations/getAccommodations");
		
		cri.setCategory("motel");
		
		int totalCount = service.getAccommodationsCount(cri);
		List<AccommodationVO> accommodations = service.getAccommodations(cri);
		
		pageDTO dto = new pageDTO(cri, totalCount);
		
		mv.addObject("accommodations",accommodations);
		mv.addObject("pageDTO", dto);
		mv.addObject("category", cri.getCategory());
		
		return mv;
	}
	
	@GetMapping("/pensions")
	public ModelAndView getPensions(Criteria cri) {
		ModelAndView mv = new ModelAndView("accommodations/getAccommodations");
		
		cri.setCategory("pension");
		
		int totalCount = service.getAccommodationsCount(cri);
		List<AccommodationVO> accommodations = service.getAccommodations(cri);
		
		pageDTO dto = new pageDTO(cri, totalCount);
		
		mv.addObject("accommodations",accommodations);
		mv.addObject("pageDTO", dto);
		mv.addObject("category", cri.getCategory());
		
		return mv;
	}

}
