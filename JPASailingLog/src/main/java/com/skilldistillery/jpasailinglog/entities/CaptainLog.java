package com.skilldistillery.jpasailinglog.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="captain_log")
public class CaptainLog {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String trip;
	
	private String upgrades;

	public CaptainLog() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTrip() {
		return trip;
	}

	public void setTrip(String trip) {
		this.trip = trip;
	}

	public String getUpgrades() {
		return upgrades;
	}

	public void setUpgrades(String upgrades) {
		this.upgrades = upgrades;
	}

	@Override
	public String toString() {
		return "CaptainLog [id=" + id + ", trip=" + trip + ", upgrades=" + upgrades + "]";
	}
	
	
}
