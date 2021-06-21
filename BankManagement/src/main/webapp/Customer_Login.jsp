<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:include page="header.jsp" /> 
 
 <%
 ArrayList<String> stateList=(ArrayList<String>) request.getAttribute("statelist");
 String result= (String) request.getAttribute("result");
 %>

<%if(result!=null){ %> 
<div class="alert alert-danger" role="alert">
  <%=result%>
</div>
<%} %>
 
 <h1><%=result%></h1>

 
<section class="">
 <div class="container" >
 
 <div class="row">


 <div class="col-md-3"></div>
 <div class="col-md-6 card-1" style="margin-top: 30px;margin-bottom: 30px;">
 

<form class="row g-3" method="POST" action="BankController">
<div class="col-md-6">
 <label for="FirstName" class="form-label" >First Name</label>
  <input type="text" name="FirstName is-valid" class="form-control" id="FirstName"  onkeyup="myFunction()" required >
  <div class="valid-feedback">
      Looks good!
    </div>
</div>

<div class="col-md-6">
 <label for="LastName" class="form-label">Last Name</label>
    <input type="text" name="LastName" class="form-control" id="LastName" onkeyup="myFunction()" required>
    <div class="invalid-feedback">
      Please enter a message in the textarea.
    </div>
</div>
<div class="col-md-12">
    <label for="inputEmail4" class="form-label">Date Of Birth</label>
    <input type="date"  name="age" class="form-control" id="age">
  </div>

  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email"  name="email" class="form-control" id="email1" onkeyup="myFunction()"  required>
    <span id="lblError" style="color: red"></span>
  </div>
  
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Phone</label>
    <input type="tel" class="form-control" name="mobile" id="mobile" maxlength=10>
  </div>
  
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Password</label>
 
    <input type="password" class="form-control password" name="password"  id="password" onkeyup="myFunction1()" >  
   <div class="error" id="nameErr">min 8 char required</div>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label password">Confirm Password</label>
     <i class="fas fa-eye icon"></i>
   <input type="password" class="form-control password confirmpassword" name="confirmpassword" id="confirmpassword" onchange="myFunction()" onkeyup="myFunc2()" >  
     <div class="error" id="nameErr1">min 8 char required</div>
  </div>
  
  <div class="col-12">
    <label for="inputAddress" class="form-label">Address</label>
    <textarea class="form-control"  name="address" id="address"  onkeyup="myFunction()" placeholder="e.g : 1234 Main St"  id="address" style="height: 100px" maxlength=200></textarea>
    
  </div>
 
  <div class="col-md-6">
    <label for="inputState" class="form-label">State</label>
    <select id="inputState" name="state" class="form-select" required>
      
      
      <%for(String s:stateList){
       %>
      }
      <option value=<%=s%>><%=s%></option>
      
      <%} %>
      
      
    </select>
  </div>
  <div class="col-md-6">
    <label for="inputZip" class="form-label">Zip</label>
    <input type="number" class="form-control" name="zipcode" id="zipcode">
  </div>
<input type="hidden" name="action" value="AddCustomer" />
  <div class="col-12">
    <p style="text-align: center;"> <button type="Reset" class="btn btn-secondary" onClick="window.location.reload()">Reset</button> <button type="submit" class="btn btn-primary">Register</button> </p>
  </div>

</form>


 </div>
 
 <div class="col-md-3"></div>
 </div>
 
 </div>
 </section> 
 
 <script>
 $('.icon').hover(function () {
	    $('.password').attr('type', 'text');
	}, function () {
	    $('.password').attr('type', 'password');
	});
 </script>
 
 
 <script>
 
 document.addEventListener("DOMContentLoaded", function(event) { 
	 document.getElementById("nameErr").style.display="none";
	 document.getElementById("nameErr1").style.display="none";
	});
 
function myFunction() {
  var FirstName = document.getElementById("FirstName");
  FirstName.value = FirstName.value.toUpperCase();
  var LastName = document.getElementById("LastName");
  LastName.value = LastName.value.toUpperCase();
  var email1 = document.getElementById("email1");
  email1.value = email1.value.toUpperCase();
  var address = document.getElementById("address");
  address.value = address.value.toUpperCase();
 
  var password=document.getElementById("password");
  var confirmpassword=document.getElementById("confirmpassword");
 
  
  var email = document.getElementById("email1").value;
  var lblError = document.getElementById("lblError");
  lblError.innerHTML = "";
  var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
  if (!expr.test(email)) {
      lblError.innerHTML = "Invalid email address.";
  }
  
 if(password.value !== confirmpassword.value)
	 {
	   alert("Please Enter Same Password");
	   
	 } 
 
 
 
 
  
}

function myFunction1(){
	 var password=document.getElementById("password");
	 var passlen = password.value;
	 console.log("password",passlen);
	 if(passlen.length<8){
		  document.getElementById("password").className = "form-control password mystyle";
		  document.getElementById("nameErr").style.display = "block";
		
	  }
	 else if(passlen.length>7){
		 document.getElementById("password").className = "form-control password ";
		 document.getElementById("nameErr").style.display = "none";
	 }
	   
}

function myFunc2(){
	 var confirmpassword=document.getElementById("confirmpassword").value;
	 console.log("confirmpassword",confirmpassword)
	  if(confirmpassword.length<8){
		  document.getElementById("confirmpassword").className = "form-control password mystyle";
		  document.getElementById("nameErr1").style.display = "block";
		
	  }
	 else if(confirmpassword.length>7){
		 document.getElementById("confirmpassword").className = "form-control password ";
		 document.getElementById("nameErr1").style.display = "none";
	 } 
}



 /*    function ValidateEmail() {
        var email = document.getElementById("email").value;
        var lblError = document.getElementById("lblError");
        lblError.innerHTML = "";
        var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        if (!expr.test(email)) {
            lblError.innerHTML = "Invalid email address.";
        }
    } */




</script>
 
 
 
 
 
</body>
</html>