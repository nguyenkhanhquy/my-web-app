package codes.id21110282.mywebapp.servlet;

import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import codes.id21110282.mywebapp.bean.User;

@WebServlet(name = "EmailListServlet", urlPatterns = { "/emailList" }, initParams = {
		@WebInitParam(name = "relativePathToFile", value = "/WEB-INF/EmailList.txt") })
public class EmailListServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");

		String myExercise = req.getParameter("myExercise");

		String url = "/WEB-INF/views/" + myExercise + ".jsp";

		// initialize the current year that's used in the copyright notice
		GregorianCalendar currentDate = new GregorianCalendar();
		int currentYear = currentDate.get(Calendar.YEAR);
		req.setAttribute("currentYear", currentYear);

		// get current action
		String action = req.getParameter("action");

		// print action value to console AND log file
		System.out.println("EmailListServlet action: " + action);
		log("action=" + action);

		// set default action
		if (action == null) {
			action = "join"; // default action
		}

		// perform action and set URL to appropriate page
		if (action.equals("join")) {
			url = "/WEB-INF/views/" + myExercise + ".jsp"; // the "join" page
		} else if (action.equals("add")) {
			// get parameters from the request
			String firstName = req.getParameter("firstName");
			String lastName = req.getParameter("lastName");
			String email = req.getParameter("email");

			// store data in User object
			User user = new User(firstName, lastName, email);

			// validate the parameters
			String message;
			if (firstName == null || lastName == null || email == null || firstName.isEmpty() || lastName.isEmpty()
					|| email.isEmpty()) {
				message = "Please fill out all three text boxes.";
				url = "/WEB-INF/views/" + myExercise + ".jsp";
			} else {
				message = "";
				url = "/WEB-INF/views/thanks_" + myExercise + ".jsp";
			}
			req.setAttribute("user", user);
			req.setAttribute("message", message);
		}
		getServletContext().getRequestDispatcher(url).forward(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doPost(req, resp);
	}
}
