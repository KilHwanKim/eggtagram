<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script>
	let result = '<c:out value="${result}"/>';
	console.log("result:"+result);
	if (result != '')
		alert(result);
</script>

</body>
</html>