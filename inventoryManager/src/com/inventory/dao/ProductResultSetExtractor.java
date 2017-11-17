package com.inventory.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;


import com.inventory.entity.Product;

public class ProductResultSetExtractor implements ResultSetExtractor<List<Product>> {

	@Override
	public List<Product> extractData(ResultSet rs) throws SQLException, DataAccessException {
		// TODO Auto-generated method stub
		List<Product> productsList = new ArrayList<>();
		while(rs.next())
		{
			int productId= rs.getInt("x_product_id");		    
		    int oemId= rs.getInt("x_oem_id");    
		    String serialNumber= rs.getString("x_serial_number");	    
		    String productName= rs.getString("x_product_name");		    
		    String category= rs.getString("x_category");		    
		    String partNumber= rs.getString("x_part_number");		    
		    double mrp= rs.getDouble("x_mrp");		    
		    double sellingPrice= rs.getDouble("x_selling_price");		    
		    float sellingDiscount= rs.getFloat("x_selling_discount");		    
		    double purchasePrice= rs.getDouble("x_purchase_price");		    
		    float purchaseDiscount= rs.getFloat("x_purchase_discount");		    
		    String description= rs.getString("x_description");		    
		    String specification= rs.getString("x_specification");		    
		    int warranty= rs.getInt("x_warranty");	    
		    String createdDttm= rs.getString("x_created_timestamp");		    
		    String modifiedDttm= rs.getString("x_modified_timestamp");		    
		    String image= rs.getString("x_image");		    
		    String localReferenceCode= rs.getString("x_local_reference_code");		    
		    String minimumQuantity= rs.getString("x_minimum_quantity");
			Product product = new Product();
			product.setProductId(productId);
			product.setOemId(oemId);
			product.setSerialNumber(serialNumber);
			product.setProductName(productName);
			product.setCategory(category);
			product.setPartNumber(partNumber);
			product.setMrp(mrp);
			product.setSellingPrice(sellingPrice);
			product.setSellingDiscount(sellingDiscount);
			product.setPurchasePrice(purchasePrice);
			product.setPurchaseDiscount(purchaseDiscount);
			product.setDescription(description);
			product.setSpecification(specification);
			product.setWarranty(warranty);
			product.setCreatedDttm(createdDttm);
			product.setModifiedDttm(modifiedDttm);
			product.setImage(image);
			product.setLocalReferenceCode(localReferenceCode);
			product.setMinimumQuantity(minimumQuantity);
			
			productsList.add(product);
		}
		return productsList;
	}

	

}
