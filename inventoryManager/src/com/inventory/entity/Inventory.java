package com.inventory.entity;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
public class Inventory {
	private String partNumber;
	private String lastUpdatedTime;
	//knistane-sell
	private String sellCount;
	private float totalSellCost;
	//knistane-sell
	//knistane-purchase
	private String purchaseCount;
	private float totalpurchaseCost;
	//knistane-purchase
	public String getPartNumber(){
		return partNumber;
	}
	public void setPartNumber(String partNumber){
		this.partNumber = partNumber;
	}
	
	public String getSellCount() {
	    return sellCount;
	}
	public void setSellCount(String sellCount) {
	    this.sellCount = sellCount;
	    setLastUpdatedTime();
	}
	
	public float getTotalSellCost() {
	    return totalSellCost;
	}
	
	//public void setTotalSellCost(float totalSellCost) {
	//    this.totalSellCost = getSellCount()*getSellingPrice();
	//}
	
	public String getLastUpdatedTime() {
	    return lastUpdatedTime;
	}
	LocalDateTime now = LocalDateTime.now();
	private static final DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	public void setLastUpdatedTime() {
	    this.lastUpdatedTime = dtf.format(now);
	}
//knistane-purchase
	public String getPurchaseCount() {
		return purchaseCount;
	}
	public void setPurchaseCount(String purchaseCount) {
		this.purchaseCount = purchaseCount;
		setLastUpdatedTime();
	}
	public float getTotalpurchaseCost() {
		return totalpurchaseCost;
	}
	public void setTotalpurchaseCost(float totalpurchaseCost) {
		this.totalpurchaseCost = totalpurchaseCost;
	}
//knistane-purchase
}
