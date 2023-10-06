package codes.id21110282.mywebapp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import codes.id21110282.mywebapp.bean.Product;
import codes.id21110282.mywebapp.dao.ProductIO;

@WebServlet(urlPatterns = { "/loadProducts" })
public class ProductsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		String path = getServletContext().getRealPath("/WEB-INF/products.txt");
		ArrayList<Product> products = ProductIO.getProducts(path);
		session.setAttribute("products", products);

		String url = "/WEB-INF/views/ch09ex2View.jsp";
		getServletContext().getRequestDispatcher(url).forward(req, resp);
	}
}
