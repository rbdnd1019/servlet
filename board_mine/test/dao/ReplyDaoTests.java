package dao;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;

import domain.Reply;
import lombok.extern.log4j.Log4j;

@Log4j
public class ReplyDaoTests {
	private ReplyDao replyDao = ReplyDao.getInstance();
	
	@Test
	public void testExist() {
		log.info(replyDao);
	}
	
	@Test
	public void testList() {
		List<Reply> replies = replyDao.list(702L);
		log.info(replies);
	}
	
	@Test
	public void testGet() {
		log.info(replyDao.get(161L));
		
	}
	
	@Test
	public void testRegister() {
		Reply reply = new Reply();
		reply.setBno(602L);
		reply.setContent("대석이 바보");
		reply.setWriter("woong6");
		replyDao.register(reply);
		log.info(reply);
		}
	
	@Test
	public void testModify() {
		Reply reply = replyDao.get(162L);
		log.info(replyDao.get(162L));
		reply.setContent("정수정수");
		replyDao.modify(reply);
		log.info(replyDao.get(162L));
	}
	
	@Test
	public void testModifyNullByWriter() {
		Reply reply = replyDao.get(162L);
		log.info(reply);
		replyDao.modifyNullByWriter(reply.getWriter());
		log.info(reply);
	}
	
	@Test
	public void testReMove() {
		replyDao.remove(162L);
		log.info(replyDao.get(162L));
	}

	@Test
	public void testReMoveAll() {
		replyDao.removeAll(702L);
		log.info(replyDao.get(161L));
		
	}
}
