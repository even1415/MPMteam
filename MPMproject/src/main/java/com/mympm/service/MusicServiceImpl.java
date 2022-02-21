package com.mympm.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mympm.domain.MusicVO;
import com.mympm.mapper.MusicMapper;

@Service
public class MusicServiceImpl implements MusicService {
	
	@Inject
	private MusicMapper musicMapper;

	@Override
	public int insertMusic(MusicVO music) {
		return this.musicMapper.insertMusic(music);
	}

	@Override
	public int getTotalCount(MusicVO music) {
		return this.musicMapper.getTotalCount(music);
	}

	@Override
	public List<MusicVO> listMusic(MusicVO music) {
		return this.musicMapper.listMusic(music);
	}

	@Override
	public int updateMReadnum(int midx) {
		return this.musicMapper.updateMReadnum(midx);
	}

	@Override
	public int deleteMusic(int idx_fk) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editMusic(MusicVO music) {
		return this.musicMapper.editMusic(music);
	}

	@Override
	public MusicVO editList(int midx) {
		return this.musicMapper.editList(midx);
	}

	@Override
	public MusicVO Music(int midx) {
		return this.musicMapper.Music(midx);
	}
}
