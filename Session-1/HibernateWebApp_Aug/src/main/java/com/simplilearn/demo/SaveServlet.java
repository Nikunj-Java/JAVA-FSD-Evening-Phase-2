package com.simplilearn.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

@WebServlet("/save")
public class SaveServlet extends  HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out= resp.getWriter();
		
		//call hibernate  session factory
		SessionFactory factory=HibernateUtils.getSessionFactory();
		
		Session session= factory.openSession();
		
		Transaction tx= session.beginTransaction();
		
		Student s1=new Student("Nikunj", "test@gmail.com", "12345");
		session.save(s1);
		
		tx.commit();
		
		session.close();
		out.println("Data Inserted Successfully");
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
	

}