<%-- 
    Document   : admin
    Created on : Dec 21, 2022, 9:55:22 PM
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
            height:80%;
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
            height:380px;
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
        .id_detail{
            width:50px;
        }
        .total_price{
            width:100%;
            height:5%;
            display: flex;
            justify-content: end;
            margin-left: -50px;
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
                    Object username=request.getSession().getAttribute("currentUser");
                    String name=username.toString();
//                    out.print(name);
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
<!--                    <button></button>-->
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
                        out.print("<form action='./admin.jsp' method='post'>");
                        out.print("<button type='submit' name='off' value='false'>X</button>");
                        out.print("</form>");
                        out.print("</div>");
                        out.print("<form action='./admin.jsp' method='post'>");
                        out.print("<input type='text' name='description' placeholder='input description'>");
                        out.print("<input type='text' name='price' placeholder='input price'>");
                        out.print("<input type='date' name='date' placeholder='input date'>");
                        out.print("<input type='submit' value='Add New'>");
                        out.print("</form>");
                        out.print("</div>");
                    }
                    String description=request.getParameter("description");
                    String price=request.getParameter("price");
                    String date=request.getParameter("date");
//                    out.print(date);
                    if(description==null && price==null && date==null){
                        out.print("");
                    }else{
                        try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                        String query="INSERT INTO `record`(`description`, `price`, `date`,`by`,`status`) VALUES (?,?,?,'username','enable')";
                        PreparedStatement pst=con.prepareStatement(query);
                        pst.setString(1,description);
                        pst.setString(2,price);
                        pst.setString(3,date);
                        int run =pst.executeUpdate();
                        if(run==1){
                            out.print("<script>alert('Add Successfull')</script>");
                        }else{
                            out.print("<script>alert('Error')</script>");
                        }                  
                    }catch(Exception e){
                        out.println(e);
                    }
                    }
                    
                    
                %>
                <div class="table_detail">
                    <table class="table_detail_data" >
                        <tr>
                            <th class="id_detail">ID</th>
                            <th class="importen">Description</th>
                            <th>Price</th>
                            <th>Date</th>
                            <th>BY</th>
                            <th>Action</th>
                        </tr>
                        <!--<tr>-->
                            <% 
                                int total=0;
                                String search=request.getParameter("search");
                    if(search==null){
                        int id=0;
                                int iddatabase;
                                String descriptions="",prices="",dates="",by="";
                            try{
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                                String query="SELECT * FROM `record` where `status`='enable' ORDER BY `id` DESC LIMIT 12";
                                PreparedStatement pst=con.prepareStatement(query);
                                ResultSet rs=pst.executeQuery();
                                while(rs.next()){
                                id++;
                                iddatabase=rs.getInt("id");
                                descriptions=rs.getString("description");
                                prices=rs.getString("price");
                                dates=rs.getString("date");
                                by=rs.getString("by");
                                out.print("<tr>");
                                out.print("<td>"+id+"</td>");
                                out.print("<td>"+descriptions+"</td>");
                                out.print("<td>"+prices+"</td>");
                                out.print("<td>"+dates+"</td>");
                                out.print("<td>"+by+"</td>");
                                out.print("<td class='action'>");
                                out.print("<form action='./admin.jsp' method='post'>");
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
                                String descriptions="",prices="",dates="",bys="";
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                                String query="SELECT * FROM `record` where `status`='enable' AND (`description` LIKE '%"+search+"%' OR `price` LIKE '%"+search+"%' OR `date` LIKE '%"+search+"%') ORDER BY `id` DESC LIMIT 12";
                                PreparedStatement pst=con.prepareStatement(query);
                                ResultSet rs=pst.executeQuery();
                                while(rs.next()){
                                id++;
                                iddatabase=rs.getInt("id");
                                descriptions=rs.getString("description");
                                prices=rs.getString("price");
                                dates=rs.getString("date");
                                bys=rs.getString("by");
                                total=total+Integer.valueOf(prices);
                                out.print("<tr>");
                                out.print("<td>"+id+"</td>");
                                out.print("<td>"+descriptions+"</td>");
                                out.print("<td>"+prices+"</td>");
                                out.print("<td>"+dates+"</td>");
                                out.print("<td>"+bys+"</td>");
                                out.print("<td class='action'>");
                                out.print("<form action='./index.jsp' method='post'>");
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
                                String descriptione="",pricee="",datee="";
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                                String query="SELECT * FROM `record` WHERE `id`='"+ids+"'";
                                PreparedStatement pst=con.prepareStatement(query);
                                ResultSet rs=pst.executeQuery();
                                while(rs.next()){
                                   int iddata=rs.getInt("id");
                                    descriptione=rs.getString("description");
                                    pricee=rs.getString("price");
                                    datee=rs.getString("date");
                                out.print("<div class='dialog_add_new'>");
                                out.print("<div class='button_dialog_add_new'>");
                                out.print("<form action='./admin.jsp' method='post'>");
                                out.print("<button type='submit' name='off' value='false'>X</button>");
                                out.print("</form>");
                                out.print("</div>");
                                out.print("<form method='post' action='./admin.jsp'>");
                                out.print("<input type='text' name='descriptionu' value='"+descriptione+"' placeholder='input description'>");
                                out.print("<input type='text' name='priceu' value='"+pricee+"' placeholder='input price'>");
                                out.print("<input type='date' name='dateu' value='"+datee+"' placeholder='input date'>");
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
                                String query="UPDATE `record` SET `status`='disable' WHERE `id`='"+idd+"'";
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
                            
                                String descriptionu=request.getParameter("descriptionu");
                                String priceu=request.getParameter("priceu");
                                String dateu=request.getParameter("dateu");
                                String idu=request.getParameter("update");
                                if(idu!=null){
//                                    out.print(ids);
                                   try{
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
                                String query="UPDATE `record` SET `description`='"+descriptionu+"',`price`='"+priceu+"',`date`='"+dateu+"' WHERE `id`='"+idu+"'";
                                PreparedStatement pst=con.prepareStatement(query);
                                int rs=pst.executeUpdate();
                                if(rs==1){
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
                    <div  class="total_price">
                        <%
                            if(search==null){
                                out.print("");
                            }else{
                                out.print("<h2>Total Price :"+total+" R</h2>");
                            }
                            
                        %>
                        
                    </div>
            </div>
        </div>
    </body>
</html>
