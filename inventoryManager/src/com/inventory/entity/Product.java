package com.inventory.entity;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
public class Product {
    
    private int productId;
    
    private int oemId;
    
    private String serialNumber;
    
    private String productName;
    
    private String category;
    
    private String partNumber;
    
    private double mrp;
    
    private double sellingPrice;
    
    private float sellingDiscount;
    
    private double purchasePrice;
    
    private float purchaseDiscount;
    
    private String description;
    
    private String specification;
    
    private int warranty;
    
    private String createdDttm;
    
    private String modifiedDttm;
    
    private String image;
    
    private String localReferenceCode;
    
    private String minimumQuantity;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getOemId() {
        return oemId;
    }

    public void setOemId(int oemId) {
        this.oemId = oemId;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPartNumber() {
    	setCreatedDttm();
    	setModifiedDttm();
        return partNumber;
    }

    public void setPartNumber(String partNumber) {
        this.partNumber = partNumber;
    }

    public double getMrp() {
        return mrp;
    }

    public void setMrp(double mrp) {
        this.mrp = mrp;
    }

    public double getSellingPrice() {
        return sellingPrice;
    }

    public void setSellingPrice(double sellingPrice) {
        this.sellingPrice = sellingPrice;
    }

    public float getSellingDiscount() {
        return sellingDiscount;
    }

    public void setSellingDiscount(float sellingDiscount) {
        this.sellingDiscount = sellingDiscount;
    }

    public double getPurchasePrice() {
        return purchasePrice;
    }

    public void setPurchasePrice(double purchasePrice) {
        this.purchasePrice = purchasePrice;
    }

    public float getPurchaseDiscount() {
        return purchaseDiscount;
    }

    public void setPurchaseDiscount(float purchaseDiscount) {
        this.purchaseDiscount = purchaseDiscount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public int getWarranty() {
        return warranty;
    }

    public void setWarranty(int warranty) {
        this.warranty = warranty;
    }
    
    LocalDateTime now = LocalDateTime.now();
    private static final DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");

    public String getCreatedDttm() {
        return createdDttm;
    }

    public void setCreatedDttm() {
        this.createdDttm = dtf.format(now);
    }

    public String getModifiedDttm() {
        return modifiedDttm;
    }

    public void setModifiedDttm() {
        this.modifiedDttm = dtf.format(now);
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getLocalReferenceCode() {
        return localReferenceCode;
    }

    public void setLocalReferenceCode(String localReferenceCode) {
        this.localReferenceCode = localReferenceCode;
    }

    public String getMinimumQuantity() {
        return minimumQuantity;
    }

    public void setMinimumQuantity(String minimumQuantity) {
        this.minimumQuantity = minimumQuantity;
    }
}