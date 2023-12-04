<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
crossorigin="anonymous">
</head>
<body>

<div class="container-fluid text-center">
		<nav class="navbar bg-body-tertiary">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1">Cursos De Programação</span>
  </div>
</nav>

 <div class="form_grupo">

				<label for="cadcurso" class="text">Selecione o curso</label> <select
					name="cadastrodocurso" class="dropdown" required>

					<option selected disabled class="form_select_option" value="">Selecione</option>
					<option value="java" class="form_select_option">Programação Java</option>
					<option value="python" class="form_select_option">Programação Python</option>
					<option value="c++" class="form_select_option">Programação C++</option>
					<option value="php" class="form_select_option">Programação PHP</option>

				</select>

			</div>
			
			 <div class="form_grupo">

				<label for="cadcurso" class="text">Turno</label> <select
					name="cadastrodocurso" class="dropdown" required>

					<option selected disabled class="form_select_option" value="">Selecione</option>
					<option value="manha" class="form_select_option">Manhã</option>
					<option value="tarde" class="form_select_option">Tarde</option>
					<option value="noite" class="form_select_option">Noite</option>
					

				</select>

			</div>
 
 <button type="submit" class="btn btn-primary">Enviar</button>
</form>


</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>