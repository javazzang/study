<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<footer>
    <div class="container">
        <a href="index.html">2019 당근 마켓</a>
        <h6>Copyright © Danggeun Market Inc. All rights reserved.</h6>
    </div>
</footer>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.6.2/bootstrap-slider.js" integrity="sha256-59/apVFrosMLFX2dHZLGvb3nPpu7e0Yx1rsDr1dTRrk=" crossorigin="anonymous"></script>
<script>
    // With JQuery
    $("#carYeara").slider({ min: 0, max: 10, value: 0, focus: true });
    $("#sliderCarModelYear").slider({ min: 0, max: 10, value: [0, 10], focus: true });

    $("#carDistancea").slider({ min: 0, max: 10, value: 0, focus: true });
    $("#sliderCarMileage").slider({ min: 0, max: 10, value: [0, 10], focus: true });
</script>
</body>
</html>
    