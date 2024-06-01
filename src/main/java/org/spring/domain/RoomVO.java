package org.spring.domain;

import lombok.Data;

@Data
public class RoomVO {
	private int accommodation_no;	//숙소bno
	private int room_no;			//방bno
	private String room_type;		//분류
	private int capacity;		//수용 가능 인원
	private int price;			//가격
	private int room_count;			//개수
	private String description;		//설명
}
