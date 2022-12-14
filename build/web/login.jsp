<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <title>Animated Login Form</title>
        <link rel="stylesheet" type="text/css" href="login.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/a81368914c.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>

        <img class="wave " src="lightblue.jpg" >
        <div class="container " >
            <div class="img ">
                <img src="bg.svg">
            </div>
            <div class="login-content ">
                
                <form action="LoginServlet" class=" rounded    p-5 " style="border:3px solid black"   method="post">
                    <img src="avatar.svg">
                    <h2 class="title text-adrk">Welcome</h2>
                   

                    <%
                        if (null != request.getAttribute("errorMessage")) {
                            out.println(request.getAttribute("errorMessage"));
                        }
                    %>



                    <div class="input-div one">
                        <div class="i">
                            <i class="fas fa-user mx-3 font-weight-bold bg-primary rounded-circle px-2 py-2 text-dark"></i>
                        </div>

                        <div class="div">
                            <h5 class="text-dark font-weight-bold">Email-Id</h5>
                            <input type="text"  name="Email"class="input">
                        </div>
                    </div>
                    <div class="input-div pass">
                        <div class="i"> 
                            <i class="fas fa-lock font-weight-bold mx-3 bg-success rounded-circle px-2 py-2 text-dark"></i>
                        </div>
                        <div class="div">
                            <h5 class="text-dark font-weight-bold">Password</h5>
                            <input type="password" name="pass"  class="input">
                        </div>
                        
                    </div>
                    <a href="forgot.jsp" class="font-weight-bold text-primary h5">Forgot Password?</a>
                  
                    <input type="submit" class="btn" value="Login">
                       <a href="register.jsp" class="btn pt-3">REGISTER</a>
                   
                </form>
                   


            </div>
                     
        </div>
                    <script>
    const inputs = document.querySelectorAll(".input");


    function addcl() {
        let parent = this.parentNode.parentNode;
        parent.classList.add("focus");
    }

    function remcl() {
        let parent = this.parentNode.parentNode;
        if (this.value == "") {
            parent.classList.remove("focus");
        }
    }


    inputs.forEach(input => {
        input.addEventListener("focus", addcl);
        input.addEventListener("blur", remcl);
    });
</script>
   </body>
</html>


