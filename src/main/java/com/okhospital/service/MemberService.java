package com.okhospital.service;

import java.util.List;

import com.okhospital.dto.MemberDTO;

public interface MemberService {
	//회원 목록
	public List<MemberDTO> memberList() throws Exception; 
	//회원 상세보기
	public MemberDTO viewMember(String userid) throws Exception;
	//회원가입
	public void addMember(MemberDTO mdto) throws Exception;
	//회원 정보 수정
	public void editMember(MemberDTO mdto) throws Exception;
	//회원 삭제
	public void deleteMember(String userid) throws Exception;
	//로그인
	public MemberDTO loginCheck(MemberDTO mdto) throws Exception;
	//아이디체크
	public int memberIDCK(String userid) throws Exception;
}

