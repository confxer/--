package org.spring.mapper;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.spring.domain.MemberVO;

@Mapper
public interface MemberMapper {
    @Insert("INSERT INTO member (member_id, password, name, nickname, phone_number, birth_date, type, integration) " +
            "VALUES (#{member_id}, #{password}, #{name}, #{nickname}, #{phone_number}, #{birth_date}, #{type},  #{integration})")
    void insertMember(MemberVO member);

    @Select("SELECT * FROM member WHERE member_id = #{memberId} AND password = #{password}")
    MemberVO findByMemberIdAndPassword(@Param("memberId") String memberId, @Param("password") String password);
    
    @Select("SELECT * FROM member Integration = #{kakaoId}")
    MemberVO findByKakaoId(String kakaoId);
    
    @Select("SELECT * FROM member WHERE member_id = #{naverUserId}")
    MemberVO findByNaverId(String naverUserId);

    @Update("UPDATE member SET nickname = #{nickname} WHERE phone_number = #{phone_number}")
	int updateMember(@Param("phone_number") String phone_number,@Param("nickname") String nickname);
}