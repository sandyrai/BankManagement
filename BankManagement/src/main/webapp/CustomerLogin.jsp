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


<form method="POST" action="BankController"  class="" style="padding: 10px;" >
  
  <div class="form-outline mb-4">
   <label class="form-label" >Email address</label>
    <input type="email" id="eamil1"  name="eamil" class="form-control" />
  </div>

  <div class="form-outline mb-4">
   <label class="form-label" >Password</label>
    <input type="password" id="password1"  name="password" class="form-control" />
  </div>
  <input type="hidden" name="action" value="CustomerAccountLogin" />
  
 <p style="text-align: center;"> <button type="submit" class="btn btn-primary btn-block">Sign in</button></p>
</form>


 <p style="text-align: center;"> Not a registered user? <a href="BankController?action=showRegistrationPage"> create account</a></p>

</div>
<div class="col-md-4"></div>
</div>
</div>






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