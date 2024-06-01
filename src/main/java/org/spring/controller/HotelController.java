package org.spring.controller;

import java.sql.Timestamp;
import java.util.List;

import org.spring.domain.AccommodationVO;
import org.spring.domain.Criteria;
import org.spring.domain.pageDTO;
import org.spring.service.AccommodationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/list")
@AllArgsConstructor
public class HotelController {
	
	@Autowired
	private AccommodationService service;
	
	@GetMapping("/hotels")
	public ModelAndView getHotels(Criteria cri,
			@RequestParam(value="page",defaultValue="1")int page,
			@RequestParam(value="region", required=false) String region,
            @RequestParam(value="startDate", required=false) Timestamp startDate,
            @RequestParam(value="endDate", required=false) Timestamp endDate,
            @RequestParam(value="sort", required=false) String sort) {
		ModelAndView mv = new ModelAndView("accommodations/getAccommodations");
		
		cri.setCategory("hotel");	//카테고리 설정
		cri.setPageNum(page);		//현재 페이지 설정
		
		cri.setRegion(region); // 지역 설정
	    if (startDate != null) cri.setStart_date(startDate); // 입실일 설정
	    if (endDate != null) cri.setEnd_date(endDate); // 퇴실일 설정
	    cri.setSort(sort); // 정렬 설정

	    System.out.println("controller region:"+region);
	    System.out.println("critetia region:"+cri.getRegion());
		
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
	public ModelAndView getMotels(Criteria cri,@RequestParam(value="page",defaultValue="1")int page) {
		ModelAndView mv = new ModelAndView("accommodations/getAccommodations");
		
		cri.setCategory("motel");
		cri.setPageNum(page);
		
		int totalCount = service.getAccommodationsCount(cri);
		List<AccommodationVO> accommodations = service.getAccommodations(cri);
		
		pageDTO dto = new pageDTO(cri, totalCount);
		
		mv.addObject("accommodations",accommodations);
		mv.addObject("pageDTO", dto);
		mv.addObject("category", cri.getCategory());
		
		return mv;
	}
	
	@GetMapping("/pensions")
	public ModelAndView getPensions(Criteria cri,@RequestParam(value="page",defaultValue="1")int page) {
		ModelAndView mv = new ModelAndView("accommodations/getAccommodations");
		
		cri.setCategory("pension");
		cri.setPageNum(page);
		
		int totalCount = service.getAccommodationsCount(cri);
		List<AccommodationVO> accommodations = service.getAccommodations(cri);
		
		pageDTO dto = new pageDTO(cri, totalCount);
		
		mv.addObject("accommodations",accommodations);
		mv.addObject("pageDTO", dto);
		mv.addObject("category", cri.getCategory());
		
		return mv;
	}

}
