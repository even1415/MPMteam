package com.mympm.mapper;

import java.util.List;

import com.mympm.domain.MusicVO;

public interface MusicMapper {
	
	public int insertMusic(MusicVO music);
	public int getTotalCount(MusicVO music);
	public List<MusicVO> listMusic(MusicVO music);
	
	public int updateMReadnum(int midx);
	public MusicVO Music(int midx);
	
	public int deleteMusic(int midx);
	public int editMusic(MusicVO music);
	public MusicVO editList(int midx);
}
