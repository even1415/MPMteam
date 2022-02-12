package com.mympm.mapper;

import java.util.List;

import com.mympm.domain.CommunityVO;

public interface CommunityMapper {

	//c: create, r: read, u: update, d: delete -> crud
		int ctwriterinsert(CommunityVO cvo); //게시글 추가
		List<CommunityVO> ctreadList(); //전체 커뮤니티 게시글 조회
		int updateUsernum(CommunityVO cvo); //커뮤니티 게시글 수정
		int deleteUsernum(int ct_idx); //커뮤니티 게시글 삭제
}
