<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Home Chef(홈셰프)</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <style>
        #center {
            margin: auto;
            text-align: center;
            height: 200px;
            width: 600px;
        }
    </style>
</head>

<body>
    <div id="center">
        <img src="../../image/homecheflogo.png" alt="이미지 로고 없음" height="200px" width="200px"
            onclick="location='/FinalProject/src/main/webapp/index.jsp'">
        <br />
        <br />
        <br />
        <h2>정말로 회원 탈퇴를 하시겠습니까?</h2>

        <span>
            <button type="button" class="btn btn-primary" onclick="location='../../../../../../../userDelete.be'">네</button>
            <button type="button" class="btn btn-primary" onclick="location='../../../../../../../index.jsp'">아니요</button>
        </span>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</body>

</html>