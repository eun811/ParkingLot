<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.parking.Car" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Parking Lot</title>
</head>
<body>
	<jsp:useBean id="P" class="com.parking.CarBean" scope="application" />
	<jsp:setProperty property="enter" name="P" param="enter"/>
	<jsp:setProperty property="exit" name="P" param="exit"/>
	
	
	<h1>주차 관리 프로그램</h1>
	<form action="parkinglot.jsp" method="Post">
		주차장에 들어온 차 번호 : <input type="text" name="enter"/>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value="입차" />
	</form>
	
	<form action="parkinglot.jsp" method="Post">
		주차장에서 나간 차 번호 : <input type="text" name="exit"/>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value="출차" />
	</form>
	<hr/>
	주차된 차량 목록 <br>
	<table border="1">
		<tr>
		<th>차량 번호</th> <th>입차 시간</th>
		</tr>
		<%			
			Car[] cars = P.getCarList();
			for(int i=0; i<cars.length; i++){
			Car carin = cars[i];
		%>
			<tr>
				<td><%=carin.getPlateNumber() %> </td>
				<td><%=carin.getSimpleTime() %> </td>			
			</tr>				
		<%
			}		
		%>	
		
	</table>
	총 대수 : <jsp:getProperty property="total" name="P"/>
</body>
</html>

<!-- 
*************************************************
className : com.parking.Car
name 			r/w 		datatype
-------------------------------------------
plateNumber		 r 			String
parkingTime		 r 			java.util.Date

*************************************************
className : com.parking.CarBean
name 		r/w 			datatype
------------------------------------
enter		 w 				String
exit		 w 				String
total		 r			 	int
car			 r 				CarDto
carList		 r 				carDto[]
-->