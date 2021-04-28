package kr.or.ddit.myPage.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.common.handler.CommandHandler;
import kr.or.ddit.myPage.service.IMyPageService;
import kr.or.ddit.myPage.service.MyPageServiceImpl;
import kr.or.ddit.qna.vo.QnABoardVO;
import kr.or.ddit.userAll.vo.UserAllVO;
import kr.or.ddit.userDdit.vo.UserDditVO;

public class MyPageBoardHandler implements CommandHandler {
	private static final String VIEW_PAGE = "/WEB-INF/view/myPage/myPageBoard.jsp";

	@Override
	public boolean isRedirect(HttpServletRequest req) {
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
			HttpSession session = req.getSession(true); // 세션 가져오기
			String userId = (String) session.getAttribute("USERID");
			System.out.println("userId : " + userId);
			
			// Vo 객체 생성
			UserAllVO userAllVo = new UserAllVO();
			userAllVo.setUserId(userId);
			
			// 서비스 객체 생성하기
			IMyPageService myPageService = MyPageServiceImpl.getInstance();
			
			// 문의 게시글 목록 조회
			List<QnABoardVO> qnaBoardList = myPageService.getAllMyPageQna(userAllVo);
			
			req.setAttribute("qnaBoardList", qnaBoardList);
			
			return VIEW_PAGE;
	}
}
