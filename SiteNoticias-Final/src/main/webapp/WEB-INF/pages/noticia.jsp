<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="pt-Br">
<head>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--<meta http-equiv="X-UA-Compatible" content="ie=edge">-->
	<link href="css/geral.css" type="text/css" rel="stylesheet">
	<title>Cadastro Clientes</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</svg>

</head>
<body>

<!-- Navbar -->
	<nav class="navbar navbar-expand-lg"  >
	  <a class="navbar-brand" href="#"><img src="images/logo/Logo.jpg" alt="Logo letras VD" width="50"></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNavDropdown">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link mr-4 ml-4" href="../homepage.html">Home <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link mr-4" href="Cliente.html">Clientes</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link mr-4" href="Fornecedor.html">Fornecedores</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link mr-4" href="Componentes.html">Componentes</a>
	      
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	         Listagens
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	          <a class="dropdown-item" href="../Listagens/ClienteListagem.html">Clientes</a>
	          <a class="dropdown-item" href="../Listagens/FornecedorListagem.html">Fornecedores</a>
	          <a class="dropdown-item" href="../Listagens/ComponentesListagem.html">Componentes</a>
	        </div>
	      </li>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="../About.html">About</a>
	      </li>
	    </ul>
	  </div>
	</nav>

	<!--- /Navbar-->
	<!--Pesquisa-->
	<div class="container">
	<form class="form-inline">
	  <label class="sr-only" for="inlineFormInput">Name</label>
	  <input type="number" class="form-control mb-2 mr-sm-2 mb-sm-5" id="inlineFormInput" placeholder="ID do Cliente"/>
	 
	  <img src="../images/Icons/search.png" type="submit" class="img-thumbnail mb-5"><!-- Usei a imagem para pesquisar-->
	</form>
	
	<!--Pesquisa-->
		<div class="form-group row">
		  <label for="example-text-input" class="col-2 col-form-label">Nome</label>
		  <div class="col-10">
		    <input class="form-control" type="text" placeholder="Artisanal kale" id="example-text-input">
		  </div>
		</div>
		
		<div class="form-group row">
		  <label for="example-email-input" class="col-2 col-form-label">Email</label>
		  <div class="col-10">
		    <input class="form-control" type="email" placeholder="bootstrap@example.com" id="example-email-input">
		  </div>
		</div>
		
		<div class="form-group row">
		  <label for="example-tel-input" class="col-2 col-form-label">Telefone</label>
		  <div class="col-10">
		    <input class="form-control" type="tel" placeholder="(11)-4309-5555" id="example-tel-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-text-input" class="col-2 col-form-label">Endereço</label>
		  <div class="col-10">
		    <input class="form-control" type="text" placeholder="Artisanal kale" id="example-text-input">
		  </div>
		</div>
		
		<div class="form-group row">
		  <label for="example-number-input" class="col-2 col-form-label">Número</label>
		  <div class="col-10">
		    <input class="form-control" type="number" placeholder="42" id="example-number-input">
		  </div>
		</div>
		<div class="form-group row">
		  <label for="example-datetime-local-input" class="col-2 col-form-label">Data de Nascimento</label>
		  <div class="col-10">
		    <input class="form-control" type="datetime-local" placeholder="2011-08-19T13:45:00" id="example-datetime-local-input">
		  </div>
		
		<div class="form-group row but">

			<div class="form-group col">
				<button type="button" class="btnInserir"/>
				<div class="form-group row" style="margin-top: 100%;">
					<label for="example-datetime-local-input" class="col-2 col-form-label">Inserir</label>
				</div>
			</div>
			
			<div class="form-group col">
				<button type="button" class="btnAlterar"/>
				<div class="form-group row" style="margin-top: 100%;">
					<label for="example-datetime-local-input" class="col-2 col-form-label">Alterar</label>
				</div>
				
			</div>

			<div class="form-group col">
				<button type="button" class="btnDeletar"/>
				<div class="form-group row" style="margin-top: 100%;">
					<label for="example-datetime-local-input" class="col-2 col-form-label">Deletar</label>
				</div>
			</div>
		 
		</div>
</div>
	<!--/Form Cadastro Cliente-->


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>