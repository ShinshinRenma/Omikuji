<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Omikuji</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <p>
        <h1>Send an Omikuji</h3>
        <form action='/omikuji/data' method='POST'>
            <label>Pick any number from 5 to 25.</label>
            <input type="num" class="form-control" name='num'>
            <label>Enter the name of any city.</label>
            <input type='text' class="form-control" name='city'>
            <label>Enter the name of any real person.</label>
            <input type='text' class="form-control" name='person'>
            <label>Enter professional endeavor or hobby.</label>
            <input type='text' class="form-control" name='endeavor'>
            <label>Enter the name of a living thing</label>
            <input type='text' class="form-control" name='animal'>
            <label>Say something nice about someone.</label>
            <input type='textarea' class="form-control" name='compliment'>
            <Lable>Send and show a friend</Label>
            <input type='submit' value='Send'>
        </form>
    
    
    </p>
</body>
</html>
