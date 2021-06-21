package com.dao;

import java.sql.*;
import java.util.ArrayList;

import com.bean.Customer;
import com.util.DatabaseUtil;


public class BankDao {
	
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	Statement stmt=null;
	
	public void testconnection() {
		con = DatabaseUtil.getConnection();
		try {
			stmt =con.createStatement();
			rs=stmt.executeQuery("show databases");
			if(rs.next()) {
				System.out.println("db:"+rs.getInt(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public int validateEmailid(String email) {
		con=DatabaseUtil.getConnection();
		String query_eamil="select count(*) from Customer where EMAILID=?";
		try {
			pst=con.prepareStatement(query_eamil);
			pst.setString(1, email);
			rs=pst.executeQuery();
			
			if(rs.next()) {
				
				return 2;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			DatabaseUtil.closeStatement(pst);
			DatabaseUtil.closeConnection(con);
		}
		
		return 1;
	}
	
	
	public int validatePhone(String phone) {
		con=DatabaseUtil.getConnection();
		String query_phone="select count(*) from Customer where PHONE=?";
		try {
			pst=con.prepareStatement(query_phone);
			pst.setString(1, phone);
			rs=pst.executeQuery();
			
			if(rs.next()) {
				
				return 2;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			DatabaseUtil.closeStatement(pst);
			DatabaseUtil.closeConnection(con);
		}
		
		return 1;
	}
	
	
	
	public String addCustomer(Customer c) {
		String flag ="false";
		
		
		try {
			con=DatabaseUtil.getConnection();
			
			
			//stmt=con.createStatement();
			
			String query = "insert into Customer (CUST_FIRSTNAME,CUST_LASTNAME,AGE,EMAILID,PHONE,PASSWORD,ADDRESS,STATE,PIN_CODE) values (?,?,?,?,?,?,?,?,?)";
			
			System.out.println("insdie dao");
			
			pst=con.prepareStatement(query);
			
			pst.setString(1, c.getFirstName());
			pst.setString(2, c.getLastName());
			pst.setString(3, c.getAge());
			pst.setString(4, c.getEmailID());
			pst.setString(5, c.getPhone());
			pst.setString(6, c.getPassword());
			pst.setString(7, c.getAddress());
			pst.setString(8, c.getState());
			pst.setInt(9, c.getPincode());
			
			int rowaffected=pst.executeUpdate();
			
			if(rowaffected>0) {
				flag="true";
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
			System.out.println(c.toString());
			e.printStackTrace();
		}
		finally
		{
			DatabaseUtil.closeStatement(pst);
			DatabaseUtil.closeConnection(con);
		}
		
		return flag;
		
	}
	

}
