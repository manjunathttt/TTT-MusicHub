package musicPack;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.ProductDAOImpl;
import model.ModelExmp;
import java.util.*;

@Controller
public class MusicController 
{
	ProductDAOImpl prod=new ProductDAOImpl();
			@RequestMapping("/")
			public String getIndex()
			{
				return "index";
			}
			@RequestMapping("/home")
			public String home6546(ModelMap model)
			{
				List<ModelExmp> myList=prod.getAll();
				model.addAttribute("allproduct", myList);
				return "home";
			}
			@RequestMapping("/about")
			public String about()
			{
				return "about";
			}
			@RequestMapping("/login")
			public String login()
			{
				return "login";
			}
			@RequestMapping("/register")
			public String register()
			{
				return "register";
			}
			
			
			
			
			ProductDAOImpl p = new ProductDAOImpl();
			
			@RequestMapping("/Products")
			public String pDetails(ModelMap mm)
			{
				mm.addAttribute("data",p.getAll());
				return "home";
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
}



