<%@page import="review.addDo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="/docs/5.3/assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.111.3">
    <title>content 1</title>
    
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


	  .marketing .col-lg-4 {
		  margin-bottom: 1.5rem;
		  text-align: center;
		}
		.marketing .col-lg-4 p {
		  margin-right: .75rem;
		  margin-left: .75rem;
		}
	 
	 .featurette-divider {
		  margin: 5rem 0;
		}
				
		.featurette-heading {
		  letter-spacing: -.05rem;
		}
	 @media (min-width: 40em) {
		  .carousel-caption p {
		    margin-bottom: 1.25rem;
		    font-size: 1.25rem;
		    line-height: 1.4;
		  }
		
		  .featurette-heading {
		    font-size: 50px;
		  }
		}
		
		@media (min-width: 62em) {
		  .featurette-heading {
		    margin-top: 10rem;
		  }
		}

    </style>
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
      <a href="/JSP_final_2103352/main.jsp" style="color:black;" class="d-flex align-items-center link-body-emphasis text-decoration-none">
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

<div class="container marketing">
  <div class="row featurette">
     <div class="col-md-7 order-md-2">
       <h2 class="featurette-heading fw-normal lh-1">나쁜엄마</h2>
       <p class="lead">
       		자식을 위해 악착같이 나쁜 엄마가 될 수 밖에 없었던 ‘영순’과 아이가 되어버린 아들 ‘강호’가 잃어버린 행복을 찾아가는 감동의 힐링 코미디<br><br>
       		편성 : JTBC 14부작<br>
       		연출 : 심나영   극본 : 배세영<br>
       		출연 : 라미란, 이도현 등
       </p>
     </div>
     <div class="col-md-3 order-md-1 ">
       <img src="../img/1.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500">
     </div>
   </div>
</div>


<div class="my-3 p-5 bg-body rounded shadow-sm">
   <h6 class="border-bottom pb-2 mb-0">Review</h6>
   
   <jsp:useBean id="adao" class="review.addDao" scope="application" />

	<%
		ArrayList<addDo> v = adao.getAllAdd();
		
		for(int i=0; i < v.size(); i ++) {
			addDo ado = v.get(i);
	%>
   
   <div class="d-flex text-body-secondary pt-3">
     <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
       <div class="d-flex justify-content-between">
         <strong class="text-gray-dark"><%=ado.getTitle() %></strong>
         <a href="info.jsp?num=<%=ado.getNum()%>">View</a>
       </div>
       <span class="d-block"><%=ado.getContent() %></span>
     </div>
   </div>
   <%
		}
	%>
  
   <small class="d-block text-end mt-3">
      <a href="add.jsp">리뷰 작성</a>
    </small>
</div>


<footer class="text-body-secondary py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">&copy; 한양여자대학교 2103352 이서윤</p>
  </div>
</footer>

<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</body>
</html>