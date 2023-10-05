package codes.id21110282.mywebapp.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import codes.id21110282.mywebapp.dao.UserIO;
import codes.id21110282.mywebapp.util.CookieUtil;
import codes.id21110282.mywebapp.bean.Product;
import codes.id21110282.mywebapp.bean.User;
import codes.id21110282.mywebapp.dao.ProductIO;

@WebServlet(urlPatterns = { "/download" })
public class DownloadServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// get current action
		String action = req.getParameter("action");
		if (action == null) {
			action = "viewAlbums"; // default action
		}

		// perform action and set URL to appropriate page
		String url = "/WEB-INF/views/ch07ex1_2View.jsp";
		if (action.equals("viewAlbums")) {
			url = "/WEB-INF/views/ch07ex1_2View.jsp";
		} else if (action.equals("checkUser")) {
			url = checkUser(req, resp);
		} else if (action.equals("viewCookies")) {
			url = "/WEB-INF/views/view_cookiesView.jsp";
		} else if (action.equals("deleteCookies")) {
			url = deleteCookies(req, resp);
		}

		// forward to the view
		getServletContext().getRequestDispatcher(url).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");

		String action = req.getParameter("action");

		// perform action and set URL to appropriate page
		String url = "/WEB-INF/views/ch07ex1_2View.jsp";
		if (action.equals("registerUser")) {
			url = registerUser(req, resp);
		}

		// forward to the view
		getServletContext().getRequestDispatcher(url).forward(req, resp);
	}

	private String checkUser(HttpServletRequest req, HttpServletResponse resp) {

		String productCode = req.getParameter("productCode");
		HttpSession session = req.getSession();

		// get Product object and set it as session attribute
		ServletContext sc = this.getServletContext();
		String productPath = sc.getRealPath("/WEB-INF/products.txt");
		Product product = ProductIO.getProduct(productCode, productPath);
		session.setAttribute("product", product);

		// get the User object
		User user = (User) session.getAttribute("user");

		String url;
		// if User object doesn't exist, check email cookie
		if (user == null) {
			Cookie[] cookies = req.getCookies();
			String emailAddress = CookieUtil.getCookieValue(cookies, "emailCookie");

			// if cookie doesn't exist, go to Registration page
			if (emailAddress == null || emailAddress.equals("")) {
				url = "/WEB-INF/views/registerView.jsp";
			}
			// if cookie exists, create User object and go to Downloads page
			else {
				String path = sc.getRealPath("/WEB-INF/EmailList.txt");
				user = UserIO.getUser(emailAddress, path);
				session.setAttribute("user", user);
				url = "/WEB-INF/views/" + productCode + "_downloadView.jsp";
			}
		}
		// if User object exists, go to Downloads page
		else {
			url = "/WEB-INF/views/" + productCode + "_downloadView.jsp";
		}
		return url;
	}

	private String registerUser(HttpServletRequest req, HttpServletResponse resp) {

		// get the user data
		String email = req.getParameter("email");
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");

		// store the data in a User object
		User user = new User();
		user.setEmail(email);
		user.setFirstName(firstName);
		user.setLastName(lastName);

		// write the User object to a file
		ServletContext sc = getServletContext();
		String path = sc.getRealPath("/WEB-INF/EmailList.txt");
		UserIO.add(user, path);

		// store the User object as a session attribute
		HttpSession session = req.getSession();
		session.setAttribute("user", user);

		// add a cookie that stores the user's email to browser
		Cookie c = new Cookie("userEmail", email);
		c.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 3 years
		c.setPath("/"); // allow entire app to access it
		resp.addCookie(c);

		// create and return a URL for the appropriate Download page
		Product product = (Product) session.getAttribute("product");
		String url = "/WEB-INF/views/" + product.getCode() + "_downloadView.jsp";
		return url;
	}

	private String deleteCookies(HttpServletRequest req, HttpServletResponse resp) {

		Cookie[] cookies = req.getCookies();
		for (Cookie cookie : cookies) {
			cookie.setMaxAge(0); // delete the cookie
			cookie.setPath("/"); // allow the download application to access it
			resp.addCookie(cookie);
		}
		String url = "/WEB-INF/views/delete_cookiesView.jsp";
		return url;
	}
}
