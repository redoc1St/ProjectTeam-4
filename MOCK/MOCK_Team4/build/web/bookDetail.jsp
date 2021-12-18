<%-- 
    Document   : bookdetail
    Created on : Dec 18, 2021, 9:03:42 AM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/edit.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
    <body style="background-color: beige;">
        <%@include file="header.jsp"%>
        <div class="bodyDiv">
            <%@include file="left.jsp"%>
            <div class="bodyRight">
                <h2>View Book Detail</h2>
                <h4 style="color: green"> ${success}</h4>
                <form action="edit" method="get">
                    <div class="form-group">
                        <label>Book Title</label>
                        <input value="${item.title}" type="text" class="form-control" id="title" name="title" <c:if test="${sessionScope.account.role == 1}">readonly="true"</c:if>>
                    </div>
                    <div class="form-group">
                        <label >Author</label>
                        <input value="${item.author}" type="text" class="form-control" id="author" name="author"<c:if test="${sessionScope.account.role == 1}">readonly="true"</c:if>>
                    </div>
                    <div class="form-group">
                        <label>Brief</label>
                        <input  type="email" value="${item.brief}" class="form-control" id="email" name="brief" <c:if test="${sessionScope.account.role == 1}">readonly="true"</c:if>>
                    </div>
                    <div class="form-group">
                        <label >Publisher</label>
                        <input value="${item.publisher}" type="tel" class="form-control" id="phone" name="publisher"<c:if test="${sessionScope.account.role == 1}">readonly="true"</c:if>>
                    </div>
                    <div class="form-group">
                        <label >Content</label>
                        <textarea  class="form-control" id="detail" name="content" rows="3"<c:if test="${sessionScope.account.role == 1}">readonly="true"</c:if>>${item.content}</textarea>
                    </div>
                    <div class="form-group">
                        <label >Category</label>
                        <textarea  class="form-control" id="detail" name="category" rows="3"<c:if test="${sessionScope.account.role == 1}">readonly="true"</c:if>>${item.category}</textarea>
                    </div>
                    <c:if test="${sessionScope.account.role == 0}">
                    <input style="width: 100px" class="btn btn-primary" type="submit" value="Update">
                    </c:if>
                </form>
            </div>

        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" 
        crossorigin="anonymous"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js">
        </script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.2/js/toastr.min.js">
        </script>
        <script>
            $("#reset").on('click', reset);
            function reset() {
                $('input[type=text]').val('');
                $('input[type=tel]').val('');
                $('textarea').val('');
            }
//            $("#reset").on('click', add);
//            function add() {
//                $.get("reset", function () {
//                }
//            });

        </script>
    </body>
</html>
