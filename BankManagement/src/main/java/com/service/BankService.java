package com.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.Customer;
import com.dao.BankDao;

public class BankService {
BankDao b = new BankDao();

ArrayList<String> stateList = new ArrayList<String>();
public ArrayList<String> getStateList() {
	return stateList;
}


public void setStateList(ArrayList<String> stateList) {
	this.stateList = stateList;
}


public ArrayList<String> StateList() {
	
	stateList.add("Andhra Pradesh");
	stateList.add("Andaman and Nicobar Islands");
	stateList.add("Arunachal Pradesh");
	stateList.add("Assam");
	stateList.add("Bihar");
	stateList.add("Chandigarh");
	stateList.add("Chhattisgarh");
	stateList.add("Dadar and Nagar Haveli");
	stateList.add("Daman and Diu");
	stateList.add("Delhi");
	stateList.add("Lakshadweep");
	stateList.add("Puducherry");
	stateList.add("Goa");
	stateList.add("Gujarat");
	stateList.add("Haryana");
	stateList.add("Himachal Pradesh");
	stateList.add("Jammu and Kashmir");
	stateList.add("Jharkhand");
	stateList.add("Karnataka");
	stateList.add("Kerala");
	stateList.add("Madhya Pradesh");
	stateList.add("Maharashtra");
	stateList.add("Manipur");
	stateList.add("Meghalaya");
	stateList.add("Mizoram");
	stateList.add("Nagaland");
	stateList.add("Odisha");
	stateList.add("Punjab");
	stateList.add("Rajasthan");
	stateList.add("Sikkim");
	stateList.add("Tamil Nadu");
	stateList.add("Telangana");
	stateList.add("Tripura");
	stateList.add("Uttar Pradesh");
	stateList.add("Uttarakhand");
	stateList.add("West Bengal");
	
	return stateList;
	
}


public String addCustomerService(Customer c)  {
	System.out.println("Inside serives");
	  int email=b.validateEmailid(c.getEmailID());
	int phone=b.validatePhone(c.getPhone());
	
	System.out.println("finallly in service");
	System.out.println("email:"+email);
	System.out.println("phone"+phone);
	
	if(email==1 && phone==1) {
		return b.addCustomer(c);
	}
	
	else if(email==2 && phone==1) {
		return "Phone Number already registered .";
	}
	else if(email==1 && phone==2) {
		return "email-id already registered .";
	}
 return "email-id and phone number already resistered";
	
	
}



}
