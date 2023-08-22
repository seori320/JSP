<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<title>Search</title>
</head>
<body>
	<%
		String logout = request.getParameter("logout");
		if ( logout != null)
		{
			session.setAttribute("id", null);
			session.setMaxInactiveInterval(0);
		}
		
		String id = (String) session.getAttribute("id");
		if( id == null ){
			id = "손님";
		}
	%>



<div class="container py-3" >
  <header>
    <div class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
      <a href="main.jsp" style="color:black;" class="d-flex align-items-center link-body-emphasis text-decoration-none">
        <span class="fs-4">Drama Review</span>
      </a>

      <nav class="di-inline-flex mt-2 mt-md-0 ms-md-auto">
        <a class="me-3 py-2 link-body-emphasis text-decoration-none" href="#" style="color:black;">Notice</a>
        <a class="me-3 py-2 link-body-emphasis text-decoration-none" href="/JSP_final_2103352/search.jsp" style="color:black;">Search</a>
        <a class="me-3 py-2 link-body-emphasis text-decoration-none" href="/JSP_final_2103352/signup.jsp" style="color:black;">Sign-up</a>
        <%
			if( id.equals("손님")){
		%>
        <a class="py-2 link-body-emphasis text-decoration-none" data-value="Login" href="/JSP_final_2103352/loginForm.jsp" style="color:black;">Login</a>
        <%
			}
			else{
		%>
		<a class="py-2 link-body-emphasis text-decoration-none" data-value="Logout" href="/main.jsp?logout=1" style="color:black;">Logout</a>
		<%
			}
		%>
      </nav>
    </div>
  </header>
</div>


    <form class="d-flex" role="search" style="margin:0px 100px 0px 100px;">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>


	<nav aria-label="Page navigation example">
	  <ul class="pagination justify-content-center my-3 pt-3">
	    <li class="page-item disabled">
	      <a class="page-link">Previous</a>
	    </li>
	    <li class="page-item"><a class="page-link" href="#">1</a></li>
	    <li class="page-item">
	      <a class="page-link" href="#">Next</a>
	    </li>
	  </ul>
	</nav>
	
	
    <footer class="my-3 pt-3 text-body-secondary text-center text-small">
      <p class="mb-1">&copy; 한양여자대학교 2103352 이서윤</p>
    </footer>



</body>
</html>