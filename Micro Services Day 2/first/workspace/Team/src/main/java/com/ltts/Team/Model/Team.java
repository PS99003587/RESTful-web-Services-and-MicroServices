package com.ltts.Team.Model;

import org.springframework.boot.autoconfigure.domain.EntityScan;

@EntityScan
public class Team {
	
	private int teamNo;
	private String teamName;
	private String ownerName;
	
	public Team(int teamNo, String teamName, String ownerName) {
		super();
		this.teamNo = teamNo;
		this.teamName = teamName;
		this.ownerName = ownerName;
	}

	public Team() {
		super();
	}
	public int getTeamNo() {
		return teamNo;
	}
	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	
	@Override
	public String toString() {
		return "Team [teamNum=" + teamNo + ", teamName=" + teamName + ", ownerName=" + ownerName + "]";
	}
	
   	

}