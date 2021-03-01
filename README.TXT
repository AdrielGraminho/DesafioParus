## Este programa foi feito utilizando JFrame e MariaDB. Para que não haja problemas de compatibilidade recomendo utilizar  "openjdk 11.0.9.1" e "10.3.27-MariaDB. Porém o segundo não será necessário caso utilize o servidor que hospedei na amazon utilizando o EC2" ##

##Para executar este programa execute o arquivo .jar do diretório dist: ##

java -jar DesafioParus.jar


## Ao executar, o campo "Status" da tela de login deverá aparecer "conectado", caso esteja desconectado não terá acesso ao banco de dados e não conseguirá utilizar o programa. Neste caso pode importar o banco de dados para um servidor MariaDb local, utilizando o arquivo "Desafio.sql" e mudando o arquivo "/DesafioParus/src/br/com/parus/dal/ModuloConexao.java", inserindo nas linhas 23 e 24 o usuário e senha de seu MariaDB. ##

## Na tela principalpoderá cadastrar pessoas e aviões na aba "cadastro", bem como alterar, procurar e excluir  um registro específico. Ao cadastrar um avião não é necessário digitar o campo id, visto que é gerado automaticamente e nesse caso serve somente para pesquisa ##

## No menu "Relatório/Listar Aviões" poderá listar todos aviões cadastrados, enquanto no menu "Relatório/Listar Voos" poderá listar todos passageiros de um avião. ##

## Sempre que quiser fechar todas as abas e voltar a tela inicial pressione "início" ##

