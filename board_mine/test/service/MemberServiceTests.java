package service;

import org.junit.jupiter.api.Test;

import domain.Member;
import lombok.extern.log4j.Log4j;

@Log4j
public class MemberServiceTests {
	private MemberService memberService = MemberService.getInstance();
	
	@Test
	public void testExist() {
		log.info(memberService);
	}
	
	@Test
	public void testLogin() {
		Member member = new Member();
		member.setId("woong6");
		member.setPw("2345");
		memberService.login(member);
		log.info(member);
	}
	
	@Test
	public void testRegister() {
		Member member = new Member();
		member.setId("woong8");
		member.setPw("1234");
		member.setName("황규웅");
		memberService.register(member);
		log.info(memberService.get("woong8"));
	}
	
	@Test
	public void testGet() {
		String id = "woong6";
		log.info(memberService.get(id));
	}
	
	@Test
	public void testModify() {
		Member member = new Member();
		log.info(memberService.get("woong6"));
		member = memberService.get("woong6");
		member.setName("이름");
		member.setPw("2345");
		memberService.modify(member);
		log.info(member);
	}
	
	@Test
	public void testUpdateAuthToken() {
		Member member = new Member();
		log.info(member);
		member = memberService.get("woong6");
		member.setAuthToken("2");
		memberService.updateAuthToken(member);
		log.info(member);
	}
	
	@Test
	public void testUpdateAuth() {
		Member member = new Member();
		member = memberService.get("woong6");
		log.info(member);
		member.setAuth("2");
		memberService.updateAuth(member);
		log.info(member);
	}
	
	@Test
	public void testFindBy() {
		String email = "rbdnd112@naver.com";
		log.info(memberService.findBy(email));
	}
	
	@Test
	public void testRemove() {
		Member member = new Member();
		member.setId("woong8");
		memberService.remove(member);
		log.info(member);
	}
}
