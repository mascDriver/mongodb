# aqui e usado mysql para uso de jsons
select * from tb_funcionario;
select * from tb_dependente;
select * from tb_object_funcionario;
SELECT JSON_PRETTY(JSON) AS JSON_DOCUMENTO FROM tb_object_funcionario;
select  `JSON`->"$.Sexo" as SEXO from tb_object_funcionario;
SELECT REPLACE(JSON->"$.Sexo","""","") AS SEXO FROM tb_object_funcionario;
select json_extract(`JSON`, "$.Cpf") FROM tb_object_funcionario;