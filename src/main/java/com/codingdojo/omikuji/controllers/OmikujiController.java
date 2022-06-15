package com.codingdojo.omikuji.controllers;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;

@Controller
public class OmikujiController {

@RequestMapping("/")
    // 3. Method that maps to the request route above
    public String index() { // 3
            return "redirect:/omikuji";
    }
	@RequestMapping("/omikuji")
    // 3. Method that maps to the request route above
    public String form() { // 3
            return "index.jsp";
	}
            
    @PostMapping("/omikuji/data")
    public String formData(@RequestParam(value="num") String num, 
    		@RequestParam(value="city") String city, 
    		@RequestParam(value="person") String person,
    		@RequestParam(value="endeavor") String endeavor,
    		@RequestParam(value="animal") String animal,
    		@RequestParam(value="compliment") String compliment,
    		HttpSession session) {
    			session.setAttribute("num", num);
    			session.setAttribute("city", city);
    			session.setAttribute("person", person);
    			session.setAttribute("endeavor", endeavor);
    			session.setAttribute("animal", animal);
    			session.setAttribute("compliment", compliment);
    		
    		return "redirect:/omikuji/show";
    }
	@RequestMapping("/omikuji/show")
    // 3. Method that maps to the request route above
    public String show(HttpSession session, Model model) { 
			model.addAttribute("number", session.getAttribute("number"));
			model.addAttribute("city", session.getAttribute("city"));
			model.addAttribute("person", session.getAttribute("person"));
			model.addAttribute("endeavor", session.getAttribute("endeavor"));
			model.addAttribute("animal", session.getAttribute("animal"));
			model.addAttribute("compliment", session.getAttribute("compliment"));
            return "show.jsp";
    }
}