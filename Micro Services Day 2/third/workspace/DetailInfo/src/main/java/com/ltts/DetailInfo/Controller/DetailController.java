package com.ltts.DetailInfo.Controller;

import java.util.List;
import java.util.Arrays;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.ltts.DetailInfo.model.*;

@RestController
public class DetailController {

	@Autowired
	RestTemplate rt;

	@RequestMapping("/detail")
	public List<Team> getExternalTeam() {

		/*
		 * List<Team> li = new ArrayList<Team>;
		 * rt.getForObject("http://localhost:8080/teams",Team.class);
		 */

		ResponseEntity<Team[]> response = rt.getForEntity("http://team-service/teams/", Team[].class);
		Team[] teams = response.getBody();
		List<Team> lt = Arrays.asList(teams);
		return lt;
	}

	@RequestMapping("/Pdetail")
	public List<Player> getExternalPlayer() {

		/*
		 * List<Team> li = new ArrayList<Team>;
		 * rt.getForObject("http://localhost:8080/teams",Team.class);
		 */

		ResponseEntity<Player[]> response = rt.getForEntity("http://player-service/players/", Player[].class);
		Player[] players = response.getBody();
		List<Player> pt = Arrays.asList(players);
		return pt;
	}

}