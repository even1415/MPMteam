package com.mympm.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.mpmproject.mympm.LoginController;
import com.mympm.domain.MemberVO;
import com.mympm.domain.NotMemberException;
import com.mympm.mapper.UserMapper;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService {
	
	private static Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Inject
	private UserMapper userMapper;
	
	@Inject
	private SqlSession sql;

	@Override
	public int insertMember(MemberVO user) {
		// TODO Auto-generated method stub
		logger.info("user={}", user);
		
		//sql.insert("UserMapper.signup", user);
		this.userMapper.insertMember(user);
		
		return 1;
	}

	@Override
	public MemberVO loginCheck(MemberVO user) throws NotMemberException {
		MemberVO dbUser = this.findMemberByUserid(user.getUserid());
		if(dbUser!=null) {
			//아이디가 있다면
			if(!user.getPwd().equals(dbUser.getPwd())) {
				throw new NotMemberException("비밀번호가 일치하지 않아요");
			}
		}
		return dbUser;
	}
	
	@Override
	public MemberVO findMemberByUserid(String userid) throws NotMemberException {
		// TODO Auto-generated method stub
		MemberVO user = this.userMapper.findMemberByUserid(userid);
		if(user==null) {
			throw new NotMemberException("존재하지 않는 아이디 입니다.");
		}
		return user;
	}

	@Override
	public int idCheck(String userid) {
		//MemberVO user = this.userMapper.findMemberByUserid(userid);
		// TODO Auto-generated method stub
		int check = userMapper.idCheck(userid);
		
		return check;
	}

	@Override
	public List<MemberVO> getAllMembers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO findMemberByIdx(Integer idx) {
		// TODO Auto-generated method stub
		return userMapper.findMemberByIdx(idx);
	}

	@Override
	public List<MemberVO> findMember(String colType, String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int editMember(MemberVO user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(Integer idx) {
		// TODO Auto-generated method stub
		return 0;
	}

}
