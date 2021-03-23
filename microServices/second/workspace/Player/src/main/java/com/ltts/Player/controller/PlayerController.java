package com.ltts.Player.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ltts.Player.Dao.PlayerDao;
import com.ltts.Player.model.*;

@RestController

public class PlayerController {
	
	@Autowired
	PlayerDao td;
	
	  @GetMapping(value="/players")
	    public List<Player> index() {
	        return td.getAllPlayers();
	    }

}