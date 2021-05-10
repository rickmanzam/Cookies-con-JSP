<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 style = "text-aling:center"> Agencia de viajes </h1>

<%

//Valor por defecto

String ciudad_favorita = "Mexico";

//Codigo que lee la cookie de la peticion del navegador
//con el metodo "getCookies()" Devuelve una matriz que contiene todos los objetos Cookie que el cliente envió con esta solicitud.

Cookie [] todasMiscookies = request.getCookies(); //Almacenamos en el array todas las cookies que se hayan almacenado en el navegador del usuario

//Buscar las preferencias, en este caso la ciudad favorita, recorriendo el array que contiene todas las cookies

if (todasMiscookies != null){ //si existes cookies almacenadas en el array
	
	for (Cookie i: todasMiscookies){ //bucle for each que recorre todo el array
		
		if ("nombre_de_mi_cookie".equals(i.getName())){ //Si el nombre de las cookies que se estan evaluando en el array corresponde con el nombre de la cookie buscada
			
			ciudad_favorita = i.getValue(); //Devuelveme el valor de la cookie encontrada
			
			break; //Termina el bucle una vez que se haya encontrado la cookie buscada
		}
		
	}
	
}

%>

<h3>Vuelos a <%= ciudad_favorita %></h3>

<p>Aqui podriamos establecer una conexion con una bd que muestre los vuelos disponibles, basandonos en la preferencia</p>
<p> aqui iria mas texto, imagenes, etc </p>

<h3>Hoteles en <%= ciudad_favorita %></h3>

<p>Aqui podriamos establecer una conexion con una bd que muestre los vuelos disponibles, basandonos en la preferencia</p>
<p> aqui iria mas texto, imagenes, etc </p>

<h3>Descuentos en restaurantes de <%= ciudad_favorita %></h3>

<p>Aqui podriamos establecer una conexion con una bd que muestre los vuelos disponibles, basandonos en la preferencia</p>
<p> aqui iria mas texto, imagenes, etc </p>

</body>
</html>