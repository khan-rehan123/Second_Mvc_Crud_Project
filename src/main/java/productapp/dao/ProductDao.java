package productapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;

import productapp.model.Product;

@Service
public class ProductDao {
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	//create product
	@Transactional
	public void savaProduct(Product product) {
		
		this.hibernateTemplate.saveOrUpdate(product);
	}

//	get all product
	public List<Product> getProduct(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//delete product
	@Transactional
	public void DeleteProduct(int pid) {
		Product load = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(load);
	}
	
	//get single product & update product
	public Product getProduct(int pid) {
		return  this.hibernateTemplate.get(Product.class, pid);
		
	}
}
