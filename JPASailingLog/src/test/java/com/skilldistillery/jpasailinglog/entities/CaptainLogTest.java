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
	void test_Log_not_empty() {
		assertNotNull(captainLog);
		
		assertEquals("Bahamas", captainLog.getTrip());
		assertEquals("Why's the rum always gone.", captainLog.getFixes());
		assertEquals("George Town, The Bahamas", captainLog.getPortOfArrival());
		assertEquals("27.759501, -82.635008", captainLog.getPortOfDeparture());
		assertEquals("https://goo.gl/maps/etVmS63d2gGkbuhc6", captainLog.getArrivalLink());
		assertEquals("https://goo.gl/maps/xB9qYYcZQQMRcXeR8", captainLog.getDepartureLink());
		assertEquals("80hrs", captainLog.getTime());
		assertEquals("635nm", captainLog.getDistance());
	}

}
