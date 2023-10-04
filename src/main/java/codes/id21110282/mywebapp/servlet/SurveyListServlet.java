package codes.id21110282.mywebapp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import codes.id21110282.mywebapp.beans.User;

@WebServlet(urlPatterns = { "/surveyList" })
public class SurveyListServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");

		String url = "/WEB-INF/views/week4View.jsp";

		String action = req.getParameter("action");

		if (action == null) {
			action = "back";
		}

		if (action.equals("back")) {
			url = "/WEB-INF/views/week4View.jsp";
		} else if (action.equals("submit")) {
			String firstName = req.getParameter("firstName");
			String lastName = req.getParameter("lastName");
			String email = req.getParameter("email");
			String dOB = req.getParameter("dOB");
			String hear = req.getParameter("hear");
			String checkBoxLike = req.getParameter("checkBoxLike");
			String checkBoxSend = req.getParameter("checkBoxSend");
			String contact = req.getParameter("contact");

			if (checkBoxLike == null) {
				checkBoxLike = "No check";
			} else {
				checkBoxLike = "Checked";
			}

			if (checkBoxSend == null) {
				checkBoxSend = "No check";
			} else {
				checkBoxSend = "Checked";
			}

			User user = new User(firstName, lastName, email, dOB, hear, checkBoxLike, checkBoxSend, contact);

			req.setAttribute("user", user);

			url = "/WEB-INF/views/thanks_w4View.jsp";
		}

		getServletContext().getRequestDispatcher(url).forward(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doPost(req, resp);
	}
}
