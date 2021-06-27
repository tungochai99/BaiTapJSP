package Servlet;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Product.Product;
import Product.ProductService;
import Utils.PathUtils;
import Utils.UrlUtils;

@WebServlet(name="productServlet", urlPatterns = {
		UrlUtils.PRODUCT_DASHBOARD,
		UrlUtils.PRODUCT_DELETE,
		UrlUtils.PRODUCT_UPDATE
})
public class ProductServlet extends HttpServlet{
	private ProductService service;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		switch (path) {
		case UrlUtils.PRODUCT_DASHBOARD:
			List<Product> products = service.findAllProduct();
			req.setAttribute("products", products);
			
			req.getRequestDispatcher(PathUtils.PRODUCT_DASHBOARD).forward(req, resp);
			break;
		case UrlUtils.PRODUCT_UPDATE:
			String idToUpdate = req.getParameter("id");
			
			Product productToUpdate = service.findProductById(idToUpdate);
			
			req.setAttribute("product", productToUpdate);
			
			req.getRequestDispatcher(PathUtils.PRODUCT_UPDATE).forward(req, resp);
			break;
		case UrlUtils.PRODUCT_DELETE:
			String idToBeDeleted = req.getParameter("id");
			if(idToBeDeleted != null)
				service.deleteProductById(idToBeDeleted);
			resp.sendRedirect(req.getContextPath() +UrlUtils.PRODUCT_DASHBOARD);
			break;
		default:
			break;
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		switch (path) {
		case UrlUtils.PRODUCT_DASHBOARD:
			Product newProduct = new Product();
			newProduct.setId(req.getParameter("id"));
			newProduct.setName(req.getParameter("name"));
			newProduct.setQuantity(req.getParameter("quantity"));
			newProduct.setPrice(req.getParameter("price"));
			
			service.addNewProduct(newProduct);
			resp.sendRedirect(req.getContextPath() + UrlUtils.PRODUCT_DASHBOARD);
			break;
		case UrlUtils.PRODUCT_UPDATE:
			String idToUpdate = req.getParameter("id");
			
			Product productToUpdate = service.findProductById(idToUpdate);
			productToUpdate.setName(req.getParameter("name"));
			productToUpdate.setQuantity(req.getParameter("quantity"));
			productToUpdate.setPrice(req.getParameter("price"));
			
			service.update(productToUpdate, idToUpdate);
			resp.sendRedirect(req.getContextPath() + UrlUtils.PRODUCT_DASHBOARD);
			break;
		default:
			break;
		}
	}
	@Override
	public void init() throws ServletException {
		super.init();
		service = new ProductService();
	}
}
