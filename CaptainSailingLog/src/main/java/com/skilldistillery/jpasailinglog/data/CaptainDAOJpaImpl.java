package com.skilldistillery.jpasailinglog.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpasailinglog.entities.CaptainLog;

@Service
@Transactional
public class CaptainDAOJpaImpl implements CaptainDAO{
	
	@PersistenceContext
	public EntityManager em;

	@Override
	public CaptainLog findById(int id) {
		return em.find(CaptainLog.class, id);
	}

	@Override
	public List<CaptainLog> findAll() {
		String jpql = "SELECT c FROM CaptainLog c";
		return em.createQuery(jpql, CaptainLog.class).getResultList();
	}

	
}
