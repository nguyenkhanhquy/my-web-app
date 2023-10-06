package codes.id21110282.mywebapp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import codes.id21110282.mywebapp.bean.User;
import codes.id21110282.mywebapp.dao.UserIO;

@WebServlet(name = "EmailListServlet", urlPatterns = { "/emailList" }, initParams = {
		@WebInitParam(name = "relativePathToFile", value = "/WEB-INF/EmailList.txt") })
public class EmailListServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");

		HttpSession session = req.getSession();

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
				if (myExercise.equals("ch08ex1View")) {
					// store the User object as a session attribute
					session.setAttribute("user", user);
					// add a cookie that stores the user's email as a cookie
					Cookie c1 = new Cookie("emailCookie", email);
					c1.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
					c1.setPath("/"); // allow entire app to access it
					resp.addCookie(c1);

					// add a cookie that stores the user's as a cookie
					Cookie c2 = new Cookie("firstNameCookie", firstName);
					c2.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
					c2.setPath("/"); // allow entire app to access it
					resp.addCookie(c2);
				}
				url = "/WEB-INF/views/thanks_" + myExercise + ".jsp";
			}
			req.setAttribute("user", user);
			req.setAttribute("message", message);
		}

		// create the Date object and store it in the request
		Date currentDateJoin = new Date();
		req.setAttribute("currentDate", currentDateJoin);

		// create users list and store it in the session
		// String path = getServletContext().getRealPath("/WEB-INF/EmailList.txt");
		String path = getServletContext().getRealPath(getInitParameter("relativePathToFile"));
		ArrayList<User> users = UserIO.getUsers(path);
		session.setAttribute("users", users);

		// forward request and response objects to specified URL
		getServletContext().getRequestDispatcher(url).forward(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doPost(req, resp);
	}
}
