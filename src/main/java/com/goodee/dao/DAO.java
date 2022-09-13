package com.goodee.dao;

import java.util.List;

import com.goodee.vo.VO;

public interface DAO {
	public List<VO> selectlist1();
	public List<VO> selectlist2();
	public List<VO> selectlist3(int page);
}
