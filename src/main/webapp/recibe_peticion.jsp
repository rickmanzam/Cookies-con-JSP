<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%  //Etiquetas JSP

String ciudad_favorita_almacenada = request.getParameter("ciudad_favorita");//recibimos la opcion seleccionada en el menu desplegable llamado "ciudad favorita"

//Creamos la cookie utilizando el constructor de la clase cookie "Cookie(String name, String value)"

Cookie miCookie = new Cookie("nombre_de_mi_cookie", ciudad_favorita_almacenada); //Creamos la cookie mandando como argumento nombre de la cookie y el string ue tiene almacenado lo que el usuario selecciono en la lista desplegable

//Vida de la cookie
//Utilizamos el metodo de la clase cookie llamado "setMaxAge(int expiry)" donde le pasamos como parametro el tiempk de vida de la cookie expresado en segundos

miCookie.setMaxAge(365*24*60*60); //Dias * horas * minutos * segundos = segundos en un año

//Enviar a usuario la cookie con el metodo "addCookie(Cookie cookie)" que Agrega la cookie especificada a la respuesta.

response.addCookie(miCookie);


%>  

Gracias por enviar tus preferencias


<a href= "Pagina de agencia de viajes.jsp"> Ir a la agencia de viajes</a> 



</body>
</html>