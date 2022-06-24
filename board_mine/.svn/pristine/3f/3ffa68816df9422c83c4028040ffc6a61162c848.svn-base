package service;

import java.util.List;

import org.junit.jupiter.api.Test;

import domain.Board;
import domain.Criteria;
import lombok.extern.log4j.Log4j;

@Log4j
public class BoardServiceTests {
	private BoardService boardService = BoardService.getInstance();
	
	
	@Test
	public void testExist() {
		log.info(boardService);
	}
	
	@Test
	public void testList() {
		Criteria cri = new Criteria();
		List<Board> list = boardService.list(cri);
		log.info(boardService.list(cri));
	}
	
	@Test
	public void testRegister() {
		Board board = new Board();
		board.setTitle("테스트");
		board.setContent("테스트");
		board.setWriter("woong6");
		board.setCategory(1);
		boardService.register(board);
		log.info(boardService.get(board.getBno()));
	}
	
	@Test
	public void testGet() {
		Long bno = 728L;
		log.info(boardService.get(bno));
	}
	
	@Test
	public void testCount() {
		Criteria cri = new Criteria();
		cri.setCategory(1);
		List<Board> boards = boardService.list(cri);
		boards.forEach(log::info);
	}
	
	@Test
	public void testModify() {
		Board board = boardService.get(734L);
		log.info(boardService.get(734L));
		board.setTitle("modify");
		board.setContent("modify");
		boardService.modify(board);
		log.info(boardService.get(734L));
	}
	
	@Test
	public void testRemove() {
		boardService.remove(735L);
		log.info(boardService.get(735L));
	}
}
