show dbs
--create database
use empresa
db.funcionario.insertOne({"Cpf": "123123123", "Primeiro_Nome": "João", "Ultimo_Nome": "Silva", "Salario": 14000, "Data_Nascimento": new Date("1970-02-02")})
--drop
db
.
getCollection
("user").drop();
--inserindo dados
db.funcionario.insertOne({"_id": "434434434","Cpf": "434434434", "Primeiro_Nome": "Carmem", "Ultimo_Nome": "Alcantara", "Salario": 8000, "Data_Nascimento": new Date("1972-07-18"), "Sexo": "F"})
db.funcionario.insertOne({"Cpf": "12345678966", "Sexo": "M", "Salario": 30000, "Endereco": "Rua das Flores 751 São Paulo SP", "Nome_Meio": "B", "Dependentes": [{"Sexo": "F", "Parentesco": "Filha", "Data_Nascimento": "1988-01-30", "Nome_Dependente": "Alicia"}, {"Sexo": "F", "Parentesco": "Esposa", "Data_Nascimento": "1967-01-05", "Nome_Dependente": "Elizabeth"}, {"Sexo": "M", "Parentesco": "Filho", "Data_Nascimento": "1988-01-01", "Nome_Dependente": "Michael"}], "Ultimo_Nome": "Silva", "Primeiro_Nome": "João", "Cpf_Supervisor": "33344555587", "Data_Nascimento": "1965-01-01", "Numero_Departamento": "5"})
-- inserindo muitos dados
db.funcionario.insertMany([{"Cpf": "33344555587", "Sexo": "M", "Salario": 40000, "Endereco": "Rua da Lapa 34 São Paulo SP", "Nome_Meio": "T", "Dependentes": [{"Sexo": "F", "Parentesco": "Filha", "Data_Nascimento": new Date ("1986-01-05"), "Nome_Dependente": "Alicia"}, {"Sexo": "F", "Parentesco": "Esposa", "Data_Nascimento": new Date ("1958-01-03"), "Nome_Dependente": "Janaína"}, {"Sexo": "M", "Parentesco": "Filho", "Data_Nascimento": new Date ("1983-01-25"), "Nome_Dependente": "Tiago"}], "Ultimo_Nome": "Wong", "Primeiro_Nome": "Fernando", "Cpf_Supervisor": "88866555576", "Data_Nascimento": new Date ("1955-01-12"), "Numero_Departamento": "5"},
{"Cpf": "44111555587", "Sexo": "M", "Salario": 31000, "Endereco": "Rua Rodrigues Alves 771 Rio de Janeiro RJ", "Nome_Meio": "V", "Dependentes": [{"Sexo": "F", "Parentesco": "Esposa", "Data_Nascimento": new Date ("1986-01-07"), "Nome_Dependente": "Joaquina"}], "Ultimo_Nome": "Teixiera", "Primeiro_Nome": "Ubiratan", "Cpf_Supervisor": "88866555576", "Data_Nascimento": new Date ("1984-01-15"), "Numero_Departamento": "5"}])
--consultas

--selecionando tudo
db.funcionario.find({})

--selecionando tudo e exebindo tudo menos ids
db.funcionario.find({}, {"_id": 0})

--selecionando tudo e exibindo somente nome
db.funcionario.find({}, {"Primeiro_Nome": 1})


--selecionando tudo e exibindo somente nome dos dependentes do array
db.funcionario.find({}, {"Dependentes.Nome_Dependente": 1})

--limitando o select
db.funcionario.find({}, {"Dependentes.Nome_Dependente": 1}).limit(5)

--order desc
db.funcionario.find({}, {}).sort({"Primeiro_Nome": 1})

--order asc
db.funcionario.find({}, {}).sort({"Primeiro_Nome": -1})