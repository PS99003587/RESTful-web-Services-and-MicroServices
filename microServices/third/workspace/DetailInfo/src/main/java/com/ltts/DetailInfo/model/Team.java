package com.ltts.DetailInfo.model;

public class Team {

	private int tno;
	private String tname;
	private String towner;

	public Team(int tno, String tname, String towner) {
		super();
		this.tno = tno;
		this.tname = tname;
		this.towner = towner;
	}

	public Team() {
		super();
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTowner() {
		return towner;
	}

	public void setTowner(String towner) {
		this.towner = towner;
	}
}