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
        form {
            margin: auto;
            text-align: center;
            height: 200px;
            width: 700px;
        }
        #productdescription{
            height : 400px;
            width : 700px;
        }
    </style>
</head>

<body>

    <form method ="post" action="../../../../../../../insertItem.be" enctype = "multipart/form-data">
        <img src="../../image/homecheflogo.png" alt="이미지 로고 없음" height="200px" width="200px"
            onclick="location='/FinalProject/index.jsp'">
        <br />
        <h3>상품 등록</h3>
        <br />

        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">상품 이름</span>
            <input type="text" class="form-control" placeholder="상품이름을 입력하세요." aria-label="Username"
                aria-describedby="basic-addon1" name = "product_name" >
        </div>

        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">상품 가격(1인당)</span>
            <input type="text" class="form-control" placeholder="상품 가격을 입력하세요." aria-label="Username"
                aria-describedby="basic-addon1" name = "product_price">
        </div>

        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">상품설명</span>
            <textarea class="form-control" placeholder="상품 설명을 입력하세요." aria-label="Username"
                aria-describedby="basic-addon1" id ="product_description" name = "product_description"></textarea>
        </div>
        <div class="mb-3">
            <label for="formFile" class="form-label">이미지 파일을 올려주세요.</label>
            <input class="form-control" type="file" id="formFile" name ="product_file">
          </div>
        <button type="submit" class="btn btn-primary">등록하기</button>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>

</html>