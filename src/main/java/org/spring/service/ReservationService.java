package org.spring.service;

import java.util.List;

import org.spring.domain.RoomVO;
import org.spring.mapper.ReservationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationService {
	
	@Autowired
	private ReservationMapper mapper;

	public List<RoomVO> getRoomDetails(int room_no) {
		// TODO Auto-generated method stub
		return mapper.getRoomDetails(room_no);
	}

}
