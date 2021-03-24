package com.ltts.Player.Dao;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.ltts.Player.model.Player;
@Repository

public class PlayerDao {
	public List<Player> getAllPlayers()
	{
		List <Player> li = new ArrayList<Player>();
		li.add(new Player(1, "Virat", "India"));	
		li.add(new Player(2, "Rohit", "India"));		
		li.add(new Player(3, "Yuvraj", "India"));
		li.add(new Player(4, "Sachin", "India"));
		return li;		
		
	}

}