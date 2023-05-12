package com.skilldistillery.jpasailinglog.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpasailinglog.entities.CaptainLog;

@Service
@Transactional
public class CaptainDAOImpl implements CaptainDAO{
	
	@PersistenceContext
	public EntityManager em;

	@Override
	public CaptainLog findById(int captainLogId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CaptainLog> findAll() {
		String jpql = "SELECT c FROM CaptainLog c";
		return em.createQuery(jpql, CaptainLog.class).getResultList();
	}

	@Override
	public CaptainLog create(CaptainLog captainLog) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CaptainLog update(int captainId, CaptainLog captainLog) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int captainId) {
		// TODO Auto-generated method stub
		return false;
	}

}
