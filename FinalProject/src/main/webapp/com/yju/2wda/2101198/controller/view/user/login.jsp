<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home Chef(홈 셰프)</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<style>
	form {
		display : flex;
		flex-direction: column;
		justify-content : center;
		align-items : center;
		text-align : center;
		
	}
	#mainlogin {
		text-align : center;
		padding-left : 400px;
		padding-right : 400px;
	}
	#id

</style>
<body>
<center><h2>로그인 도우미</h2></center>
<br/>
<form>
<div id ="mainlogin">
<a href="../../../../../../../index.jsp">
<img src="../../image/homecheflogo.png" alt="이미지 로고 없음" height="200px" width ="200px" onclick="location='/FinalProject/src/main/webapp/index.jsp'">
</a>
<br/>

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">아이디(id)</label>
    <input id="inputsize" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style = {width: 200px;}>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">비밀번호(password)</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <button type="submit" class="btn btn-primary">로그인</button>
  <button type="button" class="btn btn-primary" onclick="location='./join.jsp'">회원가입</button>
  </div>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>