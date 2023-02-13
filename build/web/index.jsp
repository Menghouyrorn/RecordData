<%-- 
    Document   : login
    Created on : Dec 21, 2022, 4:51:39 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .login_form{
            width:400px;
            height:430px;
            box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 0px 1px, rgb(209, 213, 219) 0px 0px 0px 1px inset;
            border-radius: 5px;
            margin: auto;
            margin-top: 20vh;
        }
        .login_form input{
            width:90%;
            height: 50px;
            margin-top:20px;
            border-radius: 5px;
            margin-left: 18px;
        }
        .login_form input[type=submit]{
            cursor: pointer;
            font-size: 20px;
        }
        .link{
           display: flex;
           justify-content: space-between;
           margin-top: 35px;
        }
        .link a{
            margin: 10px;
        }
    </style>
    <body>
<!--        response.sendRedirect("home.jsp");-->
        <div>
            <div class="login_form">
                <form action="./index.jsp" method="post">
                    <input type="text" name="username" placeholder="Input the Username">
                    <input type="email" name="email" placeholder="Input the Email" >
                    <input type="password" name="psw" placeholder="Input the Password">
                    <input type="submit" value="LOGIN">
                    <div class='link'>
                        <a href='./register.jsp'>Don't has Account?</a>
                        <a href='./forgetpassword.jsp'>For get Password</a>
                    </div>
                    <%@ page import="java.sql.*"%>
                    <%
                        String username=request.getParameter("username");
                    String email=request.getParameter("email");
                    String password=request.getParameter("psw");
                        if(username==null){
                            out.print("");
                        }else{
                        
                        try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                        String data="SELECT * FROM `user` where `email`=? AND `password`=? AND `status`='enable'";
                        PreparedStatement pst=con.prepareStatement(data);
                        pst.setString(1,email);
                        pst.setString(2,password);
                        ResultSet rs = pst.executeQuery();
                        if(rs.next()){
                            String emaildata=rs.getString("email");
                            String passworddata=rs.getString("password");
                            if(emaildata.equals("admin@gmail.com") && passworddata.equals("admin")){
                                request.getSession().setAttribute("currentUser", emaildata);
                                response.sendRedirect("./admin.jsp");
                            }else{
                                request.getSession().setAttribute("currentUser", emaildata);
                                response.sendRedirect("./user.jsp");
                            }

                        }else{
                            out.print("<script>alert('Password or email is worng')</script>");
                        }
                        
                        }catch(Exception e){
                        out.println(e);
                        }
                        }
                %>
                </form>
            </div>
        </div>
    </body>
</html>
