<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Chef header</title>
<style>
	#search {
		width : 700px;
		padding : 20px;
	}
	#searchbtn {
		width : 100px;
	}
	#navbar {
		width : 500px;
	}
	#center {
		width : 900px;
		margin : 0 auto;
  		text-align : center;
	}
	#login {
		float:right; 
		padding-top: 50px;
        padding-right: 300px;
        padding-bottom: 30px;

	}
</style>
</head>
<body>
<!-- 로그인 회원가입 페이지 -->
<div id ="login" class="btn-group" role="group" aria-label="Basic outlined example">
  <button type="button" class="btn btn-outline-primary">로그인</button>
  <button type="button" class="btn btn-outline-primary">회원가입</button>
</div><br/><br/><br/><br/>


<!-- 로고, 상품검색, 네비게이션 바-->
<div id ="center">
<img src="./com/yju/2wda/2101198/controller/image/homecheflogo.png" class="img-thumbnail" alt="..." height="150px" width ="150px">
	<form  class="d-flex" role="search">
        <input id = "search" class="form-control me-2" type="search" placeholder="상품 검색 : " aria-label="Search" >
        <button id = "searchbtn" class="btn btn-outline-success" type="submit">검색</button>
    </form><br/>

    <nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Home Chef</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">메인</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">출장 요리구매</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Pricing</a>
        </li>
      </ul>
      <span class="navbar-text">
        2101198_WD2A
      </span>
    </div>
  </div>
</nav>
</div>
</body>
</html>