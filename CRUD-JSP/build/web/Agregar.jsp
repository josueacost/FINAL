<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> parent of 2366d8a... Revert "borrado"

=======
>>>>>>> 0ea3f0147993f3cbb5722394b77576524d7a8f12
<%@page import="java.awt.TrayIcon.MessageType"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>  
        <div class="container">
            <h1>Agregar Registro</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                Nombres:
                <input type="text" name="txtNom" class="form-control"/><br>
                DNI:
                <input type="text" name="txtDNI" class="form-control"/>
                <br>
                <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>
                <a href="index.jsp">Regresar</a>
            </form>
        </div>
        
        
    </body>
</html>
<%
       //CONECTANOD A LA BASE DE DATOS:
       Connection con;
       String url="jdbc:mysql://localhost:3306/bd_practica";
       String Driver="com.mysql.jdbc.Driver";
       String user="root";
       String clave="";
       Class.forName(Driver);
       con=DriverManager.getConnection(url,user,clave);
       PreparedStatement ps;
       String dni, nom;
       nom=request.getParameter("txtNom");
       dni=request.getParameter("txtDNI");      
       if(nom!=null && dni!=null){
           ps=con.prepareStatement("insert into usuario(Nombres, DNI)values('"+nom+"','"+dni+"')");
           ps.executeUpdate();
           JOptionPane.showMessageDialog(null,"Se Agrego Correctamete");           
           response.sendRedirect("index.jsp");
           
       }
       
       
%>