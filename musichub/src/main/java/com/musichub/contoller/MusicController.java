package com.musichub.contoller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.musichub.dao.ProductService;
import com.musichub.model.ModelExmp;

import java.util.*;


@Controller
public class MusicController 
{
	@Autowired
	private ProductService p;
	
	@RequestMapping("/")
	public String getIndex()
	{
		System.out.println("Hello Index.....");
		return "index";
	}
	
	@RequestMapping("/home")
	public String showData(ModelMap model)
	{
		List<ModelExmp> myList = p.getAll();
		model.addAttribute("allproduct", myList);
		return "home";
	}
	
	@RequestMapping("/contact")
	public String getContact()
	{
		return "contact";
	}
	@RequestMapping("/about")
	public String getAbout()
	{
		return "about";
	}
	@RequestMapping("/addProduct")
	public ModelAndView addProduct(@ModelAttribute ModelExmp me)
	{
		  p.insertRow(me);  
		  return new ModelAndView("redirect:home"); 
		  
	}
	
	@RequestMapping("/footer")
	public String getFooter()
	{
		return "footer";
	}
	@RequestMapping("/header")
	public String getHeader()
	{
		return "header";
	}
	
	@RequestMapping("/login")
	   public String login(@RequestParam (value="error", required = false) String error,
	                       @RequestParam (value="logout", required = false) String logout, Model model
	                       ) 
	   {

	       if(error != null) 
	       {
	           model.addAttribute("error", "Invalid username and password!");
	       }
	       if(logout!= null) 
	       {
	           model.addAttribute("msg", "You have been logged out successfully.");
	       }
	       return "login";
	}
	@RequestMapping("/admin")
    public String adminPage() 
	{
        return "admin";
    }
	@RequestMapping("/success")
	public String getSuccess()
	{
		return "success";
	}
	@RequestMapping(value="/spec_products", method=RequestMethod.GET)
    public ModelAndView getSpecProducts(@RequestParam String pid)
    {
		ModelExmp me = p.getProductById(pid);
		if(me!=null)
		{
			return new ModelAndView("productTable","spe_prod",me);
		}
		else
		{
			return new ModelAndView("error","",null);
		}
    }
	@RequestMapping("/register")  
	 public String registerUser() 
	{  
	  return "register"; 
	 } 
	
	@ModelAttribute("me")
	public ModelExmp getModel()
	{
		return new ModelExmp();
	}
	
	@RequestMapping(value="/edit", method=RequestMethod.POST)  
	 public ModelAndView editUser(@ModelAttribute("me") ModelExmp me) 
	  {  
		int res = p.updateRow(me);  
		if(res>0)
		{
			return new ModelAndView("home", "", null);  
		}
		else
		{
			return new ModelAndView("error","",null);
		}
		
	 } 

	@RequestMapping("/delete")
	public ModelAndView deleteUser(@RequestParam String pid) {
		p.deleteRow(pid);
		return new ModelAndView("redirect:home");
	}
	
}
