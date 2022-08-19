package com.simplilearn;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

@WebServlet("/list")
public class ListDataServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter out= resp.getWriter();
		
		resp.setContentType("text/html");
		
		SessionFactory factory=HibenateUtil.getSessionFactory();
		
		Session session= factory.openSession();
		
		List<EProduct> list=session.createQuery("from EProduct").list();
		
		
		out.println("<br><h1><b>Product List</b></h1><hr><br>");
		
		for (EProduct p:list) {
			
			out.println("<br>"+p.getID()+ " "+p.getName()+" "+p.getPrice()+"<br>");
			out.print("<b>Product Parts:</b> <br>");
			
			ProductParts parts= p.getParts();
			
			
			out.print("<b>HDD:</b> "+ parts.getHdd()+"<br>");
			out.print("<b>CPU:</b> "+ parts.getCpu()+"<br>");
			out.print("<b>RAM: </b>"+ parts.getRam()+"<br>");
			out.println("-------------------------------------");
			out.println();
		}
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
	

}
