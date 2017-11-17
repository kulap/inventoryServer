package com.inventory.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.inventory.entity.Login;
@Repository
public class LoginDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	//knistane-check Login
		public String checkLoginEntry(Login login){
			String query = "SELECT * FROM INVENTORYDB.TABLE_X_CREDENTIALS where x_user = ? and x_password = ?";
			int result = getJdbcTemplate().update(query, login.getLoginName(),login.getLoginPassword());
			return result > 0?"SUCCESS":"FAILED";
		}
		//knistane-check Login

}
