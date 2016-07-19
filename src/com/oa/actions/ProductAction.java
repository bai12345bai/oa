package com.oa.actions;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.AllowedMethods;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.oa.entity.Product;
import com.oa.service.ProductService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@AllowedMethods(value={"findAll"})
@Action(value="productAction",results={
		@Result(name="success",location="/cartList.jsp")
})
public class ProductAction extends ActionSupport{

	private Product product;
	@Autowired
	private ProductService productService;
	private Map request =(Map) ActionContext.getContext().get("request");
	
	public String findAll() {
		List<Product> list=productService.findAll();
		request.put("list", list);
		return SUCCESS;
	}
	
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public ProductService getProductService() {
		return productService;
	}
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	public Map getRequest() {
		return request;
	}
	public void setRequest(Map request) {
		this.request = request;
	}
	
	
	
	
}
