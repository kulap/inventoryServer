package com.inventory.entity;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
public class Inventory {
	private String partNumber;
	private String lastUpdatedTime;
	//knistane-sell
	private String sellCount;
	private double totalSellCost;
	//knistane-sell
	//knistane-purchase
	private String purchaseCount;
	private double totalpurchaseCost;
	//knistane-purchase
	
	//knistane-profit calculator
	private String initialDate;
	private String finalDate;
	//knistane-profit calculator
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
	
	public double getTotalSellCost() {
	    return totalSellCost;
	}
	
	public void setTotalSellCost(double totalSellCost) {
	    this.totalSellCost = totalSellCost;
	}
	
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
	public double getTotalpurchaseCost() {
		return totalpurchaseCost;
	}
	public void setTotalpurchaseCost(double totalpurchaseCost) {
		this.totalpurchaseCost = totalpurchaseCost;
	}
//knistane-purchase
	public String getInitialDate() {
		return initialDate;
	}
	public void setInitialDate(String initialDate) {
		this.initialDate = initialDate;
	}
	public String getFinalDate() {
		return finalDate;
	}
	public void setFinalDate(String finalDate) {
		this.finalDate = finalDate;
	}
}
