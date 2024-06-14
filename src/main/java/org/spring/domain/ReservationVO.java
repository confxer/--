package org.spring.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ReservationVO {
	private int reservation_no;
	private String member_id;
	private int accommodation_no;
	private int room_no;
	private Timestamp check_in_date;
	private Timestamp check_out_date;
	private int guest_count;
	private int price;
	private boolean is_coupon_used;
	private int coupon_no;
	private String reservation_status;
	
}
