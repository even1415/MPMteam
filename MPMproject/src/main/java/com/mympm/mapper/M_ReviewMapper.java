package com.mympm.mapper;

import java.util.List;

import com.mympm.domain.M_ReviewVO;

public interface M_ReviewMapper {
	public int insertM_Review(M_ReviewVO m_review);
	public int DelM_Review(int mr_idx);
	
	public List<M_ReviewVO> listMusic(M_ReviewVO m_review);
}
