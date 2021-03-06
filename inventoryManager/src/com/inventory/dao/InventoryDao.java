package com.inventory.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.inventory.entity.Product;
import com.inventory.entity.Inventory;

@Repository
public class InventoryDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public String makeProductEntry(Product product){
		String query = "INSERT INTO INVENTORYDB.TABLE_X_PRODUCTS (x_product_id, x_oem_id, x_serial_number, x_product_name, x_category, x_part_number, x_mrp, x_selling_price, x_selling_discount, x_purchase_price, x_purchase_discount, x_description, x_specification, x_warranty, x_created_timestamp, x_modified_timestamp, x_image, x_local_reference_code, x_minimum_quantity) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		int result = getJdbcTemplate().update(query, product.getProductId(),product.getOemId(),product.getSerialNumber(),product.getProductName(),product.getCategory(),product.getPartNumber(),product.getMrp(),product.getSellingPrice(),product.getSellingDiscount(),product.getPurchasePrice(),product.getPurchaseDiscount(),product.getDescription(),product.getSpecification(),product.getWarranty(),product.getCreatedDttm(),product.getModifiedDttm(),product.getImage(),product.getLocalReferenceCode(),product.getMinimumQuantity());
		return result > 0?"SUCCESS":"FAILED";
	}
	
	//knistane-sell
	public String makeSellEntry(Inventory inventory){
		String query = "INSERT INTO INVENTORYDB.TABLE_X_SELL (x_part_number, x_sell_count,x_total_sell_cost,x_last_updated_time,x_calculated_purchase_cost) VALUES (?,?,?,?,?)";
		int result = getJdbcTemplate().update(query, inventory.getPartNumber(),inventory.getSellCount(),inventory.getTotalSellCost(),inventory.getLastUpdatedTime(),inventory.getTotalpurchaseCost());
		return result > 0?"SUCCESS":"FAILED";
	}
	//knistane-sell
	
	//knistane-purchase
	public String makePurchaseEntry(Inventory inventory){
		String query = "INSERT INTO INVENTORYDB.TABLE_X_PURCHASE (x_part_number, x_purchase_count,x_last_updated_time) VALUES (?,?,?)";
		int result = getJdbcTemplate().update(query, inventory.getPartNumber(),inventory.getPurchaseCount(),inventory.getLastUpdatedTime());
		return result > 0?"SUCCESS":"FAILED";
	}
	//knistane-purchase
		
	//knistane-get product details
	public List<Product> fetchProductEntry(){
		String query = "SELECT * FROM INVENTORYDB.TABLE_X_PRODUCTS";
		List<Product> result = getJdbcTemplate().query(query, new ProductResultSetExtractor());
		return result;
	}
	//knistane-get product details
	
	//knistane calculation of x_calculated_purchase_cost
	public double fetchPurchaseCostOfPartNumber( String partNumber){
		String query = "select x_purchase_price from inventorydb.table_x_products where x_part_number = '" + partNumber + "'";
		double result = getJdbcTemplate().queryForObject(query,Double.class );
		return result;
	}
	//knistane calculation of x_calculated_purchase_cost

	//knistane calculation of x_calculated_purchase_cost
	public double calculateProfitDao(Inventory inventory){
		String query = "select sum(x_calculated_purchase_cost) - sum(x_total_sell_cost) from inventorydb.table_x_sell where x_last_updated_time > '" + inventory.getInitialDate() + "'" + " and x_last_updated_time <= '" + inventory.getFinalDate() + "'" ;
		double result = getJdbcTemplate().queryForObject(query,Double.class );
		return result;
	}
	//knistane calculation of x_calculated_purchase_cost
}
