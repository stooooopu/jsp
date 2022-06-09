package com.study.jsp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.jsp.VO.ActorVO;

// RestController가 아님
@Controller
public class HomeController {

	@GetMapping("/home")
	public String loadHomePage(ModelMap map) {
		// HashMap의 map (key , val)
		map.addAttribute("name", "지유");
		map.addAttribute("phoneNum",1234);
		map.addAttribute("size", 85);
		
		List<String> list = new ArrayList<String>();
		list.add("도");
		list.add("레");
		list.add("미");
		
		map.addAttribute("piano", list);
		
		
		List<ActorVO> actorList = new ArrayList<ActorVO>();
		ActorVO a1 = new ActorVO();
		a1.name = "이병헌";
		a1.age = 51;
		
		ActorVO a2 = new ActorVO();
		a2.name = "차승원";
		a2.age = 52;
		
		actorList.add(a1);
		actorList.add(a2);
		
		map.addAttribute("actorList", actorList);
		
		
		List<Map<String,Object>> mapList = new ArrayList<Map<String,Object>>();
		
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("no", 300);
		
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("no", 100);
		
		mapList.add(map1);
		mapList.add(map2);
		map.addAttribute("mapList", mapList);
		
		
		
		return "index"; // jsp파일명으로 리턴
	}
	
	@GetMapping("/board")
	public String loadBoardPage(ModelMap map, HttpSession httpSession) {
		
		Map<String, Object> data = new HashMap<String, Object>();
		
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("Company", "Alfreds Futterkiste");
		map1.put("Contact", "Maria Anders");
		map1.put("Country", "Germany");
		
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("Company", "Centro comercial Moctezuma");
		map2.put("Contact", "Francisco Chang");
		map2.put("Country", "Mexico");
		
		Map<String, Object> map3 = new HashMap<String, Object>();
		map3.put("Company", "Ernst Handel");
		map3.put("Contact", "Roland Mendel");
		map3.put("Country", "Austria");
		
		list.add(map1);
		list.add(map2);
		list.add(map3);
	
		data.put("list", list);
		map.addAttribute("data", data);
		
		// 밑에 login에서 저장한 session data 가져오기
		String userId = (String)httpSession.getAttribute("userId"); // 내가 지정한 key이름
		
		// redirect : 다시 내가 지정한 곳으로 가라
		if(userId == null) {
			return "redirect:/login";
		}
		
		map.addAttribute("userNo", 10);
		map.addAttribute("userId", userId);
		
		System.out.println("session에서 가져온 Id데이터==> "+userId);
		
		
		
		return "board";
	}
	
	@GetMapping("/")
	public String loadMainPage() {
		return "home";
	}
	
	@GetMapping("/login")
	public String loadLoginPage() {
		return "login";
	}
	
	@PostMapping("/login")
	public @ResponseBody boolean callLogin(@RequestBody Map<String,Object> data, HttpSession httpSession) {
		String userId = (String) data.get("userId");
		String userPassword = (String) data.get("userPassword");
		
		System.out.println(userId);
		System.out.println(userPassword);
		
		// session에 데이터 set
		httpSession.setAttribute("userId", userId);
		// 원래 password는 session에 넣지 않음
		httpSession.setAttribute("userPassword", userPassword);
		return true;
	}
	
	@GetMapping("/logout")
	public String goLoginPage(HttpSession httpSession) {
		httpSession.removeAttribute("userId");
		httpSession.removeAttribute("userPassword");
		
		return "login";
	}
}
