package codes.id21110282.mywebapp.beans;

import java.io.Serializable;

public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String firstName;
	private String lastName;
	private String email;
	private String dOB;
	private String hear;
	private String checkBoxLike;
	private String checkBoxSend;
	private String contact;

	public User() {
		firstName = "";
		lastName = "";
		email = "";
		dOB = "";
		hear = "";
		checkBoxLike = "";
		checkBoxSend = "";
		contact = "";
	}
	
	public User(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

	public User(String firstName, String lastName, String email, String dOB, String hear, String checkBoxLike,
			String checkBoxSend, String contact) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.dOB = dOB;
		this.hear = hear;
		this.checkBoxLike = checkBoxLike;
		this.checkBoxSend = checkBoxSend;
		this.contact = contact;
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

	public String getHear() {
		return hear;
	}

	public void setHear(String hear) {
		this.hear = hear;
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

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}
}
