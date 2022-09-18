package com.goodee.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.goodee.conf.SqlSessionManager;
import com.goodee.dao.DAO;
import com.goodee.vo.BBSInputPageVO;
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
		pageVO vo = new pageVO();
	/*	if(request.getParameter("page")==null) {
			page = 1 ;
			//vo.setStart(0);
			//list = dao.selectlist3(vo);
		} else {
			page = Integer.parseInt(request.getParameter("page"));
			//vo.setStart((15*page)-15);
			//list = dao.selectlist3(vo);
			//현재페이지
			request.setAttribute("nowpage", Integer.parseInt(request.getParameter("page")));
		//} */
			
		int page = Integer.parseInt(request.getParameter("page"));
		vo.setStart((15*page)-15);
		list = dao.selectlist3(vo);
		
		request.setAttribute("list", list);
		//현재페이지
		request.setAttribute("nowpage", Integer.parseInt(request.getParameter("page")));
		
		// 총 페이지
		if( dao.count()%15 != 0 ) {
			request.setAttribute("page", dao.count()/15+1);
		} else {
			request.setAttribute("page", dao.count()/15);
		}
	}
	
	public void listService6(HttpServletRequest request) {
		//페이지
		int page = Integer.parseInt(request.getParameter("page"));
		
		BBSInputPageVO inputVO = new BBSInputPageVO();
		//전체 row
		inputVO.setTotal(dao.count());
		//현재페이지
		inputVO.setNowPage(page);
		//블럭 당 페이지 개수
		inputVO.setCntPerPage(15);
		//페이지 옮겼을 때 시작하는 row번호
		inputVO.setStart((page-1)*inputVO.getCntPerPage());
		//S페이지 옮겼을 때 끝나는 row번호
		inputVO.setEnd(page*inputVO.getCntPerPage());
		
		//블록당 페이지
		inputVO.setCntPerBlock(10);
		//총 페이지(1부터 30까지)
		int totalpage = dao.count()/15;
		//totalpage = (dao.count()%15 == 0) ? totalpage : totalpage+1;
		totalpage = (inputVO.getTotal() % inputVO.getCntPerPage() == 0) ? totalpage : totalpage+1;
		
		inputVO.setTotalPage(totalpage);
		
		//블록 당 첫 페이지 설정(1~10=0, 11~20=10)
		int initPage = (inputVO.getNowPage()-1/inputVO.getCntPerBlock()*inputVO.getCntPerBlock());
		//현재 페이지가 3페이지라고 했을 때, index가 0부터 시작해서 -1빼주기
		//2/10일 때 몫이 0이니까 첫페이지
		//현재 페이지가 15페이지라고 했을 때, 14/10은 1 => 두번째 페이지
		
		//initPage는 0부터 시작하니까 1로 시작하는 시작 페이지 만들기
		int startPage=initPage+1;
		inputVO.setStartPage(startPage);
		
		//블록 당 끝페이지(첫번째 블록일 때 0+10=10, 두번째 블록일 때 10+10=20)
		int endPage = initPage+inputVO.getCntPerBlock();
		//row 다 출력하고 나서 끝페이지에 도달했을 때
		if(endPage > inputVO.getTotalPage()) {
			endPage = inputVO.getTotalPage();
		}
		inputVO.setEndPage(endPage);
		
		//Mapper에 limit {start row}랑 {15}개 넣어주기
		request.setAttribute("list", dao.selectBBSList(inputVO));
		//result에 출력할것
		request.setAttribute("page", inputVO);
		
	}

}
