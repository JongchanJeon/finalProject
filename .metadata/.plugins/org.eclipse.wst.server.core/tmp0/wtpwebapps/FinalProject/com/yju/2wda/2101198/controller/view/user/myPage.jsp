<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Home Chef(홈 셰프)</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <style>
        body {
            margin: auto;
            text-align: center;
            height: 200px;
            width: 700px;
        }

        #flexCheckDefault {
            text-align: center;
        }
    </style>
</head>

<body>
<%	String loginUserId = (String) session.getAttribute("login_id"); %>
        <img src="../../image/homecheflogo.png" alt="이미지 로고 없음" height="200px" width="200px"
            onclick="location='/FinalProject/index.jsp'">
        <br />
        <h3>회원 My Page</h3>
        <h4><%=loginUserId %>님 안녕하세요.</h4>
        <br />
        
		<button type="button" class="btn btn-primary"  onclick="location='./deleteUser.jsp'">회원삭제</button>
        <button type="button" class="btn btn-primary"  onclick="location='./readUserInfo.be'">회원정보 수정</button>
        <button type="button" class="btn btn-primary" onclick="location='./myProducts.be'">내 상품주문 조회</button>
        <button type="button" class="btn btn-primary" onclick="location='./point.be'">포인트</button>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>

</html>