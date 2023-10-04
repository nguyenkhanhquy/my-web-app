package codes.id21110282.mywebapp.beans;

import java.io.Serializable;

public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	private String firstName;
	private String lastName;
	private String email;
	private String dOB;
	private String heardFrom;
	private String checkBoxLike;
	private String checkBoxSend;
	private String contactVia;

	public User() {
		firstName = "";
		lastName = "";
		email = "";
		dOB = "";
		heardFrom = "";
		checkBoxLike = "";
		checkBoxSend = "";
		contactVia = "";
	}

	public User(String firstName, String lastName, String email) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}

	public User(String firstName, String lastName, String email, String dOB, String heardFrom, String checkBoxLike,
			String checkBoxSend, String contactVia) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.dOB = dOB;
		this.heardFrom = heardFrom;
		this.checkBoxLike = checkBoxLike;
		this.checkBoxSend = checkBoxSend;
		this.contactVia = contactVia;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getdOB() {
		return dOB;
	}

	public void setdOB(String dOB) {
		this.dOB = dOB;
	}

	public String getHeardFrom() {
		return heardFrom;
	}

	public void setHeardFrom(String heardFrom) {
		this.heardFrom = heardFrom;
	}

	public String getCheckBoxLike() {
		return checkBoxLike;
	}

	public void setCheckBoxLike(String checkBoxLike) {
		this.checkBoxLike = checkBoxLike;
	}

	public String getCheckBoxSend() {
		return checkBoxSend;
	}

	public void setCheckBoxSend(String checkBoxSend) {
		this.checkBoxSend = checkBoxSend;
	}

	public String getContactVia() {
		return contactVia;
	}

	public void setContactVia(String contactVia) {
		this.contactVia = contactVia;
	}
}
