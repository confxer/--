package org.spring.domain;

import lombok.Data;

@Data
public class AccommodationVO {
	private int accommodation_no;
	private String owner_id;			//사장님id
	private String category;	//분류
	private String region;//지역
	private String accommodation_name;	//이름
	private String address;	//주소
	private String phone_number;	//전화번호
	private String description;//내용
	private double star_rating; 	//별점
	private int review_count;//리뷰 수
}
