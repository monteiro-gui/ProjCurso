<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-Br">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Style/CadCurso.css" media="">
<title>Matricule-se já!</title>
</head>
<body>
 <div>
        <h1 id="titulo">Cadastro de Curso</h1>
        <p id="subtitulo">Complete suas Informações</p>
        <br>
    </div>
    <form action="">
        <fieldset class="grupo">
            <div class="campo">
                <label for="nome"><strong>Nome</strong></label>
                <input type="text" name="nome" id="nome" required>
            </div>   
            <div class="campo">
                <label for="sobrenome"><strong>Sobrenome</strong></</label>
                <input type="text" name="sobrenome" id="sobrenome" required>
            </div> 
        </fieldset>
        
        <div class="campo"> 
            <label for="email"><strong>Email</strong></</label>
            <input type="email" name="email" id="email" required>
        </div>

        <div class="campo">
            <label for=""><Strong>De qual lado da aplicação você desenvolve?</Strong></label>
            <label for="">
                <input type="radio" name="devweb" value="frontend" checked>Front-end
            </label>
            <label for="">
                <input type="radio" name="devweb" value="backend">Back-end
            </label>
            <label for="">
                <input type="radio" name="devweb" value="fullstack">Fullstack
            </label>
        </div>
        
        <div class="campo">
            <label for="senioridade"><Strong>Senioridade</Strong></label>
            <select name="" id="senioridade"> 
                <option selected disabled value="">Escolha</option> 
                <option>Júnior</option>
                <option>Pleno</option>
                <option>Senior</option>
            </select>
        </div>

        <fieldset class="grupo">
            <div id="check">
                <label for=""><Strong>Selecione as tecnologias que utiliza</Strong></label><br><br>
                <input type="checkbox" id="tecnologia1" name="tecnologia1" value="HTML">
                <label for="tecnologia1">HTML</label>
                <input type="checkbox" id="tecnologia1" name="tecnologia2" value="CSS">
                <label for="tecnologia2">CSS</label>
                <input type="checkbox" id="tecnologia1" name="tecnologia3" value="JavaScript">
                <label for="tecnologia3">JavaScript</label>
            </div>
        </fieldset>

        <div class="campo">
            <br>
            <label for=""><Strong>Conte um pouco da sua experiência:</Strong></label>
            <textarea name="experiência" id="experiencia"  rows="6" style="width:26em"></textarea>
        </div>
        <button type="submit" class="botao">Concluído</button>
    </form>
</body>
</html>