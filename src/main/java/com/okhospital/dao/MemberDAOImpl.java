package com.okhospital.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.okhospital.dto.BoardDTO;
import com.okhospital.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Inject
	SqlSession sqlSession;	//boardMapper.xml의 내용을 include

	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList("member.memberList");
	}

	@Override
	public MemberDTO memberRead(String userid) throws Exception {
		return sqlSession.selectOne("member.memberRead");
	}

	@Override
	public void addMember(MemberDTO mdto) throws Exception {
		sqlSession.insert("member.addMember", mdto);
	}

	@Override
	public void editMember(MemberDTO mdto) throws Exception {
		sqlSession.update("member.editMember", mdto);
	}

	@Override
	public void deleteMember(String userid) throws Exception {
		sqlSession.delete("member.deleteMember", userid);
	}
	@Override
	public MemberDTO loginCheck(MemberDTO mdto) throws Exception {
		return sqlSession.selectOne("member.loginCheck", mdto);
	}

	@Override
	public int memberIDCK(String userid) throws Exception {
		return sqlSession.selectOne("member.memberIDCK", userid);
	}

	
}
