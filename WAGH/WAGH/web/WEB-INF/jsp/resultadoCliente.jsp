<html> 
    <head> 
        <title>Resultado</title> 
    </head> 
    <body> 
        <h2>Dados Enviados pelo usuário</h2> 
        <table> 
            <tr> 
                <td>Nome</td> 
                <td>${cliNome}</td> 
            </tr> 
            <tr> 
                <td>Idade</td> 
                <td>${cliIdade}</td> 
            </tr>
            <tr> 
                <td>CPF</td> 
                <td>${cliCPF}</td> 
            </tr> 
            <tr> 
                <td>Descrição</td> 
                <td>${cliDescricao}</td> 
            </tr>
            <tr> 
                <td>Especial</td> 
                <td>${cliEspecial}</td> 
            </tr>
             <tr> 
                <td>Linguas</td> 
                <td>
                    <%
                        String[] cliLinguagens = (String[]) request.getAttribute("cliLinguagens");
                        for(String linguas:cliLinguagens){
                            out.println(linguas);
                        }
                    %>
                </td> 
            </tr>
            <tr> 
                <td>Sexo</td> 
                <td>${cliSexo} - ${(cliSexo=="0"? "Masculino" : "Feminino")}</td> 
            </tr>
            <tr> 
                <td>Genero</td> 
                <td>${cliGeneroFilme}</td> 
            </tr>
            <tr> 
                <td>Cidade</td> 
                <td>${cliCidade}</td> 
            </tr>
            <tr> 
                <td>Desejos</td> 
                <td>
                    <%
                        String[] cliDesejos = (String[]) request.getAttribute("cliDesejos");
                        for(String desejos:cliDesejos){
                            out.println(desejos);
                        }
                    %>
                </td> 
            </tr>
             <tr> 
                <td>Perfil</td> 
                <td>${cliPerfil}</td> 
            </tr>
             <tr> 
                <td><a href="/ReceberDadosFormulariosBD/index.htm">Voltar</a></td> 
                <td></td> 
            </tr>
        </table>  
    </body> 
</html>