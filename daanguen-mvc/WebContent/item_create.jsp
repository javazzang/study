<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
<jsp:include page="/inc/header.jsp"></jsp:include>
<!-- Contents 영역 -->   
    
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
    
    
    
<jsp:include page="/inc/header.jsp"></jsp:include>