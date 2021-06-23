<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <jsp:include page="header.jsp" /> 

 <%
 String res= (String) request.getAttribute("res");
 %>

<div class="containe" style="margin-top: 50px;">
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4 card-1" >

 
 <form method="POST" action="BankController" style="padding: 10px;"  id="myForm">
 
  <div class="form-outline mb-4">
   <label class="form-label" >Email </label>
   <input type="email"  name="email" class="form-control" id="email1"  required>
  </div>
 
   <div class="form-outline mb-4">
   <label class="form-label" >Password</label>
     <input type="password" class="form-control password" name="password"  id="password" >
  </div>

  <input type="hidden" name="action" value="CustomerSignIn" /> 
  
  <p style="text-align: center;"> <button type="submit" class="btn btn-primary">Sign In</button> </p>
  <p style="text-align: center;"> Not a registered user? <a href="BankController?action=showRegistrationPage"> create account</a></p>
 </form>
 
 

</div>
<div class="col-md-4"></div>
</div>
</div>



<script>
function myFunction() {
  document.getElementById("myForm").reset();
}
</script>


<%if(res.equals("true")){ %>
<script>
swal({
  title: "Good job!",
  text: "Account Created Successfully!",
  icon: "success",
  button: "OK",
});
</script>
<%} %>

</body>
</html>