package com.ltts.Player.model;

import org.springframework.boot.autoconfigure.domain.EntityScan;

@EntityScan
public class Player {
	private int playerNum;
	private String playerName;
	private String teamName;
	
	public int getPlayerNum() {
		return playerNum;
	}
	public void setPlayerNum(int playerNum) {
		this.playerNum = playerNum;
	}
	public String getPlayerName() {
		return playerName;
	}
	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	
	public Player(int playerNum, String playerName, String teamName) {
		super();
		this.playerNum = playerNum;
		this.playerName = playerName;
		this.teamName = teamName;
	}
	
	public Player() {
		super();
	}
	
	@Override
	public String toString() {
		return "Player [playerNum=" + playerNum + ", playerName=" + playerName + ", teamName=" + teamName + "]";
	}	
}
