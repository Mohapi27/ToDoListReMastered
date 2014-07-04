package com.todolist.service;

import java.util.List;

import com.todolist.model.Member;

public interface MemberService {
	
	Long saveMember(Member member);
	Long updateMember(Member member);
	Member findMemberByName(String username);
	List<Member> getAllMembers();
	List<Member> getMembersPaging(int start, int end);
	Member getMember(Long memberId);
}
