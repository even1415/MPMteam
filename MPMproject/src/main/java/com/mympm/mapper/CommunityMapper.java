package com.mympm.mapper;

import java.util.List;

import com.mympm.domain.CommunityVO;

public interface CommunityMapper {

	//c: create, r: read, u: update, d: delete -> crud
		int ctwriterinsert(CommunityVO cvo); //�Խñ� �߰�
		List<CommunityVO> ctreadList(); //��ü Ŀ�´�Ƽ �Խñ� ��ȸ
		int updateUsernum(CommunityVO cvo); //Ŀ�´�Ƽ �Խñ� ����
		int deleteUsernum(int ct_idx); //Ŀ�´�Ƽ �Խñ� ����
}
