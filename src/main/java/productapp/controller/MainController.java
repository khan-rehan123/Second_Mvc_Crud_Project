package productapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productapp.dao.ProductDao;
import productapp.model.Product;

@Controller
public class MainController {

	@Autowired
	ProductDao productDao;

	// get list product
	@RequestMapping("/")
	public String home(Model m) {
		List<Product> product = this.productDao.getProduct();
		m.addAttribute("product", product);

		return "index";
	}

	// get product form
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute("title", "Add-Product");

		return "add_product_form";
	}

	// save product in form
	@RequestMapping(value = "/add-product", method = RequestMethod.POST)
	public RedirectView getProduct(@ModelAttribute Product product, HttpServletRequest request, Model m) {
		m.addAttribute("title", "Add-Product");

		System.out.println(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		this.productDao.savaProduct(product);
		return redirectView;
	}

	// delete product
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId, HttpServletRequest request) {
		this.productDao.DeleteProduct(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;

	}
	//update product
	@RequestMapping("/update/{productId}")
	public String  updateProduct(@PathVariable ("productId") int productId,Model m) {
		
		Product product = this.productDao.getProduct(productId);
		m.addAttribute("update", product);
		return "update-form";
		
		
	}

}
