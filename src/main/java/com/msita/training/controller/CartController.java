package com.msita.training.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.msita.training.service.ProductService;
import com.msita.training.vo.Product;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getCart(ModelMap model) {
	    return "cart";
	}
	
	@RequestMapping(value="addCart",method = RequestMethod.GET)
	public String addToCart(@RequestParam("product") String product, HttpServletRequest request) {
		List<String> list = (List<String>) request.getSession().getAttribute("cart");
		if(list == null) {
			list = new ArrayList<String>();
			list.add(product);
		}else {
			list.add(product);
		}
		request.getSession().setAttribute("cart", list);
		return "redirect:/cart";
	}
	

	@ResponseBody
	@RequestMapping(value="/get" ,method = RequestMethod.GET)
	public String getData(ModelMap model, HttpServletRequest request) {
		List<String> list = (List<String>) request.getSession().getAttribute("cart");
		List<Product> listProduct = new ArrayList<Product>();
		if(list != null) {
			for(String product : list) {
				listProduct.add(productService.getProduct(product));
			}
		}
		
		ObjectMapper mapper = new ObjectMapper();
		String json = "";
		
		try {
			json = mapper.writeValueAsString(listProduct);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return json;
	}
}
