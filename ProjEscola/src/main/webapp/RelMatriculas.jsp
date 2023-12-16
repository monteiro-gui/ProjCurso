<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
   !-- FAZER AS IMPORTAÇÕES DA CLASSE E DO ARRAYLIST -->    
   <%@page import = "model.Matriculados"%>
   <%@page import = "java.util.ArrayList"%>


    <%
    ArrayList<Matriculados> lista = (ArrayList<Matriculados>) request.getAttribute("matriculados");
	%>

       
   
   <%
 request.getSession().getAttribute("usuario");
 Object usu = session.getAttribute("usuario");
 
 if(usu==null){
	 response.sendRedirect("Login.jsp");
 }
 
 %>
   
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Relatório de Matriculados</title>
  </head>
  <body>
    <div class="container-fluid">
    	<div class="row">
    		<div class="col-md-12 text-center">
    		
    			<h3>Relatório de Matriculados</h3>
    		</div>    	
    	</div> 
    	
    	<div class="row">
    	
			    	<table class="table table-dark">
			  <thead>
			    <tr>
			     
			      <th scope="col">Aluno</th>
			      <th scope="col">Telefone</th>
			      <th scope="col">Curso</th>
			     <th scope="col">Data</th>
			    </tr>
			  </thead>
			  <tbody>
					   <!-- PREENCHER COM DADOS DA CLASSE/TABELA -->
			  
			  <%
			  for(int i=0;i<lista.size();i++){  
			  %>  
			    <tr>
				    <td><%=lista.get(i).getNome() %></td>
	      			<td><%=lista.get(i).getTelefone()%></td>
	      			<td><%=lista.get(i).getCurso()%></td>	      		
	      			<td><%=lista.get(i).getData()%></td>
			    </tr>
			   
			   <%} %>
			   
			  </tbody>
			</table>
			    	
    </div>	
    
    <a href="indexadm.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">Fechar</button></a>
    	   
    </div>
    
    
    
    
    
    

    <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>