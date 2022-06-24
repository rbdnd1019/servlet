package dao;

import static org.junit.Assert.assertNotNull;

import org.junit.jupiter.api.Test;

import domain.Member;
import lombok.extern.log4j.Log4j;

@Log4j
public class MemberDaoTests {
	private MemberDao memberDao = MemberDao.getInstance();
	
	@Test
	public void testExist() {
		log.info(memberDao);
	}
	
	@Test
	public void testLogin() {
		Member member = memberDao.login("woong6", "1234");
		log.info(member);
		assertNotNull(member);
	}
	@Test
	public void testRegister() {
		Member member = new Member();
		member.setId("woong7");
		member.setPw("1234");
		member.setName("황규웅");
		memberDao.register(member);
		log.info(memberDao.get("woong7"));
	}
	
	@Test
	public void testModify() {
		Member member = new Member();
		log.info(memberDao.get("woong6"));
		member = memberDao.get("woong6");
		member.setName("이름");
		member.setPw("2345");
		memberDao.modify(member);
		log.info(member);
	}
	
	@Test 
	public void testRemove() {
		memberDao.remove("woong7");
		log.info(memberDao.get("woong7"));
	}

	@Test 
	public void testGet() {
		String id = "woong6";
		log.info(memberDao.get(id));
	}
	
	@Test
	public void testFindBy() {
		String email = "rbdnd112@naver.com";
		log.info(memberDao.findBy(email));
	}
	
	@Test
	public void testUpdateAuthToken() {
		Member member = new Member();
		log.info(member);
		member = memberDao.get("woong6");
		member.setAuthToken("2");
		memberDao.updateAuthToken(member);
		log.info(member);
	}
	
	@Test
	public void testUpdateAuth() {
		Member member = new Member();
		member = memberDao.get("woong6");
		log.info(member);
		member.setAuth("2");
		memberDao.updateAuth(member);
		log.info(member);
	}
	
}
