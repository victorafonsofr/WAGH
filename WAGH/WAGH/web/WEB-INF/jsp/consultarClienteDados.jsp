<html> 
    <head> 
        <title>Resultado</title> 
    </head> 
    <body> 
        <h2>Dados Enviados pelo usu�rio</h2> 
        <table> 
            <tr> 
                <td>Nome</td> 
                <td>${cliNome}</td> 
            </tr> 
            <tr> 
                <td>Cidade</td> 
                <td>${cliCidade}</td> 
            </tr>
            <tr> 
                <td>CPF</td> 
                <td>${cliCPF}</td> 
            </tr>
            <tr> 
                <td>Sexo</td> 
                <td>${(cliSexo=="0"? "Masculino" : "Feminino")}</td> 
            </tr>
            <tr> 
                <td>C�digo</td> 
                <td>${cliCodigo}</td> 
            </tr> 
        </table>  
    </body> 
</html>