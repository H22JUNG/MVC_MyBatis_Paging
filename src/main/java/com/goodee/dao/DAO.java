package com.goodee.dao;

import java.util.List;

import com.goodee.vo.BBSInputPageVO;
import com.goodee.vo.VO;
import com.goodee.vo.pageVO;

public interface DAO {
	public int count();
	public List<VO> selectlist1();
	public List<VO> selectlist2();
	public List<VO> selectlist3(pageVO vo);
	
	//강사님 코드
	public List<VO> selectBBSList(BBSInputPageVO vo);
	

}
