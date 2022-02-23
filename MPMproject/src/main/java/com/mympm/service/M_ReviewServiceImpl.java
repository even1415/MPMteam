package com.mympm.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mympm.domain.M_ReviewVO;
import com.mympm.mapper.M_ReviewMapper;
@Service
public class M_ReviewServiceImpl implements M_ReviewService{

	@Inject
	private M_ReviewMapper m_reviewMapper;
	
	@Override
	public int insertM_Review(M_ReviewVO m_review) {
		return this.m_reviewMapper.insertM_Review(m_review);
	}

	@Override
	public int DelM_Review(int mr_idx) {
		return this.m_reviewMapper.DelM_Review(mr_idx);
	}

	@Override
	public List<M_ReviewVO> listMusic(M_ReviewVO m_review) {
		return this.m_reviewMapper.listMusic(m_review);
	}

}
