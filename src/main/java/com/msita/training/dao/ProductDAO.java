package com.msita.training.dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.msita.training.vo.Product;
import com.msita.training.vo.User;

@Repository
public class ProductDAO extends BaseDAO{
	@SuppressWarnings("unchecked")
	public List<Product> getData(String type){
		String sql;
		if(type == null || type.equals("")) {
			sql ="select * from product";
		}else {
			sql ="select * from product where type = '"+type+"'";
		}
		
		return (List<Product>) getJdbcTemplateObject().query(sql,
				new RowMapper() {
			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				Product product = new Product();
				product.setId(rs.getString("id"));
				product.setTitle(rs.getString("title"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setPrice(rs.getString("price"));
				
				return product;
			} 
		});
	}
	
	@SuppressWarnings("unchecked")
	public Product getProduct(String productId){
		return getJdbcTemplateObject().query("select * from product where id=?",
			new PreparedStatementSetter() {
				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
				
					ps.setString(1, productId);
				} 
		}, new ResultSetExtractor<Product>() {
				@Override
				public Product extractData(ResultSet rs) throws SQLException, DataAccessException {
					Product product = null;
					if(rs.next()) {
						product = new Product();
						product.setId(rs.getString("id"));
						product.setTitle(rs.getString("title"));
						product.setDescription(rs.getString("description"));
						product.setImage(rs.getString("image"));
						product.setPrice(rs.getString("price"));
						product.setImages(getImages(product.getId()));
						
					}
					return product;
				}
		});
	}
	
	public List<String> getImages(String id){
		 return getJdbcTemplateObject().query("select * from images where product_id =?",
			new PreparedStatementSetter() {
				@Override
				public void setValues(PreparedStatement ps) throws SQLException {			
					ps.setString(1, id);
				} 
		}, new RowMapper() {
				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
					return rs.getString("url_image");
				};
			}
	);
	}
}
