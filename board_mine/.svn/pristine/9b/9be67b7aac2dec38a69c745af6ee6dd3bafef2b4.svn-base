package dao;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Test;

import domain.Board;
import domain.Criteria;
import lombok.extern.log4j.Log4j;

@Log4j
public class BoardDaoTests {
	private BoardDao boardDao = BoardDao.getInstance();
	
	@Test
	public void testExist() {
		log.info(boardDao);
	}
	
	@Test
	public void testList() {
		Criteria cri = new Criteria();
		List<Board> list = boardDao.list(cri);
		log.info(boardDao.list(cri));
	}
	@Test
	public void testRegister() {
		Board board = new Board();
		board.setTitle("안녕111");
		board.setContent("히계세요44");
		board.setWriter("woong6");
		board.setCategory(1);
		boardDao.register(board);
		log.info(boardDao.get(board.getBno()));
	}
	@Test
	public void testCount() {
		Criteria cri = new Criteria();
		cri.setCategory(1);
		List<Board> boards = boardDao.list(cri);
		boards.forEach(log::info);
	}
	@Test
	public void testGet() {
		Long bno = 728L;
		log.info(boardDao.get(bno));
	}
	@Test
	public void testModify() {
		Board board = boardDao.get(734L);
		log.info(boardDao.get(734L));
		board.setTitle("수정수정");
		board.setContent("수정수정");
		boardDao.modify(board);
		log.info(boardDao.get(734L));
	}
	
	@Test
	public void testModifyNullByWriter() {
		Board board = boardDao.get(602L);
		log.info(board);
		boardDao.modifyNullByWriter(board.getWriter());
		log.info(board);
	}
	
	@Test
	public void testRemove() {
		boardDao.remove(730L);
		log.info(boardDao.get(730L));
	}
}
