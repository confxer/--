package org.spring.domain;

import lombok.Data;

@Data
public class pageDTO {
	//페이징 처리에서 표시될 시작 페이지
	private int startPage;
	// ~~~ 마지막 페이지
	private int endPage;
	//다음,이전 페이지가 있는지 여부
	private boolean prev,next;
	//전체 데이터 갯수
	private int total;
	
	private Criteria cri;	//검색조건을 담은 cri 객체
	
	public pageDTO() {
		
	}
	
	//사용자가 선택한 값(request), DB에서 확인할 값(total)
	public pageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(cri.getPageNum()/5.0))*5;
		this.startPage=this.endPage-4;
		
		int realEnd=(int)Math.ceil((total*1.0)/cri.getAmount());
		if(realEnd<=this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage>1;
		this.next = this.endPage<realEnd;
	}
}
