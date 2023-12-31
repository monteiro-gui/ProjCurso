<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<script>
    
    function limpa_formulário_cep() {
            //Limpa valores do formulário de cep.
            document.getElementById('rua').value=("");
            document.getElementById('bairro').value=("");
            document.getElementById('cidade').value=("");
            document.getElementById('uf').value=("");
           // document.getElementById('ibge').value=("");
    }

    function meu_callback(conteudo) {
        if (!("erro" in conteudo)) {
            //Atualiza os campos com os valores.
            document.getElementById('rua').value=(conteudo.logradouro);
            document.getElementById('bairro').value=(conteudo.bairro);
            document.getElementById('cidade').value=(conteudo.localidade);
            document.getElementById('uf').value=(conteudo.uf);
           // document.getElementById('ibge').value=(conteudo.ibge);
        } //end if.
        else {
            //CEP não Encontrado.
            limpa_formulário_cep();
            alert("CEP não encontrado.");
        }
    }
        
    function pesquisacep(valor) {

        //Nova variável "cep" somente com dígitos.
        var cep = valor.replace(/\D/g, '');

        //Verifica se campo cep possui valor informado.
        if (cep != "") {

            //Expressão regular para validar o CEP.
            var validacep = /^[0-9]{8}$/;

            //Valida o formato do CEP.
            if(validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                document.getElementById('rua').value="...";
                document.getElementById('bairro').value="...";
                document.getElementById('cidade').value="...";
                document.getElementById('uf').value="...";
               // document.getElementById('ibge').value="...";

                //Cria um elemento javascript.
                var script = document.createElement('script');

                //Sincroniza com o callback.
                script.src = 'https://viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';

                //Insere script no documento e carrega o conteúdo.
                document.body.appendChild(script);

            } //end if.
            else {
                //cep é inválido.
                limpa_formulário_cep();
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            limpa_formulário_cep();
        }
    };

    </script>
</head>
<body>

<div class="container">

	<div class="row">
		<div class="col-md-12 text-center">
		<h3>Controle de Alunos</h3>
		</div>
	</div>
  
  <form method="get" action="alunonovo">
 
  <div class="form-row">
    <div class="col-md-2 mb-3">
    <label for="idcliente">Código do Aluno</label>
    <input type="text" class="form-control" name="idaluno">   
   </div>
  
   <div class="col-md-6 mb-3">
    <label for="nome">Nome</label>
    <input type="text" class="form-control" id="" placeholder="Digite Nome" name="nome">
  </div>
  
   <div class="col-md-2 mb-3">
    <label for="telefone">Telefone</label>
    <input type="text" class="form-control" id="" placeholder="Digite Telefone" name="telefone">
  </div>
  
  <div class="col-md-2 mb-3">
    <label for="datanasc">Data Nascimento</label>
    <input type="date" class="form-control" id="" placeholder="" name="datanasc">
  </div>
  </div>
  
  <div class="form-row">
    <div class="col-md-6 mb-3">
    <label for="email">Email</label>
    <input type="email" class="form-control" id="" placeholder="Digite Email" name="email">
  </div>
  
  <div class="col-md-3 mb-3">
    <label for="cpf">Cpf</label>
    <input type="text" class="form-control" id="" placeholder="Digite Cpf" name="cpf">
  </div>
  
 <div class="col-md-3 mb-3">
    <label for="rg">Rg</label>
    <input type="text" class="form-control" id="" placeholder="Digite Rg" name="rg">
  </div>
  
  </div>
  
  <div class="form-group">
    <hr>
  </div>
  
  <div class="form-row">
    <div class="col-md-2 mb-3">
    <label for="cep">Cep</label>
    <input type="text" class="form-control" id="cep" placeholder="Digite Cep" name="cep" onblur="pesquisacep(this.value);">
  </div>
  
 <div class="col-md-8 mb-3">
    <label for="rua">Rua</label>
    <input type="text" class="form-control" id="rua" placeholder="" name="rua">
  </div>
  
  <div class="col-md-2 mb-3">
    <label for="numero">Número</label>
    <input type="text" class="form-control" id="" placeholder="" name="numero">
  </div>
   </div>
   
   <div class="form-row">
	<div class="col-md-2 mb-4">    
	    <label for="complemento">Complemento</label>
	    <input type="text" class="form-control" id="" placeholder="Digite Complemento" name="complemento">
	</div> 
  
  	<div class="col-md-4 mb-4">    
    	<label for="bairro">Bairro</label>
    	<input type="text" class="form-control" id="bairro" placeholder="" name="bairro">
  	</div>
  
  	<div class="col-md-4 mb-4">    
	    <label for="cidade">Cidade</label>
	    <input type="text" class="form-control" id="cidade" placeholder="" name="cidade">
  	</div>
  
  	<div class="col-md-2 mb-4">    
	    <label for="uf">Uf</label>
	    <input type="text" class="form-control" id="uf" placeholder="" name="uf">
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