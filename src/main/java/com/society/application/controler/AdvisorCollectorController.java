package com.society.application.controler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.AdvisorCollectorDetails;
import com.society.application.repository.AdvisorCollectorDetailsRepo;

@Controller
public class AdvisorCollectorController {

	@Autowired
	AdvisorCollectorDetailsRepo advisorCollectorDetailsRepo;
	

	//COLLECTOR/ADVISOR TREE

	@GetMapping("/advisorTree")
	public String advisorTree() {
		return "advisor/advisorTree";
	}
	
	@GetMapping("/Fetchadvdetail")
	@ResponseBody
	public List<AdvisorCollectorDetails> FetchDetails(HttpServletRequest hp){
		   String ids = hp.getParameter("id");
		   int i =Integer.parseInt(ids);		   
		   List<AdvisorCollectorDetails> data1 = advisorCollectorDetailsRepo.findByid(i);
			
		return data1;
		
	}
	
	@GetMapping("/FetcHPositiondata")
	@ResponseBody
	public List<AdvisorCollectorDetails> FetchDetailsforTable(HttpServletRequest hp){
		   String ids = hp.getParameter("id");
		   int i =Integer.parseInt(ids);		   
		   List<AdvisorCollectorDetails> data2 = advisorCollectorDetailsRepo.findByid(i);
		return data2;
	}
}
