package dao;

import org.junit.jupiter.api.Test;

import domain.Attach;
import lombok.extern.log4j.Log4j;

@Log4j
public class AttachDaoTests {
	private AttachDao attachDao = AttachDao.getInstance();
	
	@Test
	public void testExist() {
		log.info(attachDao);
	}
	
	@Test
	public void testList() {
		log.info(attachDao.list(703L));
	}
	
	@Test
	public void testRemove() {
		attachDao.remove(703L);
		log.info(attachDao.list(703L));
	}
	
	@Test
	public void testInsert() {
		Attach attach = new Attach();
		attach.setUuid("test");
		attach.setOrigin("test");
		attach.setPath("test");
		attach.setImage(true);
		attach.setOrd(0);
		attach.setBno(682L);
		attachDao.insert(attach);
		log.info(attach);
	}
}
