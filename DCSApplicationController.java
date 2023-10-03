package com.DCSApplication.Controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.DCSApplication.Model.Appointment;
import com.DCSApplication.Model.Contact;
import com.DCSApplication.Model.Login;

@Controller
public class DCSApplicationController {

	@Autowired
	SessionFactory sf;

	@RequestMapping("/")
	public String root() {
		return "home";
	}
	
	@RequestMapping("loginpage")
	public String loginpage() {
		return "login";
	}


	@RequestMapping("/login")
	public String gopalLogin(Login login, Model model) {
		
		Session session = sf.openSession();

		Login dbLogin = session.get(Login.class, login.getEmail()); // gopal // sagar

		String msg = null;
		if (dbLogin != null) {
			if (login.getEmail().equals(dbLogin.getEmail())) { // 1234 //1234
				return "home";
			} else {
				msg = "Invalid User";
			}
		} else {
			msg = "Invalid Password";
		}
		model.addAttribute("msg", msg); // front end
		return "login";
		
		
	}

	@RequestMapping("/signuppage")
	public String CreateAccount() {
		return "signup";
	}

	@RequestMapping("/signup")
	public Login gopalgirase(Login login) {
		Session ss = sf.openSession();
		Transaction tx = ss.beginTransaction();
		ss.save(login);
		System.out.println(login);
		tx.commit();
		return login;
	}
	
	@RequestMapping("/homepage")
	public String homePage() {
		return "home";
	}

	@RequestMapping("/aboutpage")
	public String aboutPage() {
		return "about";
	}

	@RequestMapping("/appointmentpage")
	public String appointmentPage() {
		return "appointment";
	}

	@RequestMapping("/appointment")
	public Appointment appointmentSave(Appointment appointment) {
		Session ss = sf.openSession();
		Transaction tx = ss.beginTransaction();
		ss.save(appointment);
		System.out.println(appointment);
		tx.commit();
		return appointment;
	}

	@RequestMapping("/contactpage")
	public String contactPage() {
		return "contact";
	}

	@RequestMapping("/contact")
	public Contact contactSave(Contact contact) {
		Session ss = sf.openSession();
		Transaction tx = ss.beginTransaction();
		ss.save(contact);
		System.out.println(contact);
		tx.commit();
		return contact;
	}

	@RequestMapping("/pricepage")
	public String pricePage() {
		return "price";
	}

	@RequestMapping("/servicepage")
	public String servicePage() {
		return "service";
	}

	@RequestMapping("/teampage")
	public String teamPage() {
		return "team";
	}

	@RequestMapping("/testimonialpage")
	public String testimonialPage() {
		return "testimonial";
	}
	
	@RequestMapping("/backToLogin")
	public String backToLogin() {
		return "login";
	}

	@RequestMapping("/myadvancejavabatch137teams")
	public String batch136Teams() {
		return "batch137";
	}
	
}
