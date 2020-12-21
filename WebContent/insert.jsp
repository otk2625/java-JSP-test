<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.cos.test.config.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추가</title>
</head>
<body>

<% String sql = "INSERT INTO users(username, password, email) VALUES ('abcd', '1234', 'abcd@nate.com')";
	Connection conn = DBConn.getInstance();;
	PreparedStatement pstmt = 
			conn.prepareStatement(sql);
	pstmt.executeUpdate();
%>
</body>
</html>