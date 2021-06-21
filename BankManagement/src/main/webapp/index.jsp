<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:include page="header.jsp" />  




<section class="bank_home">
<div class=container">
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-4" style="border-right: 2px solid black;">
<div class="card card-1" >
 
  <i class="fas fa-user-friends card-img-top customer_home"></i>
  <div class="card-body">
    <h5 class="card-title">Customer</h5>
    <p class="card-text">This is customer dedicated portal for Account and other Bnaking service .Enjoy Net Banking with Bank of Delhi.</p>
    <p style="text-align: center;"><a href="BankController?action=customerlogin" class="btn btn-primary">Login</a></p>
   <p style="text-align: center;"> Not a registered user? <a href="BankController?action=showRegistrationPage"> create account</a></p>
  </div>
</div>
</div>
<div class="col-md-4 ">

<div class="card card-1" >
  <i class="fas fa-university card-img-top customer_home"></i>
  <div class="card-body">
    <h5 class="card-title">Bank Staff</h5>
    <p class="card-text">This portal is dedicated to the Bank Employee.</p>
     <p style="text-align: center;"><a href="#" class="btn btn-primary">Login</a></p>
  </div>
</div>
</div>
<div class="col-md-2"></div>
</div>

</div>
</section>
 
</body>
</html>