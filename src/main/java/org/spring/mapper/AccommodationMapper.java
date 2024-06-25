package org.spring.mapper;

import java.util.List;

import org.spring.domain.AccommodationVO;
import org.spring.domain.Criteria;
import org.spring.domain.RoomVO;

public interface AccommodationMapper {
	
	public int getTotalCount(Criteria cri);
	
	public List<AccommodationVO> getListWithPaging(Criteria cri);

	public List<RoomVO> getRoomDetails(int no);

	public List<AccommodationVO> getAccommodationDetails(int no);
	
}
