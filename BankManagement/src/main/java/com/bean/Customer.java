package com.bean;

public class Customer {

	
	private int custID;
	private String FirstName;
	private String LastName;
	private String age;
	private String emailID;
	private String phone;
	private String password;
	private String address;
	private String state;
	private int pincode;




	public Customer(int custID, String firstName, String lastName, String age, String emailID, String phone,
			String password, String address, String state, int pincode) {
		super();
		this.custID = custID;
		FirstName = firstName;
		LastName = lastName;
		this.age = age;
		this.emailID = emailID;
		this.phone = phone;
		this.password = password;
		this.address = address;
		this.state = state;
		this.pincode = pincode;
	}


	
	
	

	public Customer(String firstName, String lastName, String age, String emailID, String phone, String password,
			String address, String state, int pincode) {
		super();
		FirstName = firstName;
		LastName = lastName;
		this.age = age;
		this.emailID = emailID;
		this.phone = phone;
		this.password = password;
		this.address = address;
		this.state = state;
		this.pincode = pincode;
	}






	public String getPassword() {
		return password;
	}






	public void setPassword(String password) {
		this.password = password;
	}






	public int getCustID() {
		return custID;
	}



	public void setCustID(int custID) {
		this.custID = custID;
	}



	public String getFirstName() {
		return FirstName;
	}



	public void setFirstName(String firstName) {
		FirstName = firstName;
	}



	public String getLastName() {
		return LastName;
	}



	public void setLastName(String lastName) {
		LastName = lastName;
	}



	public String getAge() {
		return age;
	}



	public void setAge(String age) {
		this.age = age;
	}



	public String getEmailID() {
		return emailID;
	}



	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getState() {
		return state;
	}



	public void setState(String state) {
		this.state = state;
	}



	public int getPincode() {
		return pincode;
	}



	public void setPincode(int pincode) {
		this.pincode = pincode;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}






	@Override
	public String toString() {
		return "Customer [custID=" + custID + ", FirstName=" + FirstName + ", LastName=" + LastName + ", age=" + age
				+ ", emailID=" + emailID + ", phone=" + phone + ", password=" + password + ", address=" + address
				+ ", state=" + state + ", pincode=" + pincode + "]";
	}


	
}
