package codes.id21110282.mywebapp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import codes.id21110282.mywebapp.bean.User;

@WebServlet(urlPatterns = { "/survey" })
public class SurveyServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");

		String myExercise = req.getParameter("myExercise");

		String url = "/WEB-INF/views/" + myExercise + ".jsp";

		String action = req.getParameter("action");

		if (action == null) {
			action = "back";
		}

		if (action.equals("back")) {
			url = "/WEB-INF/views/" + myExercise + ".jsp";
		} else if (action.equals("submit")) {
			String firstName = req.getParameter("firstName");
			String lastName = req.getParameter("lastName");
			String email = req.getParameter("email");
			String dOB = req.getParameter("dOB");
			String heardFrom = req.getParameter("heardFrom");
			String checkBoxLike = req.getParameter("checkBoxLike");
			String checkBoxSend = req.getParameter("checkBoxSend");
			String contactVia = req.getParameter("contactVia");

			if (checkBoxLike == null) {
				checkBoxLike = "No";
			} else {
				checkBoxLike = "Yes";
			}

			if (checkBoxSend == null) {
				checkBoxSend = "No";
			} else {
				checkBoxSend = "Yes";
			}

			User user = new User(firstName, lastName, email, dOB, heardFrom, checkBoxLike, checkBoxSend, contactVia);

			req.setAttribute("user", user);

			url = "/WEB-INF/views/thanks_" + myExercise + ".jsp";
		}

		getServletContext().getRequestDispatcher(url).forward(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doPost(req, resp);
	}
}
