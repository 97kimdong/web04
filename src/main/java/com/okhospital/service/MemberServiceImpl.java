package com.okhospital.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.okhospital.dao.MemberDAO;
import com.okhospital.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	MemberDAO memberDao;

	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}
	@Override
	public MemberDTO viewMember(String userid) throws Exception {
		return memberDao.memberRead(userid);
	}
	@Override
	public void addMember(MemberDTO mdto) throws Exception {
		memberDao.addMember(mdto);
	}
	@Override
	public void editMember(MemberDTO mdto) throws Exception {
		memberDao.editMember(mdto);
	}
	@Override
	public void deleteMember(String userid) throws Exception {
		memberDao.deleteMember(userid);
	}
	@Override
	public MemberDTO loginCheck(MemberDTO mdto) throws Exception {
		return memberDao.loginCheck(mdto);
	}
	@Override
	public int memberIDCK(String userid) throws Exception {
		return memberDao.memberIDCK(userid);
	}
	
	
	
}
