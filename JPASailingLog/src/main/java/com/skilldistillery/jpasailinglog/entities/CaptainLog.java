package com.skilldistillery.jpasailinglog.entities;

import javax.persistence.Column;
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
	private String fixes;
	
	@Column(name = "port_of_arrival")
	private String portOfArrival;
	
	@Column(name = "port_of_departure")
	private String portOfDeparture;
	
	@Column(name = "arrival_link")
	private String arrivalLink;
	
	@Column(name = "departure_link")
	private String departureLink;
	
	private String time;
	
	private String distance;

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

	public String getFixes() {
		return fixes;
	}

	public void setFixes(String fixes) {
		this.fixes = fixes;
	}

	public String getPortOfArrival() {
		return portOfArrival;
	}

	public void setPortOfArrival(String portOfArrival) {
		this.portOfArrival = portOfArrival;
	}

	public String getPortOfDeparture() {
		return portOfDeparture;
	}

	public void setPortOfDeparture(String portOfDeparture) {
		this.portOfDeparture = portOfDeparture;
	}

	public String getArrivalLink() {
		return arrivalLink;
	}

	public void setArrivalLink(String arrivalLink) {
		this.arrivalLink = arrivalLink;
	}

	public String getDepartureLink() {
		return departureLink;
	}

	public void setDepartureLink(String departureLink) {
		this.departureLink = departureLink;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getDistance() {
		return distance;
	}

	public void setDistance(String distance) {
		this.distance = distance;
	}

	@Override
	public String toString() {
		return "CaptainLog [id=" + id + ", trip=" + trip + ", fixes=" + fixes + ", portOfArrival=" + portOfArrival
				+ ", portOfDeparture=" + portOfDeparture + ", arrivalLink=" + arrivalLink + ", departureLink="
				+ departureLink + ", time=" + time + ", distance=" + distance + "]";
	}

	
}
