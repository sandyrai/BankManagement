<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- <meta http-equiv='refresh' content='1'>  -->
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%-- <style><%@include file="css/style.css"%></style> --%>

<link href="css/style.css"  rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="js/jquery.validate.js"></script>

<script src="https://kit.fontawesome.com/23c8cef16a.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg  sticky-top navbar-dark bg-dark " style="background-color: #0b2750d9 !important">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <a class="navbar-brand" href="<%=request.getContextPath()%>"><i class="fas fa-university" style="font-size: 40px;"></i></a>
      <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
        <h4 class="header_title1">Bank of Delhi</h4>
       
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
