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
<form class="" style="padding: 10px;" >
  <!-- Email input -->
  <div class="form-outline mb-4">
   <label class="form-label" name="eamil" for="form1Example1">Email address</label>
    <input type="email" id="form1Example1" class="form-control" />
   
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
   <label class="form-label" name="password" for="form1Example2">Password</label>
    <input type="password" id="form1Example2" class="form-control" />
   
  </div>


  <!-- Submit button -->
 <p style="text-align: center;"> <button type="submit" class="btn btn-primary btn-block">Sign in</button></p>
</form>
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