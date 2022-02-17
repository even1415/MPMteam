package com.mympm.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mympm.domain.CommunityVO;
import com.mympm.mapper.CommunityMapper;

@Service
public class CommunityServiceImpl implements CommunitySerivce{

	@Inject
	private CommunityMapper ctMapper;
	
	@Override
	public int ctwriterinsert(CommunityVO cvo) {
		return ctMapper.ctwriterinsert(cvo);
	}

	@Override
	public List<CommunityVO> ctreadList() {
		return ctMapper.ctreadList();
	}

	@Override
	public int updateUsernum(CommunityVO cvo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUsernum(int ct_idx) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public CommunityVO selectCommunityByIdx(int idx) {
		return ctMapper.selectCommunityByIdx(idx);
	}

	
	
}
