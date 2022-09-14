package com.goodee.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.goodee.conf.SqlSessionManager;
import com.goodee.dao.DAO;
import com.goodee.vo.VO;
import com.goodee.vo.pageVO;

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
			pageVO vo = new pageVO();
			int page = Integer.parseInt(request.getParameter("page"));
			vo.setStart((15*page)-15);
			list = dao.selectlist3(vo);
		}
		request.setAttribute("list", list);
	}

	public void listService4(HttpServletRequest request) {
		List<VO> list = null;
		int page = 0; 
		if(request.getParameter("page")==null) {
			list = dao.selectlist2();
		} else {
			pageVO vo = new pageVO();
			page = Integer.parseInt(request.getParameter("page"));
			vo.setStart((15*page)-15);
			list = dao.selectlist3(vo);
		}
		request.setAttribute("list", list);

		if(page<=1) { //첫페이지 일 때 
			request.setAttribute("page", 1);
			request.setAttribute("prevpage", 1);
			request.setAttribute("nextpage", page+1);
		} else {
			request.setAttribute("prevpage", page-1);
			
			if(page<dao.count()/15) { //1. 중간 페이지일 때
				request.setAttribute("page", page);
				request.setAttribute("nextpage", page+1);
			} else if(page==dao.count()/15){ //2. 페이지가 dao.count()/15랑 같을 때
				//나머지가 있으면(더 표시할 게 있으면)
				if(dao.count() % 15 != 0) {
					request.setAttribute("page", dao.count()/15);
					request.setAttribute("nextpage", page+1);
				} else {
					//나머지가 없으면
					request.setAttribute("page", dao.count()/15);
					request.setAttribute("nextpage", dao.count()/15);
				}
			} else {
				//3. 페이지가 dao.count()/15보다 클 때, 다 표시하고 찐 막페이지 되면
				request.setAttribute("page", dao.count()/15+1);
				request.setAttribute("nextpage", dao.count()/15+1);
			}
		}
	}


	public void listService5(HttpServletRequest request) {
		List<VO> list = null;
		if(request.getParameter("page")==null) {
			list = dao.selectlist2();
		} else {
			pageVO vo = new pageVO();
			int page = Integer.parseInt(request.getParameter("page"));
			vo.setStart((15*page)-15);
			list = dao.selectlist3(vo);
			
			
		}
		request.setAttribute("list", list);
		
		// 총 페이지
		if( dao.count()%15 != 0 ) {
			request.setAttribute("page", dao.count()/15+1);
		} else {
			request.setAttribute("page", dao.count()/15);
		}
		
		// 현재 페이지
		//request.setAttribute("nowpage", Integer.parseInt(request.getParameter("page")));
	}

}
