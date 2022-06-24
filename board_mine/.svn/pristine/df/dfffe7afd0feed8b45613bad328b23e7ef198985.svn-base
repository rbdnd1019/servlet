package service;

import dao.MemberDao;
import domain.Member;

public class MemberService {
	private static MemberService memberService = new MemberService();
	public static MemberService getInstance() {
		return memberService;
	}
	private MemberService() {}
	
	private MemberDao memberDao = MemberDao.getInstance();
	
	public Member login(Member member) {
		return memberDao.login(member.getId(), member.getPw());
	}
	public void register(Member member) {
		memberDao.register(member);
	}
	public Member get(String id) {
		return memberDao.get(id);
	}
	public void modify(Member member) {
		memberDao.modify(member);
	}
	public void updateAuthToken(Member member) {
		memberDao.updateAuthToken(member);
	}
	public void updateAuth(Member member) {
		memberDao.updateAuth(member);
	}
	public Member findBy(String email) {
		return memberDao.findBy(email);
	}
	public void remove(Member member) {
		// 글 삭제
//		boardDao.modifyNullByWriter(member.getId());
//		replyDao.modifyNullByWriter(member.getId());
		// 댓글 삭제
		memberDao.remove(member.getId());
	}
}
