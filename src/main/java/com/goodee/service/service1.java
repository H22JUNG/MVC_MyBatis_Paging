package com.goodee.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.goodee.conf.SqlSessionManager;
import com.goodee.dao.DAO;
import com.goodee.vo.VO;

public class service1 {
	
	SqlSessionFactory factory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = factory.openSession();
	DAO dao = sqlSession.getMapper(DAO.class);
	
	public void listService1(HttpServletRequest request) {
		List<VO> list = dao.selectlist1();
		request.setAttribute("list", list);
	}
	public void listService2(HttpServletRequest request) {
		List<VO> list = dao.selectlist2();
		request.setAttribute("list", list);
	}
	public void listService3(HttpServletRequest request) {
		List<VO> list = null;
		if(request.getParameter("page")==null) {
			list = dao.selectlist2();
		} else {
			list = dao.selectlist3(Integer.parseInt(request.getParameter("page")));
		}
		
		request.setAttribute("list", list);
	}
}
