package org.spring.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class Criteria {
	
	private String category;			//숙소 분류(호텔,모텔,펜션)
	
	private String region;			//지역(전체,서울,경기,인천,제주)
	private Timestamp start_date;	//입실일
	private Timestamp end_date;		//퇴실일	
	private String sort;			//정렬 기준(별점,최신순,리뷰수)
	
	private int pageNum;	//현재 사용자의 페이지 위치
	private int amount;		//한 페이지에 표시될 게시물의 개수
	private int start;		//페이지 이동 시 첫 글에 필요한 변수(limit)
	
	public Criteria() {
		this(1,6);
	}
	
	 public Criteria(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
        this.start = (pageNum - 1) * amount;
        System.out.println("criteria creat:pageNum="+pageNum+"amount="+amount+"start="+start);
    }

    public int getStart() {
        this.start = (this.pageNum - 1) * amount;
        return this.start;
    }
    
    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }
	
    public Timestamp getStart_date() {
        return start_date;
    }

    public void setStart_date(Timestamp start_date) {
        this.start_date = start_date;
    }
    
    public Timestamp getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Timestamp end_date) {
        this.end_date = end_date;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }
    
}
