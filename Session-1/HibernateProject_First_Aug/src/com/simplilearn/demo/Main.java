package com.simplilearn.demo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class Main {
	
	
	
	public static void main(String[] args) {
		
		StandardServiceRegistry registry= new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		
		Metadata metadata= new MetadataSources(registry).getMetadataBuilder().build();
		
		//connection pool
		SessionFactory factory= metadata.getSessionFactoryBuilder().build();
		//let's take databse connection to do transaction
		//prepare one database in mysql with name 'hibernate_aug' before executing below code
		Session session= factory.openSession();
		
		
		
		Student s1= new Student();
		s1.setName("Nikunj");
		s1.setEmail("nikunj@gmail.com");
		s1.setPassword("Nikunj@123");
		
		
		Transaction tx= session.beginTransaction();
		session.save(s1);
		tx.commit(); //to save the data
		
		//automatically creates the table in db and add the data inserted in the same
		
		session.close();
		factory.close();
		
		
		System.out.println("Data Inserted Successfully");
		
	}
	
	
	
}
