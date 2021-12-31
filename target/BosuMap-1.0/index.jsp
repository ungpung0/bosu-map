<%-- 
    Document   : index
    Created on : 2021. 8. 2, 오전 6:15:24
    Author     : JuwonPark
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>

<!DOCTYPE html>
<html lang="KO">
    <head>
        <!-- Basic Settings -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width", initial-scale="1">
        
        <!-- CSS Connection -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css"/>
        
        <!-- Title -->
        <title>BosuMap Project Index</title>
        
        <!-- External Resources -->
        <script src="https://kit.fontawesome.com/69b73ca6e6.js" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
        
        <!-- JQuery Code -->
        <script type="text/javascript">
            // Top Bars
            var topbarFlag = false;
            $(function(){
                $(window).resize(function(){
                    var windowWidth = window.outerWidth;
                    if(windowWidth >= 1000) {
                        $('.topbar_menu').css("display", "flex");
                    }
                })
                $('.topbar_toggle').click(function(){
                    if(topbarFlag == true) {
                        $('.topbar_menu').css("display", "none");
                        topbarFlag = false;
                    }else {
                        $('.topbar_menu').css("display", "flex");
                        topbarFlag = true;
                    }
                });
            })
            // Containers
            $(function(){
                $("#text_welcome").fadeIn(3000);
            });
            // You cant use Login Page.
            function Error(){
                alert("게시판을 이용하려면 로그인하세요");
            }
        </script>
    </head>
    <body>
        <!-- Top Bars -->
        <nav class="topbar">
            <div class="topbar_logo">
                <a href="${pageContext.request.contextPath}/index.jsp">BosuMap</a>
            </div>
            <ul class="topbar_menu">
                <li><a href="${pageContext.request.contextPath}/jsp/about.jsp">About</li>
                <li onclick="Error()"><a href="${pageContext.request.contextPath}/jsp/login.jsp">Board</li>
                <li><a href="${pageContext.request.contextPath}/jsp/program.jsp">Program</li>
                <li><a href="${pageContext.request.contextPath}/jsp/login.jsp">Login</li>
                <li><a href="${pageContext.request.contextPath}/jsp/register.jsp">Register</li>
            </ul>
            <a href="#" class="topbar_toggle">
                <i class="fas fa-bars"></i>
            </a>
        </nav>
        <!-- Containers -->
        <div class="container">
            <div id="mid">
                <h1 id="text_welcome">보수맵에 오신 것을 환영합니다!</h1>
            </div>
            
        </div>
    </body>
</html>
