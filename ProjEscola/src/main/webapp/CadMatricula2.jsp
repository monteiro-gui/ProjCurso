<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
 <%@page import = "model.Aluno"%>    
 <%@page import = "model.Curso"%>   
 <%@page import = "java.util.ArrayList"%>
   	
 <%
    ArrayList<Aluno> listaalu = (ArrayList<Aluno>) request.getAttribute("alunos");
    
    ArrayList<Curso> listacur = (ArrayList<Curso>) request.getAttribute("cursos");
 %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cadastrar Matrícula</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="cep.js" type="text/javascript"></script>

</head>
<body>

<div class="container">

	<div class="row">
		<div class="col-md-12 text-center">
		<h3>Controle de Matrículas</h3>
		</div>
	</div>
	
	
	
  
  <form method="get" action="matricular">
  
 
  <div class="form-row">
    
    <div class="col-md-2">
	    <label for="data">Data</label>
	    <input type="date" class="form-control" id="" placeholder="" name="data">
  	</div>
   <div class="col-md-5 mb-3">
	    <label for="aluno">Aluno</label>		
	    <select name="aluno" class="form-control">   
	    
	    <% for(int i=0;i<listaalu.size();i++){  %>
	        
	    	<option value="<%=listaalu.get(i).getIdaluno()%>"><%=listaalu.get(i).getNome()%></option> 
	    	 <%} %>
	    </select>        
  	</div>
  
   <div class="col-md-5 mb-3">
   <label for="curso">Curso</label>		
	    <select name="curso" class="form-control"> 
	    
	    <% for(int i=0;i<listacur.size();i++){  %>
	          
	    	<option value="<%=listacur.get(i).getIdcurso()%>"><%=listacur.get(i).getNome()%></option>  
	    	 <%} %>
	    </select>      
  </div> 
    
  </div>
  
  <button type="submit" class="btn btn-primary">Enviar</button>
</form>


</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>
