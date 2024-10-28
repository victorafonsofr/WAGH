<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/estilo.css" />

    </head>
     <body>
        <div class="form-centro">
            
            <form:form method="POST" action="${pageContext.request.contextPath}/adicionarCliente" commandName="cliente" name="formulario" id="formulario">
                <form:errors path = "*" cssClass = "blocoerro" element = "div" />
                <center><img width="80%" src="${pageContext.request.contextPath}/resources/images/figura.png"></center>
                <legend>
                    Cadastro de Cliente
                </legend>
                <div class="input-group">
                    <form:label path= "cliNome">Nome</form:label>

                    <form:input path = "cliNome" />

                    <form:errors path = "cliNome" cssClass="erro" />
                </div>
                <div class="input-group">
                    <form:label path= "cliIdade">Idade</form:label>

                    <form:input path = "cliIdade" />
                </div>
                <div class="input-group">
                    <form:label path= "cliCPF">CPF</form:label>

                    <form:input path = "cliCPF" />

                    <form:errors path = "cliCPF" cssClass="erro" />
                </div>
                <div class="input-group">
                    <form:label path= "cliDescricao">Descrição</form:label>

                    <form:textarea path = "cliDescricao" id="texto" />
                </div>
                <div class="input-group">
                    <form:label path= "cliCidade">Cidades</form:label>

                    <form:select path = "cliCidade">
                        <form:option value = "" label = "Selecionar"/>
                        <form:options items = "${webListaCidades}" />
                    </form:select>
                </div>
                <div class="colunas">
                    <div class="colunas">
                        <form:label path= "cliEspecial">Especial</form:label>

                        <form:checkbox path = "cliEspecial" id="newsletter"/>
                    </div>
                    <div class="input-group">
                        <form:label path= "cliLinguagens">Linguas</form:label>

                        <form:checkboxes  items = "${webLinguagensLista}" path = "cliLinguagens" id="newsletter"/>
                    </div>
                </div>
                    <div class="colunas">
                        <form:label path = "cliSexo">Sexo</form:label></td> 

                        <form:radiobutton path = "cliSexo" value = "0" label = "Masculino"  /> 
                        <form:radiobutton path = "cliSexo" value = "1" labxel = "Feminio" /> 

                    </div>

                    <div class="colunas">
                        <form:label path= "cliGeneroFilme">Genero Filmes:</form:label>

                        <form:radiobuttons  items = "${webGeneroFilmes}" path = "cliGeneroFilme" />
                    </div>


                <div class="input-group">
                    <form:label path= "cliDesejos" >Desejos</form:label>

                    <form:select path = "cliDesejos" items = "${webListaDesejos}" multiple="true" />
                </div>
                <div class="footer">
                    <form:hidden path = "cliPerfil" value="administrador" />
                    <input type = "submit" value = "::. Inserir .::"/> 

                </div>
            </div>
        </form:form>
         <!--JavaScript at end of body for optimized loading-->
         <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>