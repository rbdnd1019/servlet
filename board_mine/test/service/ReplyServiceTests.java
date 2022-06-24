package service;

import java.util.List;

import org.junit.jupiter.api.Test;

import domain.Reply;
import lombok.extern.log4j.Log4j;

@Log4j
public class ReplyServiceTests {
	private ReplyService replyService = ReplyService.getInstance();
	
	@Test
	public void testExist() {
		log.info(replyService);
	}
	
	@Test
	public void testList() {
		List<Reply> replies = replyService.list(602L);
		log.info(replies);
	}
	
	@Test
	public void testRegister() {
		Reply reply = new Reply();
		reply.setBno(602L);
		reply.setContent("대석이 엄청난 바보");
		reply.setWriter("woong6");
		replyService.register(reply);
		log.info(reply);
	}
	
	@Test
	public void testModify() {
		Reply reply = replyService.get(163L);
		log.info(replyService.get(163L));
		reply.setContent("대석이는 바보입니다");
		replyService.modify(reply);
		log.info(replyService.get(163L));
	}
	
	@Test
	public void testRemove() {
		replyService.remove(164L);
		log.info(replyService.get(164L));
	}
	
}
