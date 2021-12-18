<%-- 
    Document   : edit_profile
    Created on : Nov 25, 2021, 10:31:11 AM
    Author     : chutr
--%>

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
                <h2>Edit Profile</h2>
                <h4 style="color: green"> ${success}</h4>
                <form action="edit" method="get">

                    <div class="form-group">
                        <label>First Name</label>
                        <input value="${acc.firstName}" type="text" class="form-control" id="fName" name="fName" placeholder="Enter the first name">
                    </div>
                    <div class="form-group">
                        <label >Last Name</label>
                        <input value="${acc.lastName}" type="text" class="form-control" id="lName" name="lName" placeholder="Enter the last name">
                    </div>
                    <div class="form-group">
                        <label>Email address</label>
                        <input  readonly="" type="email" class="form-control" id="email" name="email" placeholder="${acc.email}">
                    </div>
                    <div class="form-group">
                        <label >Phone</label>
                        <input value="${acc.phone}" type="tel" class="form-control" id="phone" name="phone" placeholder="Enter your phone number">
                    </div>
                    <div class="form-group">
                        <label >Description</label>
                        <textarea  class="form-control" id="detail" name="detail" rows="3">${acc.description}</textarea>
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
