package com.inventory.controller;

//import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inventory.entity.Product;
import com.inventory.entity.Inventory;
//knistane
import com.inventory.service.InventoryService;
//knistane

@Controller
public class InventoryController {
	
	@Autowired
	private InventoryService inventoryService;

   /* @RequestMapping(value = "/home")
    public String loadHome(@ModelAttribute  ArrayList<Product> products) {
        return "inventoryHome";
    }*/

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
        return "dashboard";
    }
    
    @RequestMapping(value = "/addProduct", method=RequestMethod.POST )
    public String addProduct(@ModelAttribute Product product, Model model) {
        //System.out.println(product.getOemId());
        //System.out.println(product.getSerialNumber());
        //knistane
    	model.addAttribute("addProductUrl", "/inventoryManager/addProduct");
    	model.addAttribute("product",product);
        model.addAttribute("sellProductUrl", "/inventoryManager/sell");
        model.addAttribute("inventory",new Inventory());
    	inventoryService.makeProductEntry(product);
        //knistane
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
}
