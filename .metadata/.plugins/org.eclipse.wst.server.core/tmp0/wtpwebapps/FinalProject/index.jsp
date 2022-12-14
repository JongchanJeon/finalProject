<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home Chef(홈 셰프)</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style>
	img {
		float:left;
	}
	#carouselExampleInterval {
		width : 900px;
		padding : 70px;
  		text-align : center;
	}
</style>
</head>
<body>

<%@ include file ="./com/yju/2wda/2101198/controller/view/default/header.jsp" %>
 <center>
<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="/FinalProject/com/yju/2wda/2101198/controller/image/food1.jpg" class="d-block w-100"  height="500px" width ="1300px">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="/FinalProject/com/yju/2wda/2101198/controller/image/food2.jpg" class="d-block w-100"  height="500px" width ="1300px">
    </div>
    <div class="carousel-item">
      <img src="/FinalProject/com/yju/2wda/2101198/controller/image/food3.jpg" class="d-block w-100"  height="500px" width ="1800px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">이전</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">다음</span>
  </button>
</div>
</center>
<br/>
<hr/>
<br/>

<%@ include file ="./com/yju/2wda/2101198/controller/view/default/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>