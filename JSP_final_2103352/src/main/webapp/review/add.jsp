<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<title>Add Review</title>
</head>
<body>
<form action="addProc.jsp" method="post">

<div class="d-flex justify-content-center">
  <div class="position-absolute top-50 start-50 translate-middle">
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">Title</label>
	  <input type="text" class="form-control" name="title">
	</div>
	<div class="mb-3 col-auto">
	  <label for="exampleFormControlTextarea1" class="form-label">Content</label>
	  <textarea class="form-control" name="content" rows="3"></textarea>
	</div>
	<input type="submit" class=" mb-3 btn btn-secondary" value="Submit">
  </div>
</div>

</form>
</body>
</html>