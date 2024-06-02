package org.spring.controller;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.List;

import org.spring.domain.AccommodationVO;
import org.spring.domain.Criteria;
import org.spring.domain.pageDTO;
import org.spring.service.AccommodationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
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
            @RequestParam(value="startDate", required=false) String startDate,
            @RequestParam(value="endDate", required=false) String endDate,
            @RequestParam(value="sort", required=false) String sort) {
		ModelAndView mv = new ModelAndView("accommodations/getAccommodations");
		
		cri.setCategory("hotel");	//카테고리 설정
		cri.setPageNum(page);		//현재 페이지 설정
		
		if (region != null && !region.isEmpty()) {
	        cri.setRegion(region); // 지역 설정
	    }
		if (startDate != null && !startDate.isEmpty()) {
	        try {
	            LocalDateTime startDateTime = LocalDateTime.parse(startDate, DateTimeFormatter.ISO_DATE_TIME);
	            cri.setStart_date(Timestamp.valueOf(startDateTime)); // 입실일 설정
	        } catch (DateTimeParseException e) {
	            // 올바르지 않은 날짜 형식 처리
	            System.out.println("Invalid start date format");
	        }
	    }
	    if (endDate != null && !endDate.isEmpty()) {
	        try {
	            LocalDateTime endDateTime = LocalDateTime.parse(endDate, DateTimeFormatter.ISO_DATE_TIME);
	            cri.setEnd_date(Timestamp.valueOf(endDateTime)); // 퇴실일 설정
	        } catch (DateTimeParseException e) {
	            // 올바르지 않은 날짜 형식 처리
	            System.out.println("Invalid end date format");
	        }
	    }
	    if (sort != null && !sort.isEmpty()) {
	        cri.setSort(sort); // 정렬 설정
	    }

	    System.out.println("controller region:"+region);
	    System.out.println("critetia region:"+cri.getRegion());
		
		int totalCount = service.getAccommodationsCount(cri);
		List<AccommodationVO> accommodations = service.getAccommodations(cri);
		
		 System.out.println("Total Accommodations Count: " + totalCount);
		
		pageDTO dto = new pageDTO(cri, totalCount);
		
		mv.addObject("accommodations",accommodations);
		mv.addObject("pageDTO", dto);
		mv.addObject("category", cri.getCategory());
		mv.addObject("region", region); // 검색 조건 추가
	    mv.addObject("startDate", startDate); // 검색 조건 추가
	    mv.addObject("endDate", endDate); // 검색 조건 추가
	    mv.addObject("sort", sort); // 검색 조건 추가
		
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
