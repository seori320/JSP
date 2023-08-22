<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  	
  	<script src="/docs/5.3/assets/js/color-modes.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.111.3">
    <title>main page</title>


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
      
body {
  background-image: linear-gradient(180deg, var(--bs-body-secondary-bg), var(--bs-body-bg) 100px, var(--bs-body-bg));
}

.container {
  max-width: 960px;
}

.pricing-header {
  max-width: 700px;
}
    </style>


    <!-- Custom styles for this template -->
    <link href="pricing.css" rel="stylesheet">
	
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

<main>
  <section class="py-2 text-center container">
    <div class="p-4 p-md-5 mb-4 rounded text-bg-dark">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">드라마 리뷰 사이트</h1>
        <p class="lead text-body-secondary">각종 드라마들의 평점, 리뷰 등을 공유하고 드라마에 관한 정보를 확인할 수 있는 사이트입니다. Search 페이지에서 리스트를 한눈에 확인할 수 있습니다.</p>
        <p>
          <a href="/JSP_final_2103352/search.jsp" class="btn btn-primary my-2">Search 페이지로 이동</a>
          <a href="/JSP_final_2103352/loginForm.jsp" class="btn btn-secondary my-2">Login 페이지로 이동</a>
        </p>
      </div>
    </div>
  </section>

  <div class="album py-4 bg-body-tertiary">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
          <div class="card shadow-sm">
            <img src="./img/1.jpg" class="bd-placeholder-img card-img-top" width="100%" height="435">
			<div class="card-body">
              <p class="card-text">나쁜엄마</p>
              <p class="card-text"><hr>2023 - 14부작</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='/JSP_final_2103352/review/1.jsp'">Review</button>
                </div>
                <small class="text-body-secondary">평점 3.5</small>
              </div>
            </div>
          </div>
        </div>
      
        <div class="col">
          <div class="card shadow-sm">
            <img src="./img/2.jpg" class="bd-placeholder-img card-img-top" width="100%" height="435">
            <div class="card-body">
              <p class="card-text">구미호뎐 1938</p>
              <p class="card-text"><hr>2023 - 12부작</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='/JSP_final_2103352/review/2.jsp'">Review</button>
                </div>
                <small class="text-body-secondary">평점 3.5</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <img src="./img/3.jpg" class="bd-placeholder-img card-img-top" width="100%" height="435">
            <div class="card-body">
              <p class="card-text">닥터 차정숙</p>
              <p class="card-text"><hr>2023 - 16부작</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='/JSP_final_2103352/review/3.jsp'">Review</button>
                </div>
                <small class="text-body-secondary">평점 3.5</small>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card shadow-sm">
            <img src="./img/4.jpg" class="bd-placeholder-img card-img-top" width="100%" height="435">
            <div class="card-body">
              <p class="card-text">택배기사</p>
              <p class="card-text"><hr>2023 - 6부작</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='/JSP_final_2103352/review/4.jsp'">Review</button>
                </div>
                <small class="text-body-secondary">평점 1.9</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <img src="./img/5.jpg" class="bd-placeholder-img card-img-top" width="100%" height="435">
            <div class="card-body">
              <p class="card-text">종이달</p>
              <p class="card-text"><hr>2023 - 10부작</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='/JSP_final_2103352/review/5.jsp'">Review</button>
                </div>
                <small class="text-body-secondary">평점 2.8</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <img src="./img/6.jpg" class="bd-placeholder-img card-img-top" width="100%" height="435">
            <div class="card-body">
              <p class="card-text">나의 해방일지</p>
              <p class="card-text"><hr>2022 - 16부작</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='/JSP_final_2103352/review/6.jsp'">Review</button>
                </div>
                <small class="text-body-secondary">평점 3.9</small>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card shadow-sm">
            <img src="./img/7.jpg" class="bd-placeholder-img card-img-top" width="100%" height="435">
            <div class="card-body">
              <p class="card-text">더 글로리</p>
              <p class="card-text"><hr>2022 - 16부작</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='/JSP_final_2103352/review/7.jsp'">Review</button>
                </div>
                <small class="text-body-secondary">평점 4.0</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <img src="./img/8.jpg" class="bd-placeholder-img card-img-top" width="100%" height="435">
            <div class="card-body">
              <p class="card-text">미스터 션샤인</p>
              <p class="card-text"><hr>2018 - 24부작</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='/JSP_final_2103352/review/8.jsp'">Review</button>
                </div>
                <small class="text-body-secondary">평점 4.2</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <img src="./img/9.jpg" class="bd-placeholder-img card-img-top" width="100%" height="435">
            <div class="card-body">
              <p class="card-text">낭만닥터 김사부3</p>
              <p class="card-text"><hr>2023 - 16부작(방영중)</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='/JSP_final_2103352/review/9.jsp'">Review</button>
                </div>
                <small class="text-body-secondary">평점 3.9</small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</main>

<footer class="text-body-secondary py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">&copy; 한양여자대학교 2103352 이서윤</p>
  </div>
</footer>


    <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

      
  </body>
</html>
