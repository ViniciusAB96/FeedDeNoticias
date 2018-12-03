<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8"/>
	<title>NOTÍCIAS !</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	
	
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	
	
	
	<script type="text/javascript" >
	
	$(document).ready(function Cidade() {
  		 $.get("https://query.yahooapis.com/v1/public/yql",{
  	        q:"select * from weather.forecast where woeid=455827 and u='c'",
  	        format:"json"
  	    },function (res) {
  	        if(res){
  	            var umidade = res.query.results.channel.atmosphere.humidity + " %";
  	            var temperatura = res.query.results.channel.item.condition.temp + " °C";
  	            var pressao = res.query.results.channel.atmosphere.pressure + " mb";
  	            var data = res.query.results.channel.item.condition.date;
  	            var cidade = res.query.results.channel.location.city;
  	          
  	            var valorTemp = document.querySelector("#colunaValores");  
  	            var novoElemento = document.createElement("p");
  	            var textNode = document.createTextNode(temperatura);
  	            
  	            novoElemento.appendChild(textNode);  	            
  	            valorTemp.appendChild(novoElemento);
  	             	            
  	        }
  	    },'json');  
	}); // fim do script 
	</script>
	
   
	
</head>
<body>
	<header class="header-marcador">
		<h1><strong>... Notícias da Última Hora ...</strong></h1>
	</header>
	<div class="container-fluid marcador1">
		<div class="row">
			<div class="col-md-4 marcador2">
				<iframe scrolling="no" frameborder="2" marginwidth="0" marginheight="0" 
				style="margin:0;padding:2;border:0;" width="420" height="315" 
				src="https://www.climatempo.com.br/tempo-no-seu-site/videos/selo/sudeste/420x315">
				</iframe>
				
			</div>
			<div class="col-md-8 marcador3" id="colunaValores">
						
			</div>
		</div>
		 
		
	</div>
	
</body>
</html>