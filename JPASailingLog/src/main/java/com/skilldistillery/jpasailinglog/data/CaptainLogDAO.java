package com.skilldistillery.jpasailinglog.data;

import com.skilldistillery.jpasailinglog.entities.CaptainLog;

public interface CaptainLogDAO {
	
	public CaptainLog create(CaptainLog log);
	
	public CaptainLog update(int id, CaptainLog log);
	
	public boolean destroy(int id);

}
