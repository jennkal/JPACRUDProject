package com.skilldistillery.jpasailinglog.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.jpasailinglog.entities.CaptainLog;

public class CaptainLogDAOImpl implements CaptainLogDAO{

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
		
		// start the transaction
		em.getTransaction().begin();
		
		  CaptainLog managed = em.find(CaptainLog.class, id);
		  //set fields
		  managed.setTrip(captainLog.getTrip());
		  
		  //dont have to em.persist(actor);

		em.flush();
		
		// commit the changes (actually perform the operation)
		em.getTransaction().commit();
	
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
