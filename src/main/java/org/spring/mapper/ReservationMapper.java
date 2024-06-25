package org.spring.mapper;

import java.util.List;

import org.spring.domain.RoomVO;

public interface ReservationMapper {
	
	public List<RoomVO> getRoomDetails(int room_no);
}
