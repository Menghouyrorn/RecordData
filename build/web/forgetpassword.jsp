<%-- 
    Document   : forgetpassword
    Created on : Dec 21, 2022, 5:04:52 PM
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
            /*box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;*/
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
        <%@ page import="java.sql.*"%>
        <div>
            <%
                String emailu=request.getParameter("email");
                String passwordu=request.getParameter("psw1");
                String password=request.getParameter("psw2");
                if(emailu!=null){
                    if(passwordu.equals(password)){
                        try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                    String query="UPDATE `user` SET `password`='"+passwordu+"' WHERE `email`='"+emailu+"'";
                    PreparedStatement pst=con.prepareStatement(query);
                    int rs=pst.executeUpdate();
                    if(rs==1){
                    out.print("<script>alert('ForGet Successfull')</script>");
                    }else{
                        out.print("<script>alert('Error')</script>");
                    }
                }catch(Exception e){
                    out.println(e);
                } 
                    }else{
                        out.print("<script>alert('Password is worng')</script>");
                    }
                
                    }else{
                        out.print("");
                    }
            %>
            <div class="login_form">
                <form>
                    <input type="email" name="email" placeholder="Input the Email" >
                    <input type="password" name="psw1" placeholder="Input the Password">
                    <input type="password" name="psw2" placeholder="Input the Current Password">
                    <input type="submit" value="FORGETPASSWORD">
                    <div class='link'>
                        <a href='./register.jsp'>Don't has Account?</a>
                        <a href='./index.jsp'>has Account?</a>
                    </div>
                    
                </form>
            </div>
        </div>
    </body>
</html>
