package codes.id21110282.mywebapp.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import codes.id21110282.mywebapp.bean.Cart;
import codes.id21110282.mywebapp.bean.LineItem;
import codes.id21110282.mywebapp.bean.Product;
import codes.id21110282.mywebapp.dao.ProductIO;

@WebServlet(urlPatterns = { "/cart" })
public class CartServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");

		String url = "/WEB-INF/views/ch09ex2View.jsp";
		ServletContext sc = getServletContext();

		// get current action
		String action = req.getParameter("action");
		if (action == null) {
			action = "cart"; // default action
		}

		// perform action and set URL to appropriate page
		if (action.equals("shop")) {
			url = "/WEB-INF/views/ch09ex2View.jsp"; // the "index" page
		} else if (action.equals("cart")) {
			String productCode = req.getParameter("productCode");
			String quantityString = req.getParameter("quantity");

			HttpSession session = req.getSession();
			Cart cart = (Cart) session.getAttribute("cart");
			if (cart == null) {
				cart = new Cart();
			}

			// if the user enters a negative or invalid quantity,
			// the quantity is automatically reset to 1.
			int quantity;
			try {
				quantity = Integer.parseInt(quantityString);
				if (quantity < 0) {
					quantity = 1;
				}
			} catch (NumberFormatException nfe) {
				quantity = 1;
			}

			String path = sc.getRealPath("/WEB-INF/products.txt");
			Product product = ProductIO.getProduct(productCode, path);

			LineItem lineItem = new LineItem();
			lineItem.setProduct(product);
			lineItem.setQuantity(quantity);
			if (quantity > 0) {
				cart.addItem(lineItem);
			} else if (quantity == 0) {
				cart.removeItem(lineItem);
			}

			session.setAttribute("cart", cart);
			url = "/WEB-INF/views/cartView.jsp";
		} else if (action.equals("checkout")) {
			url = "/WEB-INF/views/checkoutView.jsp";
		}

		sc.getRequestDispatcher(url).forward(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doPost(req, resp);
	}
}
