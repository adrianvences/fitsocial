<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<style>
  body {
      background-image: url("/images/hero2.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      min-height: 100vh;
  }
  </style>
<body>
    <div class="container">
      <div class="container" style="height:100px;"></div>
    <div class="container bg-light border" style="width: 400px ;">
        
        <div class="container">
        <img class="align-content-center" style="height: 200px ;" src="images/fitsocialLogo.PNG" alt="">
    <div class="container">
            
        </div>
        </div>
        <!-- this is reg -->
        <div class="row">
            <h2 class="text-center">Create Workout</h2>
    
            <form:form action="/register" method="post" modelAttribute="workout">
    
            <div>
            <div class="form-group mt-1">
                <form:label path="title"></form:label>
                <form:input class="form-control" placeholder="Post Name" path="title" />
                <form:errors  path="title" />
            </div>
      
            <div class="form-group mt-1">
                <form:label path="type"></form:label>
                <form:select class="form-control custom-select"  path="type">
                  <form:option value="null">Type</form:option>
                  <form:option value="cardio">Cardio</form:option>
                  <form:option value="weightLifting">weight lifting</form:option>
                  <form:option value="yoga">yoga</form:option>
                  <form:option value="other">other</form:option>
                </form:select>
                <form:errors  path="type" />
            </div>
    
            <div class="form-group mt-1">
                <form:label path="targetMuscle"></form:label>
                <form:select class="form-control custom-select" placeholder="targetMuscle" path="targetMuscle">
                  <form:option value=""  >target muscle</form:option>
                  <form:option value="neck">Neck</form:option>
                  <form:option value="shoulder">shoulder</form:option>
                  <form:option value="chest">chest</form:option>
                  <form:option value="back">back</form:option>
                  <form:option value="torso">torso</form:option>
                  <form:option value="glutes">glutes</form:option>
                  <form:option value="legs">legs</form:option>
                </form:select>
                <form:errors  path="targetMuscle" />
            </div>
                
            <div>
                <form:label path="equipment"></form:label>
                <form:select class="form-control custom-select"  path="type">
                  <form:option value="null">Equipment</form:option>
                  <form:option value="machine">machine</form:option>
                  <form:option value="freeWeight">free weights</form:option>
                  <form:option value="bodyWeight">body weight</form:option>
                </form:select>
                <form:errors  path="equipment" />
            </div>
    
            <div>
                <form:label path="difficulty"></form:label>
                <form:select class="form-control custom-select"  path="type">
                  <form:option value="null">Difficulty</form:option>
                  <form:option value="beginner">beginner</form:option>
                  <form:option value="intermediate">intermediate</form:option>
                  <form:option value="advanced">advanced</form:option>
                </form:select>
                <form:errors  path="difficulty" />
            </div>

            <div>
              <form:label path="instructions"></form:label>
              <form:textarea class="form-control mt-1" style="height:150px" placeholder="instructions" path="instructions" />
              <form:errors  path="instructions" />
          </div>

            </div>
            <input class="mt-3 mb-3 btn btn-dark btn-md " style="width:375px;" type="submit" value="Post">
            </form:form>
    
        </div>
        </div>  
        
        <div class="container bg-light border mt-3 d-flex align-items-center justify-content-center " style="width: 400px ; height: 75px;">
            <h6 class="text-center"> Go <a href="/workouts"> Back</a></h6>
        </div>
    
    </div>
    </div>
</body>
</html>
