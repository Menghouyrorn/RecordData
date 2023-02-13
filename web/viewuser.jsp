<%-- 
    Document   : todolist
    Created on : Dec 21, 2022, 12:43:13 PM
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
        .navbar{
            /*            background-color: #118AEF;*/
            width:100%;
            height:10vh;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-radius: 6px;
            box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;
        }
        .logo{
            margin-left: 30px;
            font-size:20px;
        }
        .button_navbar{
            margin-right: 15px;
        }
        .button_navbar button{
            width:80px;
            height:40px;
            border-radius: 6px;
            /*            background-color:#118AEF;*/
            cursor: pointer;
        }
        .button_navbar button:hover{
            box-shadow: rgba(9, 30, 66, 0.25) 0px 4px 8px -2px, rgba(9, 30, 66, 0.08) 0px 0px 0px 1px;
        }
        .left{
            height: 60vh;
            width:340px;
            /*            background-color:#118AEF;*/
            border-radius: 5px;
            float: left;
            width:25%;
            box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;
            margin-top: 10px;
        }
        .link{
            width:90%;
            height:50px;
            margin-top:15px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 6px;
            margin-left:15px;
            transition:0.3s all ease;
        }
        .link:hover{
            box-shadow: rgba(9, 30, 66, 0.25) 0px 4px 8px -2px, rgba(9, 30, 66, 0.08) 0px 0px 0px 1px;
        }
        .link a{
            text-decoration: none;
            text-align: center;
            color:black;
            font-size:15px;
        }
        .right{
            float:left;
            width:74%;
            height:100vh;
            margin-left: 12px;
            box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;
            margin-top: 10px;
            border-radius: 5px;
        }
        .table_detail{
            width:100%;
            height:100%;
        }
        .table_detail_data {
            /*            border: 1px solid black;*/
            border-collapse: collapse;
            width:100%;
            text-align: center;
        }
        .table_detail_data th{
            height:45px;
            border-bottom:1px solid gray;
        }
        .table_detail_data td{
            height:40px;
        }
        .table_detail_data tr{
            transition: 0.3s all ease;
            cursor: pointer;
        }
        .table_detail_data tr:hover{
            box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;
        }
        .importen{
            width:460px;
        }
        .action button{
            margin-left: 10px;
            width: 60px;
            height:30px;
            cursor: pointer;
        }
        .action {
            width: 180px;
        }
        .nav_on_right{
            display: flex;
            justify-content: space-between;
            width:100%;
            height:10vh;
            align-items: center;
        }
        .add_nav_on_right{
            margin-left: 40px;
        }
        .add_nav_on_right button{
            width:80px;
            height:45px;
            border-radius: 5px;
            border:none;
            background-color: transparent;
            cursor:pointer;
            font-size:15px;
            transition: 0.3s all ease;
            border:1px solid black;
        }
        .add_nav_on_right button:hover{
            box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;

        }
        .search_nav-on_right{
            margin-right: 60px;
        }
        .search_nav-on_right input[type=text]{
            width:230px;
            height: 30px;
            border-radius: 5px;
        }
        .search_nav-on_right input[type=submit]{
            width:70px;
            height: 35px;
            border-radius: 5px;
            cursor: pointer;
        }
        .dialog_add_new{
            width:400px;
            height:430px;
            background-color: white;
            position: absolute;
            top:18%;
            right: 30%;
            border-radius: 5px;
            box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;

        }
        .dialog_add_new input{
            width:90%;
            height:50px;
            margin-top:20px;
            border-radius: 5px;
            margin-left: 15px;
        }
        .dialog_add_new input[type=submit]{
            cursor: pointer;
        }
        .dialog_add_new input[type=date]{
            font-size:20px;
        }
        .button_dialog_add_new button{
            width:30px;
            height:30px;
            border-radius: 5px;
            cursor: pointer;
        }
        .button_dialog_add_new{
            display: flex;
            justify-content: end;
            position: absolute;
            top:-13px;
            right:-13px;

        }
        .button_dailog_update{
            width: 90%;
            height:50px;
            margin-top: 15px;
            border-radius: 5px;
            margin-left: 15px;
            cursor: pointer;
        }
        .right_profile{
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 10px;
        }
        .right_profile h3{
            margin-right: 15px;
        }
    </style>
    <body>
        <div>
            <div class="navbar">
                <div class="logo">
                    <h3>Record Management System</h3>
                </div>
                <div class="button_navbar">
                    <%
                    Object usernamed=request.getSession().getAttribute("currentUser");
                    String name=usernamed.toString();
                    if(name!=null){
                        out.print("<form class='right_profile' method='post' action='index.jsp'>");
                        out.print("<h3>"+name+"</h3>");
                        out.print("<button type='submit' name='logout' value='out'>LOGOUT</button>");
                        out.print("</form>");
                    }else{
                        response.sendRedirect("index.jsp");
                    }
                    %>
                    <%
                        String logout=request.getParameter("logout");
                        if(logout!=null){
                            session.removeAttribute("currentUser");
                            response.sendRedirect("index.jsp");
                        }
                    %>
                </div>
            </div>
            <div class="left">
                <div class="link">
                    <a href="admin.jsp?page=1">Top up daily expenses</a>
                </div>
                <div class="link">
                    <a href="./todolistadmin.jsp">Add TODO List</a>
                </div>
                <div class="link">
                    <a href="./viewuser.jsp">View all User</a>
                </div>
            </div>
            <div class="right">
                <div class="nav_on_right">
                    <div class="add_nav_on_right">
                        <form action="" method="post">
                            <button type="submit" name="add" value="addnew">Add</button>
                        </form> 
                    </div>
                    <div class="search_nav-on_right">
                        <form action="" method='post'>
                            <input type="text" name="search" placeholder="Search...">
                            <input type="submit" value="Search">
                        </form>
                    </div>
                </div>
                <%@ page import="java.sql.*"%>
                <%
                    
                    String get=request.getParameter("add");
                    if(get==null){
                        out.print("");
                    }else{
                        out.print("<div class='dialog_add_new'>");
                        out.print("<div class='button_dialog_add_new'>");
                        out.print("<form action='./viewuser.jsp' method='post'>");
                        out.print("<button type='submit' name='off' value='false'>X</button>");
                        out.print("</form>");
                        out.print("</div>");
                        out.print("<form action='./viewuser.jsp' method='post'>");
                        out.print("<input type='text' name='username' placeholder='input description'>");
                        out.print("<input type='email' name='email' placeholder='input email'>");
                        out.print("<input type='password' name='psw1' placeholder='input password'>");
                        out.print("<input type='password' name='psw2' placeholder='input password'>");
                        out.print("<input type='submit' value='Add User'>");
                        out.print("</form>");
                        out.print("</div>");
                    }
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
                <div class="table_detail">
                    <table class="table_detail_data" >
                        <tr>
                            <th>ID</th>
                            <th class="importen">Description</th>
                            <th>Date</th>
                            <th>Action</th>
                        </tr>
                        <!--<tr>-->
                            <% 
                                String search=request.getParameter("search");
                    if(search==null){
                        int id=0;
                                int iddatabase;
                                String usernamees="",emailes="";
                            try{
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                                String query="SELECT * FROM `user` where `status`='enable' ORDER BY `id` DESC LIMIT 12";
                                PreparedStatement pst=con.prepareStatement(query);
                                ResultSet rs=pst.executeQuery();
                                while(rs.next()){
                                id++;
                                iddatabase=rs.getInt("id");
                                usernamees=rs.getString("username");
                                emailes=rs.getString("email");
                                out.print("<tr>");
                                out.print("<td>"+id+"</td>");
                                out.print("<td>"+usernamees+"</td>");
                                out.print("<td>"+emailes+"</td>");
                                out.print("<td class='action'>");
                                out.print("<form action='./viewuser.jsp' method='post'>");
                                out.print("<button type='submit' name='edit' value='"+iddatabase+"'>Edit</button>");
                                out.print("<button type='submit' name='delete' value='"+iddatabase+"'>Delete</button>");
                                out.print("</form>");
                                out.print("</td>");
                                out.print("</tr>");
                                }
                            }catch(Exception e){
                                out.println(e);
                            }
                    }else{
                        try{
                            int id=0;
                                int iddatabase;
                                String usernamese="",emailse="";
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                                String query="SELECT * FROM `user` where `status`='enable' AND (`username` LIKE '%"+search+"%' OR `email` LIKE '%"+search+"%') ORDER BY `id` DESC LIMIT 12";
                                PreparedStatement pst=con.prepareStatement(query);
                                ResultSet rs=pst.executeQuery();
                                while(rs.next()){
                                id++;
                                iddatabase=rs.getInt("id");
                                usernamese=rs.getString("username");
                                emailse=rs.getString("email");
                                out.print("<tr>");
                                out.print("<td>"+id+"</td>");
                                out.print("<td>"+usernamese+"</td>");
                                out.print("<td>"+emailse+"</td>");
                                out.print("<td class='action'>");
                                out.print("<form action='./viewuser.jsp' method='post'>");
                                out.print("<button type='submit' name='edit' value='"+iddatabase+"'>Edit</button>");
                                out.print("<button type='submit' name='delete' value='"+iddatabase+"'>Delete</button>");
                                out.print("</form>");
                                out.print("</td>");
                                out.print("</tr>");
                                }
                            }catch(Exception e){
                                out.println(e);
                            }
                    }
                                
                                
                            String ids=request.getParameter("edit");
                            if(ids==null){
                                out.print("");
                            }else{
//                                int iddata;
                                String usernamee="",emaile="",passworde="";
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                                String query="SELECT * FROM `user` WHERE `id`='"+ids+"'";
                                PreparedStatement pst=con.prepareStatement(query);
                                ResultSet rs=pst.executeQuery();
                                while(rs.next()){
                                   int iddata=rs.getInt("id");
                                    usernamee=rs.getString("username");
                                    emaile=rs.getString("email");
                                    passworde=rs.getString("password");
                                out.print("<div class='dialog_add_new'>");
                                out.print("<div class='button_dialog_add_new'>");
                                out.print("<form action='./viewuser.jsp' method='post'>");
                                out.print("<button type='submit' name='off' value='false'>X</button>");
                                out.print("</form>");
                                out.print("</div>");
                                out.print("<form action='./viewuser.jsp' method='post'>");
                                out.print("<input type='text' name='usernameu' value='"+usernamee+"' placeholder='input description'>");
                                out.print("<input type='email' name='emailu' value='"+emaile+"' placeholder='input email'>");
                                out.print("<input type='hidden' name='emailt' value='"+emaile+"'>");
                                out.print("<input type='password' name='passwordu' value='"+passworde+"' placeholder='input password'>");
                                out.print("<button class='button_dailog_update' type='submit' name='update' value='"+iddata+"'>Update</button>");
                                out.print("</form>");
                                out.print("</div>");
                                }
                                
                            }
                            String idd=request.getParameter("delete");
                            if(idd==null){
                                out.print("");
                            }else{
                                try{
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                                String query="UPDATE `user` SET `status`='disable' WHERE `id`='"+idd+"'";
                                PreparedStatement pst=con.prepareStatement(query);
                                int rs=pst.executeUpdate();
                                if(rs==1){
                                    out.print("<script>alert('Delete Successfull')</script>");
                                }else{
                                    out.print("<script>alert('Error')</script>");
                                }
                            }catch(Exception e){
                                out.println(e);
                            } 
                            }
                            %>
                            <%
                                
                                String usernameu=request.getParameter("usernameu");
                                String emailu=request.getParameter("emailu");
                                String idu=request.getParameter("update");
                                String passwordu=request.getParameter("passwordu");
                                String emailt=request.getParameter("emailt");
                                
                                if(idu!=null){
                                    
                                   try{
                                       out.print(emailt);
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                                String query="UPDATE `user` SET `username`='"+usernameu+"',`email`='"+emailu+"',`password`='"+passwordu+"' WHERE `id`='"+idu+"'";
                                String query2="UPDATE `record` SET `by`='"+emailu+"' WHERE `by`='"+emailt+"'";
                                String query3="UPDATE `todolist` SET `by`='"+emailu+"' WHERE `by`='"+emailt+"'";
                                PreparedStatement pst=con.prepareStatement(query);
                                PreparedStatement pst2=con.prepareStatement(query2);
                                PreparedStatement pst3=con.prepareStatement(query3);
                                int rs=pst.executeUpdate();
                                int rs2=pst2.executeUpdate();
                                int rs3=pst3.executeUpdate();
                                if(rs==1 ){
                                    out.print("<script>alert('Update Successfull')</script>");
                                }else{
                                    out.print("<script>alert('Error')</script>");
                                }
                            }catch(Exception e){
                                out.println(e);
                            } 
                                }else{
                                    out.print("");
                                }
                            %>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
