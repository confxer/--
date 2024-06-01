package org.spring.mapper;

import java.util.List;

import org.spring.domain.AccommodationVO;
import org.spring.domain.Criteria;

public interface AccommodationMapper {
	
	public int getTotalCount(Criteria cri);
	
	public List<AccommodationVO> getListWithPaging(Criteria cri);
	
}
