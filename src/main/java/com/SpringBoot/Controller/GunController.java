package com.SpringBoot.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.SpringBoot.DAO.GunsRepository;
import com.SpringBoot.Model.Guns;

import jakarta.servlet.http.HttpSession;

@Controller
//@RestController
public class GunController {
	@Autowired
	GunsRepository gunrepo;
	@Autowired
	HttpSession session1;
	
	@RequestMapping("/")
	public String guns() {
		return "addGuns.jsp";
	}
	@RequestMapping("/addGuns")
	public String addGuns(Guns guns) {
		
		gunrepo.save(guns);
		
			return "addGuns.jsp";	
	}
	@RequestMapping("/showAll")
	public ModelAndView showAllGuns() {
		System.out.println("Show All Guns");
		List<Guns> guns=gunrepo.findAll();
		
		for (Guns guns2 : guns) {
			System.out.println(guns2.getGunName());
		}
		
		ModelAndView modelAndView= new ModelAndView();
		modelAndView.addObject("guns", gunrepo.findAll());
		modelAndView.setViewName("showAllGuns.jsp");
		System.out.println(guns);
			
		return modelAndView;
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteGun(@PathVariable("id") int gunId)
	{
		System.out.println(gunId);
		gunrepo.deleteById(gunId);
		return "redirect:/showAll";
	}
	
	@RequestMapping("/getGunForUpdate")
	public ModelAndView getGunForUpdate(@RequestParam("id") int gunId ) {
		System.out.println("id : "+gunId);
		
		System.out.println(gunrepo.findById(gunId));
		ModelAndView modelAndView = new ModelAndView("update.jsp");
		modelAndView.addObject("gun", gunrepo.findById(gunId).orElse(new Guns()));
		
		
		return modelAndView;
	}
	
	@RequestMapping("/updateGun")
	public String updateGun(Guns guns) {
		System.out.println(guns);
		
		gunrepo.save(guns);
		
		return "redirect:/showAll";
	}
	
	
	
	
//	For Postman Tool Rest Controller
	
//	@GetMapping("/displayall")
//	public List<Guns> display(){
//		return gunrepo.findAll();
//	}
//	
//	@PostMapping("/add")
//	public  void add(@RequestBody Guns guns) {
//		gunrepo.save(guns);
//	}
//	
//	@PutMapping("/update")
//	public void update(@RequestBody Guns guns) {
//		gunrepo.save(guns);
//	}
//	
//	@DeleteMapping("/delete/{id}")
//	public void delete(@PathVariable("id") int gunId) {
//		gunrepo.deleteById(gunId);
//	}
//	
//	
	
	
	
	
}
