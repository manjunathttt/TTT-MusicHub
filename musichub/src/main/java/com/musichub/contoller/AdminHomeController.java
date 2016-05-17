package com.musichub.contoller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.musichub.model.Item;
import com.musichub.model.UsersDetail;
import com.musichub.service.ItemService;
import com.musichub.service.UsersDetailService;

@Controller
@RequestMapping("/admin")
public class AdminHomeController 
{
	@Autowired
    private ItemService itemService;

    @Autowired
    private UsersDetailService usersDetailService;

    @RequestMapping
    public String adminPage() {
        return "admin";
    }
    /*
     * itemInventory method is used to open product management page.
     */
    @RequestMapping("/musicinventory")
    public String itemInventory(Model model) {
        List<Item> items = itemService.getItemList();
        model.addAttribute("items", items);

        return "musicInventory";
    }
    /*
     * userManagement method is used to open user management page.
     */
    @RequestMapping("/user")
    public String userManagement(Model model) {

        List<UsersDetail> usersDetailList = usersDetailService.getAllUsers();
        model.addAttribute("usersDetailList", usersDetailList);

        return "userManagement";
    }
}
