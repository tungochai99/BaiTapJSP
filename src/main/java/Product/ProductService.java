package Product;

import java.util.LinkedList;
import java.util.List;

public class ProductService {
	private List<Product> products;
	
	public List<Product> findAllProduct() {
		return products;
	}
	
	public ProductService() {
		products = new LinkedList<Product>();
		
		products.add(new Product("1", "Điện thoại Nokia", "20", "1500000"));
		products.add(new Product("2", "Điện thoại Samsung", "50", "5500000"));
	}
	
	public Product findProductById(String id) {
		if(id == null || id.equals(""))
			return null;
		for(Product pro : products)
		{
			if(pro.getId().equals(id))
				return pro;
		}
		return null;
	}
	public void deleteProductById(String id) {
		if(id == null || id.equals(""))
			return;
		for(Product pro : products) {
			if(!pro.getId().equals(id))
				continue;
			products.remove(pro);
			return;
		}
	}
	
	public void addNewProduct(Product product) {
		if(product.getId() == null || product.equals(""))
			return;
		for(Product pro : products) {
			if(!pro.getId().equals(product.getId()))
				continue;
			return;
		}
		products.add(product);
	}
	
	public void update(Product pro, String id) {
		for(int i = 0; i < products.size(); i++) {
			if(!products.get(i).getId().equals(id))
				continue;
			pro.setId(id);
			products.set(i, pro);
		}
	}
}
