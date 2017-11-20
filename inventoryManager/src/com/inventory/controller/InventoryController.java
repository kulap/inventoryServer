package com.inventory.controller;

import java.util.List;

//import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inventory.entity.Inventory;
//import com.inventory.entity.Login;
import com.inventory.entity.Product;
//knistane
import com.inventory.service.InventoryService;
//import com.inventory.service.LoginService;
//knistane

@Controller
public class InventoryController {
	
	@Autowired
	private InventoryService inventoryService;
	//private LoginService loginservice;
	
   /* @RequestMapping(value = "/home")
    public String loadHome(@ModelAttribute  ArrayList<Product> products) {
        return "inventoryHome";
    }*/
	//knistane -login	
/*	@RequestMapping(value = "/login", method=RequestMethod.GET )
    public String loadloginforuser(Model model) {
		model.addAttribute("verifyLoginUrl", "/inventoryManager/verifyLogin");
        model.addAttribute("login",new Login());
        return "loginpage";
    }

    @RequestMapping(value = "/verifyLogin", method=RequestMethod.GET )
    public String verifyLoginCredentials(@ModelAttribute Login login, Model model) {
    	model.addAttribute("verifyLogin", "/inventoryManager/verifyLogin");
    	model.addAttribute("login",login);
        loginservice.checkLoginEntry(login);
        return "loginpage";
    }*/
    //knistane -login
    @RequestMapping(value = "/dashboard", method=RequestMethod.GET )
    public String loadDashboard(Model model) {
        model.addAttribute("addProductUrl", "/inventoryManager/addProduct");
        model.addAttribute("product",new Product());
        //knistane -sell
        model.addAttribute("sellProductUrl", "/inventoryManager/sell");
        model.addAttribute("inventory",new Inventory());
        //knistane -sell
        //knistane -purchase
        model.addAttribute("purchaseProductUrl", "/inventoryManager/purchase");
        model.addAttribute("inventory",new Inventory());
        //knistane -purchase
        //knistane -fetch product details
        List<Product> productsToDisplay = inventoryService.fetchProductEntry();
		//model.addAttribute("purchaseProductUrl", "/inventoryManager/purchase");
	    //model.addAttribute("inventory",new Inventory());
	    model.addAttribute("lists", productsToDisplay);
        //knistane -fetch product details
	    //knistane -Profit Calculator
		model.addAttribute("profitCalculatorUrl", "/inventoryManager/profitCalculator");
		
		//knistane -Profit Calculator
        return "dashboard";
    }
    
    @RequestMapping(value = "/addProduct", method=RequestMethod.POST )
    public String addProduct(@ModelAttribute Product product, Model model) {
    	model.addAttribute("addProductUrl", "/inventoryManager/addProduct");
    	model.addAttribute("product",product);
        model.addAttribute("sellProductUrl", "/inventoryManager/sell");
        model.addAttribute("inventory",new Inventory());
    	inventoryService.makeProductEntry(product);
        return "dashboard";
    }
    //knistane -sell
    @RequestMapping(value = "/sell", method=RequestMethod.POST )
    public String sellProduct(@ModelAttribute Inventory inventory, Model model) {
        model.addAttribute("addProductUrl", "/inventoryManager/addProduct");
        model.addAttribute("product",new Product());
        model.addAttribute("sellProductUrl", "/inventoryManager/sell");
        model.addAttribute("inventory",inventory);
        inventoryService.makeSellEntry(inventory);
        return "dashboard";
    }
    //knistane -sell
    //knistane -purchase
    @RequestMapping(value = "/purchase", method=RequestMethod.POST )
    public String purchaseProduct(@ModelAttribute Inventory inventory, Model model) {
        model.addAttribute("addProductUrl", "/inventoryManager/addProduct");
        model.addAttribute("product",new Product());
        model.addAttribute("purchaseProductUrl", "/inventoryManager/purchase");
        model.addAttribute("inventory",inventory);
        inventoryService.makePurchaseEntry(inventory);
        return "dashboard";
    }
    //knistane -purchase
	
	//knistane -Profit Calculator
    @RequestMapping(value = "/profitCalculator", method=RequestMethod.POST )
    public String profitCalculator(@ModelAttribute Inventory inventory, Model model) {
        model.addAttribute("addProductUrl", "/inventoryManager/addProduct");
        model.addAttribute("product",new Product());
        model.addAttribute("profitCalculatorUrl", "/inventoryManager/profitCalculator");
        model.addAttribute("inventory",inventory);
        double profitLoss = inventoryService.calculateProfit(inventory);
        model.addAttribute("proLos", profitLoss);
        return "dashboard";
    }
	//knistane -Profit Calculator
    
}
