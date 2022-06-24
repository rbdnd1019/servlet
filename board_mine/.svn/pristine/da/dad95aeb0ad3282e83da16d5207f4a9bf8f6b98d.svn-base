package service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import dao.AttachDao;
import dao.AttachDaoTests;
import dao.BoardDao;
import dao.ReplyDao;
import domain.Attach;
import domain.Board;
import domain.Criteria;

public class BoardService {
	private static BoardService boardService = new BoardService();
	public static BoardService getInstance() {
		return boardService;
	}
	private BoardDao boardDao = BoardDao.getInstance();
	private AttachDao attachDao = AttachDao.getInstance();
	private ReplyDao replyDao = ReplyDao.getInstance();
	
	private BoardService() {}
	
	public List<Board> list(Criteria criteria) {
		List<Board> list = boardDao.list(criteria);
		
		// 갤러리일 경우
		if(criteria.getCategory() == 3) {
			list.forEach(board->{
				List<Attach> attachlist = attachDao.list(board.getBno());
				List<Attach> attachlist2 = new ArrayList<>();
				for(Attach attach : attachlist) {
					if(attach.isImage()) {
						attachlist2.add(attach);
						break;
					}
				}
				board.setAttachs(attachlist);
			});
		}
		return list;
	}

	public void register(Board board) {
		boardDao.register(board);
		for(Attach attach : board.getAttachs()) {
			attach.setBno(board.getBno());
			attachDao.insert(attach);
		}
	}

	public int count(Criteria cri) {
		return boardDao.count(cri);
	}

	public Board get(Long bno) {
		Board board = boardDao.get(bno);
		board.setAttachs(attachDao.list(board.getBno()));
		return board;
	}

	public void modify(Board board) {
		boardDao.modify(board);
	}

	public void remove(Long bno) {
		List<Attach> attachs = attachDao.list(bno);
		
		String saveDir = "D:\\upload";
		for(Attach attach : attachs) {
			File file = new File(saveDir, attach.getPath());
			file = new File(file, attach.getUuid());
			System.out.println(file);
			file.delete();
		}
		attachDao.remove(bno);
		replyDao.removeAll(bno);
		boardDao.remove(bno);
	}
	
	


	
}
