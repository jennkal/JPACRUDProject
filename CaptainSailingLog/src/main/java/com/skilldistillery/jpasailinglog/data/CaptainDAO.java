package com.skilldistillery.jpasailinglog.data;

import java.util.List;

import com.skilldistillery.jpasailinglog.entities.CaptainLog;

public interface CaptainDAO {
	
	CaptainLog findById(int captainLogId);
	List<CaptainLog> findAll();
	CaptainLog create(CaptainLog captainLog);
	CaptainLog update(int id, CaptainLog captainLog);
	boolean destroy(int id);

}
