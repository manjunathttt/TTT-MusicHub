package com.musichub.contoller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.musichub.dao.CustomerService;
import com.musichub.dao.ProductService;
import com.musichub.model.Customer;
import com.musichub.model.ModelExmp;

import java.util.*;


@Controller
public class MusicController 
{
	
	@Autowired
	private ProductService p;
	
	@Autowired
	private CustomerService c;
	
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
	
	@RequestMapping("/register")  
	 public String registerUser() 
	{  
	  return "register"; 
	 } 
	
	@RequestMapping("/addp")  
	 public String addProd() 
	{  
	  return "addProduct"; 
	 }
	@ModelAttribute("me")
	public ModelExmp getModel()
	{
		return new ModelExmp();
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
	
	// Adding Products to database
	@ModelAttribute("pro")
	public ModelExmp construct()
	{
		return new ModelExmp();	
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute ModelExmp me)
	{
		
		System.out.println("Name!!!@@#$#$#%"+me.getName());
		  p.insertRow(me);  
		  return "success"; 
	}
	
	//Adding customer to database
	@ModelAttribute("cs")
	public Customer construct1()
	{
		return new Customer();	
	}
	@RequestMapping(value="/addc",method=RequestMethod.POST)
	public String addCustomer(@ModelAttribute Customer c1)
	{
		
		System.out.println("Name!!!@@#$#$#%"+c1.getCusName());
		  c.addCus(c1);  
		  return "userSuccess"; 
	}
	@RequestMapping(value="/edit", method=RequestMethod.GET)   
	 public ModelAndView editProd(@RequestParam String pid , @ModelAttribute("me") ModelExmp me) 
	  {  
		System.out.println(pid);
		me = p.getProductById(pid);
		p.updateRow(me);
		if(me!=null)
		{
			return new ModelAndView("edit", "productObject", me);  
		}
		else
		{
			return new ModelAndView("error","",null);
		}
	} 
	

	/*@RequestMapping("/delete")
	public ModelAndView deleteUser(@RequestParam String pid) {
		p.deleteRow(pid);
		return new ModelAndView("redirect:home");
	}*/
	@RequestMapping("/delete")
	public String deleteUser(@RequestParam String pid) {
		p.deleteRow(pid);
		return "home";
	}
	
}
