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
	
	@Override
	public CaptainLog create(CaptainLog captainLog) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPASailingLog");
		EntityManager em = emf.createEntityManager();

		// start the transaction
		em.getTransaction().begin();
		
		// write the create to the database
		em.persist(captainLog);
		
		// update the "local" Customer object
		em.flush();
		
		// commit the changes (actually perform the operation)
		em.getTransaction().commit();

		// return the Customer object
		return captainLog;
	}

	@Override
	public CaptainLog update(int id, CaptainLog captainLog) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPASailingLog");
		EntityManager em = emf.createEntityManager();
		System.out.println("begining update transaction");
		// start the transaction
		em.getTransaction().begin();
		
		  CaptainLog managed = em.find(CaptainLog.class, id);
		  //set fields
		  managed.setTrip(captainLog.getTrip());
		  managed.setFixes(captainLog.getFixes());
		  managed.setPortOfArrival(captainLog.getPortOfArrival());
		  managed.setPortOfDeparture(captainLog.getPortOfDeparture());
		  managed.setArrivalLink(captainLog.getArrivalLink());
		  managed.setDepartureLink(captainLog.getDepartureLink());
		  managed.setTime(captainLog.getTime());
		  managed.setDistance(captainLog.getDistance());
System.out.println("set values" + managed);
		em.flush();
		
		// commit the changes (actually perform the operation)
		em.getTransaction().commit();
	System.out.println("commited " + managed);
		return managed;
	}

	@Override
	public boolean destroy(int id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPASailingLog");
		EntityManager em = emf.createEntityManager();
		
		CaptainLog captainLog = em.find(CaptainLog.class, id);
		if (captainLog == null) {
			return false;
		}
		em.getTransaction().begin();

		em.remove(captainLog); // performs the delete on the managed entity
		
		em.getTransaction().commit();
		
		
		if(em.contains(captainLog)) {
			return false;
		}
		
		return true;
	}


	
}
