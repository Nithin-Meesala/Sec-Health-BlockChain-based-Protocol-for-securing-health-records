package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.AppointmentRegister1;
import com.dao.Dao;

/**
 * Servlet implementation class AppointmentRegister
 */
@WebServlet("/AppointmentRegister")
public class AppointmentRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Object phone;
	private Object specialities;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppointmentRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter o = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		String mobile = request.getParameter("phone");
		
		String datetime = request.getParameter("date");
		String message = request.getParameter("message");
		String Speciality = request.getParameter("Specialities");
		String Status2=request.getParameter("vm");
		AppointmentRegister1 b=new AppointmentRegister1();
		
		b.setName(name);
		b.setEmail(email);
		b.setMobile(mobile);
		b.setDatetime(datetime);
	  b.setMessage(message);
	  b.setSpecialities(Speciality);
	  b.setStatus2(Status2);
	  
	  System.out.println(name+email+mobile+datetime+message+Speciality);
	  String sql="insert into appointment values(?,?,?,?,?,?,?,?)";
		
		
Dao dao=new Dao();
int i= dao.AppointmentRegister(sql, b);
if(i > 0){
	o.println("<script type=\"text/javascript\">");
	o.println("alert('Appointment has booked Successfully...');");
	o.println("window.location='DoctorLogin.jsp';</script>");
}else{
	
	o.println("<script type=\"text/javascript\">");
	o.println("alert('Please enter valid Details');");
	o.println("window.location='index.jsp';</script>");
}
}
	
		
	}


		
	


