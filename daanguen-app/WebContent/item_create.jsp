<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>상품 등록</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.6.2/css/bootstrap-slider.min.css" integrity="sha256-G3IAYJYIQvZgPksNQDbjvxd/Ca1SfCDFwu2s2lt0oGo=" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
</head>
<body>
	<jsp:include page="/inc/header_main.jsp" flush="false">
		<jsp:param name="type" value="main" />		
	</jsp:include>

    <div class="container container-sm container-item-create">
        <h5 class="container-headline">중고거래 상품 등록</h5>

        <form class="form-item-create">
            <div class="form-group form-picture">
                <div class="file-box">
                    <input class="upload-name" value="파일선택" disabled="disabled">

                    <label for="ex_filename" class="btn btn-secondary">업로드</label>
                    <input type="file" id="ex_filename" class="upload-hidden">
                </div>
            </div>

            <div class="form-group form-title">
                <input type="text" class="form-control" id="productsTitle" placeholder="제품 이름을 입력해주세요.">
            </div>
            <div class="form-group form-category">
                <select id="productsCategory" class="form-control">
                    <option value="" disabled selected>카테고리를 선택해주세요.</option>
                    <option value="차량">차량</option>
                    <option value="가구/인테리어">가구/인테리어</option>
                    <option value="유아동/유아도서">유아동/유아도서</option>
                    <option value="생활/가공식품">생활/가공식품</option>
                </select>
            </div>
            <div class="form-group form-price">
                <input type="number" class="form-control" id="productsPrice" min="0" step="1000" placeholder="가격을 입력해주세요. (￦)">
            </div>
            <div class="form-group form-description">
                <textarea class="form-control" id="productsDescription" rows="10" placeholder="제품 설명을 작성해주세요."></textarea>
            </div>
            <div class="form-group form-car-model-year">
                <select id="carModelYear" class="form-control">
                    <option value="" disabled selected>차량 연식을 선택해주세요</option>
                    <option value="2020">2020년</option>
                    <option value="2019">2019년</option>
                    <option value="2018">2018년</option>
                    <option value="2017">2017년</option>
                    <option value="2016">2016년</option>
                    <option value="2015">2015년</option>
                    <option value="2014">2014년</option>
                    <option value="2013">2013년</option>
                    <option value="2012">2012년</option>
                    <option value="2011">2011년</option>
                    <option value="2010">2010년</option>
                </select>
            </div>
            <div class="form-group form-car-mileage">
                <input type="number" class="form-control" id="carMileage" placeholder="주행거리를 입력해주세요.(km)">
            </div>
            <div class="form-group form-car-smoking">
                <label>차량 판매자 흡연 여부</label>
                <div class="form-check form-check-inline form-check-smoking">
                    <input class="form-check-input" type="radio" name="smokingOptions" id="inlineSmoker" value="true">
                    <label class="form-check-label smoker" for="inlineSmoker">예, 흡연자 입니다.</label>
                </div>
                <div class="form-check form-check-inline form-check-nonsmoking">
                    <input class="form-check-input" type="radio" name="smokingOptions" id="inlineNonSmoker" value="false">
                    <label class="form-check-label non-smoker" for="inlineNonSmoker">아니오, 비 흡연자 입니다.</label>
                </div>
            </div>
            <button class="btn btn-primary btn-submit">상품 등록하기</button>
        </form>
    </div>

    <footer>
		<jsp:include page="/inc/footer.jsp" flush="false" />
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.6.2/bootstrap-slider.js" integrity="sha256-59/apVFrosMLFX2dHZLGvb3nPpu7e0Yx1rsDr1dTRrk=" crossorigin="anonymous"></script>

    <script>
        $(document).ready(function(){
            var fileTarget = $('.file-box .upload-hidden');

            fileTarget.on('change', function(){
                if(window.FileReader){
                    var filename = $(this)[0].files[0].name;
                } else {
                    var filename = $(this).val().split('/').pop().split('\\').pop();
                }

                $(this).siblings('.upload-name').val(filename);
            });
        });
    </script>
</body>
</html>