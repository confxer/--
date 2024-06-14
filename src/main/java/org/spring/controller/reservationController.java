package org.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping()
@AllArgsConstructor
public class reservationController {
	
	@GetMapping("/reservation")
	public String reservationPage() {
		return "accommodations/reservation";
	}
}
