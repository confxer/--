package org.spring.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {
    private int member_no;
    private String member_id;
    private String password;
    private String name;
    private String nickname;
    private String phone_number;
    private Date birth_date;
    private int type;
    private String business_number;
    private String integration;
}
  