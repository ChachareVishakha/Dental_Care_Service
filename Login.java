package com.DCSApplication.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Login {

	String username;
	@Id
	String email;
	String password;

	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Login(String username,String email, String password) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Login [username=" + username + ", email=" + email + ", password=" + password + "]";
	}

}
