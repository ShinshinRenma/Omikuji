<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Omikuji</title>
</head>
<body>
    <p>
        <h1>Here's Your Omikuji</h1>
        <div>
            In <c:out value="${num}"/> years, you will live in <c:out value="${city}"/> with <c:out value="${person}"/> as your roommate, 
            <c:out value="${endeavor}"/> for a living. The next time you see a <c:out value="${animal}"/>, you will have good luck.  Also, <c:out value="${compliment}"/>.
            <p></p>
            <a href="/omikuji">Go Back</a>  
        </div>
    </p>
</body>
</html>
