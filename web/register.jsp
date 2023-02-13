<%-- 
    Document   : register
    Created on : Dec 21, 2022, 5:02:36 PM
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
            height:490px;
            /*box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;*/
            box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 0px 1px, rgb(209, 213, 219) 0px 0px 0px 1px inset;
            border-radius: 5px;
            margin: auto;
            margin-top: 15vh;
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
                <form method='post' action="./register.jsp">
                    <input type="text" name="username" placeholder="Input the Username">
                    <input type="email" name="email" placeholder="Input the Email" >
                    <input type="password" name="psw1" placeholder="Input the Password">
                    <input type="password" name="psw2" placeholder="Input the Current Password">
                    <input type="submit" value="SIGNUP">
                    <div class='link'>
                        <a href='./index.jsp'>has Account?</a>
                        <a href='./forgetpassword.jsp'>For get Password</a>
                    </div>
                </form>
                <%@ page import="java.sql.*"%>
                <%
                    String username=request.getParameter("username");
                    String email=request.getParameter("email");
                    String password=request.getParameter("psw1");
                    String psw2=request.getParameter("psw2");
                    if(username!=null){
                        if(password.equals(psw2)){
                        try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                        String data="SELECT * FROM `user` where `email`=?";
                        PreparedStatement pst=con.prepareStatement(data);
                        pst.setString(1,email);
                        ResultSet rs = pst.executeQuery();
                        if(rs.next()){
                            out.print("<script>alert('The email is use Alert')</script>");
                        }else{
                            try{
                                Class.forName("com.mysql.jdbc.Driver");
                                con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                                String query="INSERT INTO `user`(`username`, `email`, `password`,`status`) VALUES (?,?,?,'enable')";
                                pst=con.prepareStatement(query);
                                pst.setString(1,username);
                                pst.setString(2,email);
                                pst.setString(3,password);
                                int run =pst.executeUpdate();
                                if(run==1){
                                    out.print("<script>alert('Register Successfull')</script>");
                                    response.sendRedirect("./index.jsp");
                                }else{
                                    out.print("<script>alert('Error')</script>");
                                }
                                }catch(Exception e){
                                out.println(e);
                                }
                        }
                        
                        }catch(Exception e){
                        out.println(e);
                    }
                    }else{
                            out.print("<script>alert('Password is wrong')</script>");
                        
                    }
                    }else{
                        out.print("");
                    }     
                %>
            </div>
        </div>
    </body>
</html>
