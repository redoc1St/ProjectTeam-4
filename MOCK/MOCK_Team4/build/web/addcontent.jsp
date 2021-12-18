<%-- 
    Document   : addcontent
    Created on : Nov 27, 2021, 10:45:27 PM
    Author     : chutr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="css/edit.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body style="background-color: beige;">
        <%@include file="header.jsp"%>
        <div class="bodyDiv">
            <%@include file="left.jsp"%>
            <div class="bodyRight">
                <h2>Add Content</h2>
                <form action="add" method="get">
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" class="form-control" id="fName" name="title" placeholder="Enter the title">
                    </div>
                    <div class="form-group">
                        <label >Brief</label>
                        <textarea class="form-control" id="detail" name="brief" rows="2"></textarea>
                    </div>
                    <div class="form-group">
                        <label >Content</label>
                        <textarea class="form-control" id="detail" name="content" rows="3"></textarea>
                    </div>
                    <input class="btn btn-primary" type="submit" value="Submit Button">
                    <input id="reset" class="btn btn-primary" type="button"  value="Reset Button">
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
                location.reload();
            }
        </script>
    </body>
</html>
