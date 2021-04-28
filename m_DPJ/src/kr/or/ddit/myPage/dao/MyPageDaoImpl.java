package kr.or.ddit.myPage.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.qna.vo.QnABoardVO;
import kr.or.ddit.userAll.vo.UserAllVO;

public class MyPageDaoImpl implements IMyPageDao {
	
	// 로그 객체 생성
	private static final Logger RESULT_LOGGER = Logger.getLogger(MyPageDaoImpl.class); // 최종 결과에 대한 로거
		
	// 필요한 객체 생성
	private static IMyPageDao myPageDao;
	private MyPageDaoImpl() {}
	
	public static IMyPageDao getInstance() {
		if(myPageDao == null) { myPageDao = new MyPageDaoImpl(); }
		return myPageDao;
	}
	
	@Override
	public List<QnABoardVO> getAllMyPageQna(SqlMapClient smc, UserAllVO userAllVo) throws SQLException {
		List<QnABoardVO> qnaBoardList = smc.queryForList("mypage.listMyPageQna");
		RESULT_LOGGER.info("■■■ DAO [목록 수] : " + qnaBoardList.size());
		return qnaBoardList;
	}

}
