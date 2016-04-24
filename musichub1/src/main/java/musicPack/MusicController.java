package musicPack;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

import dao.ProductService;
import model.ModelExmp;

@Controller
public class MusicController 
{
	@Autowired
	private ProductService p ;
	//ProductDAOImpl prod=new ProductDAOImpl();
			@RequestMapping("/")
			public String getIndex()
			{
				return "index";
			}
			@RequestMapping("/home")
			public String showData(ModelMap model)
			{
				List<ModelExmp> myList=p.getAll();
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
			@RequestMapping("/guitar")
			public String guitar()
			{
				return "guitar";
			}
			@RequestMapping("/contact")
			public String contact()
			{
				return "contact";
			}
			
			
			/*public ModelAndView getAll(@RequestParam String id)
			{
				ModelExmp m = p.getProductById(id);
				return new ModelAndView("home","spe_prod",m);
			}*/
			/*@RequestMapping("/Products")
			public String pDetails(ModelMap mm)
			{
				mm.addAttribute("data",p.getAll());
				return "home";
			}*/
		    /*public ModelAndView getSpecProducts(@RequestParam String pid)
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
		    }*/
}



