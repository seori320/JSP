<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><script src="/docs/5.3/assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.111.3">
    <title>sign up</title>
    
    <link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <!-- Favicons -->
	<link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
	<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
	<link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
	<meta name="theme-color" content="#712cf9">
	
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }
      .bd-mode-toggle {
        z-index: 1500;
      }
      
      .container {
		  max-width: 960px;
	  }

    </style>
    
</head>
<body class="bg-body-tertiary">
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
    
<div class="container">
  <main>
    <div class="py-1 text-center">
    <h2>회원가입 페이지</h2>
      <p class="lead">회원가입을 위한 회원정보를 입력해주세요</p>
      <div class="d-flex justify-content-center">
	      <div class="col-md-7 col-lg-8 mb-3">
	        <form class="needs-validation" action="signupProc.jsp" method="post" novalidate>
	          <div class="row g-3 text-center">
				<div class="col-12">
	              <label for="email" class="form-label">Email(Id)</label>
	              <input type="email" class="form-control" name="id" placeholder="you@example.com" required>
	              <div class="invalid-feedback">
	                Please enter a valid email address for sign-up information.
	              </div>
	            </div>
	            
	            <div class="col-12">
	              <label for="password" class="form-label">Password</label>
	              <input type="password" class="form-control" name="password" placeholder="abcd1234" required>
	              <div class="invalid-feedback">
	                Please enter a valid Password address for sign-up information.
	              </div>
	            </div>
	            
	            <div class="col-sm-6">
	              <label for="name" class="form-label">Name</label>
	              <input type="text" class="form-control" name="name" placeholder="홍길동" required>
	              <div class="invalid-feedback">
	                Valid Name is required.
	              </div>
	            </div>
	
	            <div class="col-sm-6">
	              <label for="age" class="form-label">Age</label>
	              <input type="text" class="form-control" name="age" placeholder="20" required>
	              <div class="invalid-feedback">
	                Valid Age is required.
	              </div>
	            </div>
	
	          <hr class="my-4">
	
	          <button class="w-100 btn btn-primary btn-lg" type="submit">Continue to Sign-up</button>
	          </div>
	      	</form>
	      </div>
      </div>
    </div>
  </main>

  <footer class="my-3 pt-3 text-body-secondary text-center text-small">
    <p class="mb-1">&copy; 한양여자대학교 2103352 이서윤</p>
  </footer>
</div>


    <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

      <script src="checkout.js"></script>
</body>
</html>