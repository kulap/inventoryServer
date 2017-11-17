package com.inventory.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//knistane
import com.inventory.dao.InventoryDao;
import com.inventory.entity.Inventory;
//knistane
import com.inventory.entity.Product;

@Service
public class InventoryService {
	
	@Autowired
	private InventoryDao inventoryDao;
	
	public String makeProductEntry(Product product){
		return inventoryDao.makeProductEntry(product);
	}
	//knistane-sell
	public String makeSellEntry(Inventory inventory){
		return inventoryDao.makeSellEntry(inventory);
	}
	//knistane-sell
	//knistane-purchase
	public String makePurchaseEntry(Inventory inventory){
		return inventoryDao.makePurchaseEntry(inventory);
	}
	//knistane-purchase
	//knistane-fetch product details
	public List<Product> fetchProductEntry(){
		return inventoryDao.fetchProductEntry();
	}
	//knistane-fetch product details

}
