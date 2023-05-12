package com.skilldistillery.jpasailinglog.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class CaptainLogTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private CaptainLog captainLog;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPASailingLog");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em =emf.createEntityManager();
		captainLog = em.find(CaptainLog.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		captainLog = null;
	}

	@Test
	void test_trip_not_empty() {
		assertNotNull(captainLog);
		assertEquals("Bahamas", captainLog.getTrip());
	}

}
