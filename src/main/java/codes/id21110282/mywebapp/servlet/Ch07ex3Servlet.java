package codes.id21110282.mywebapp.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/ch07ex3" })
public class Ch07ex3Servlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Forward tới trang /WEB-INF/views/homeView.jsp
		// (Người dùng không bao giờ truy cập trực tiếp được vào các trang JSP đặt trong
		// WEB-INF)
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/ch07ex3View.jsp");

		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doGet(req, resp);
	}
}
