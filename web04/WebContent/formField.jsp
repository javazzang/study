<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formField</title>
</head>
<body>

<h2>Input</h2><br/>

<form action="request03.jsp">
	<p>1. text 타입 : <input type="text" name="f1" value="" /></p>
	<p>2. password 타입 : <input type="password" name="f2" value="" /></p>
	<p>3. file : <input type="file" name="" value="" /></p>
	<p>4. radio : 
		<input type="radio" name="radioA" value="A" />A | 
		<input type="radio" name="radioA" value="B" />B
		
	</p>
	<p>5. checkbox :
		<input type="checkbox" name="checkBoxA" value="A" /> A |
		<input type="checkbox" name="checkBoxB" value="B" /> B
	</p>
	<p>6. number/date (html5)
		<input type="number" name="num" value="" />
		<input type="date" name ="dt" value="" />
	</p>
	<p>7. hidden : <input type="hidden" name="hdnName" value="홍길동" /></p>
	
	<h2>select</h2><br/>
	<p>8. select
		<select name="combo1">
			<option value="">선택하세요</option>
			<option value="1">숫자1</option>
			<option value="2">수자2</option>
			
		</select>
	</p>
	
	<h2>textarea</h2><br/>
	<textarea name="txtArea">값</textarea>

<button>보내줭</button>
</form>

</body>
</html>