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
	//knistane calculation of x_calculated_purchase_cost
	double calculatedPurchaseCost;
	String partNumber;
	
	//knistane calculation of x_calculated_purchase_cost
	
	public String makeProductEntry(Product product){
		return inventoryDao.makeProductEntry(product);
	}
	//knistane-sell
	public String makeSellEntry(Inventory inventory){
		//knistane calculation of x_calculated_purchase_cost
		System.out.println(inventory.getSellCount());
		partNumber = inventory.getPartNumber();
		calculatedPurchaseCost=Double.parseDouble(inventory.getSellCount()) * fetchCalculatedPurchaseCost(partNumber);
		System.out.println(calculatedPurchaseCost);
		inventory.setTotalpurchaseCost(calculatedPurchaseCost);
		System.out.println(inventory.getTotalpurchaseCost());
		//knistane calculation of x_calculated_purchase_cost
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
	//knistane calculation of x_calculated_purchase_cost
	public double fetchCalculatedPurchaseCost(String partNumber){
		return inventoryDao.fetchPurchaseCostOfPartNumber(partNumber);
	}
	//knistane calculation of x_calculated_purchase_cost
	//knistane calculation of calculate profit
	public double calculateProfit(Inventory inventory){
		return inventoryDao.calculateProfitDao(inventory);
	}
	//knistane calculation of calculate profit

}
