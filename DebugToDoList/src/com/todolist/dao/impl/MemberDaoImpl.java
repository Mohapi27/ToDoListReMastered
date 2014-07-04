package com.todolist.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.todolist.dao.MemberDao;
import com.todolist.dao.RoleDao;
import com.todolist.model.Member;

@Repository("memberDao")
@Transactional(propagation = Propagation.SUPPORTS)
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private RoleDao roleDao;
	@Transactional(readOnly = false,propagation = Propagation.REQUIRED)
	public Long saveMember(Member member) {
	member.getRoles().add(roleDao.getRole(1L));
		sessionFactory.getCurrentSession().save(member);
		
		return member.getMemberId();
	}

	@Transactional(readOnly = false)
	public Long updateMember(Member member) {
		
		sessionFactory.getCurrentSession().update(member);
		
		return member.getMemberId();
	}

	@Transactional(readOnly = true)
	public Member findMemberByName(String username) {
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Member.class);
		
		criteria.add(Restrictions.eq("username", username));		
		
		return (Member) criteria.uniqueResult();
	}

	@Transactional(readOnly = true )
	@SuppressWarnings("unchecked")
	public List<Member> getAllMembers() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Member.class);
		return (List<Member>)criteria.list();	}

	@Transactional(readOnly = true)
	public Member getMember(Long memberId) {
		
		return (Member) sessionFactory.getCurrentSession().get(Member.class, memberId);
	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly=true)
	public List<Member> getMembersPaging(int start,int end) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Member.class);
		criteria.setFirstResult(start);
		criteria.setMaxResults(end);
		
		return (List<Member>)criteria.list();
	}

}
