SELECT * FROM t1
CROSS JOIN JSON_TABLE (JSON_EXTRACT(JSON, "$.Cliente"), "$[*]"
COLUMNS (NOME VARCHAR(10) PATH "$.Nome", HOBBY VARCHAR(10) PATH "$.Hobby")) t2;

SELECT JSON_EXTRACT(JSONVALUE, "$.Nome_Departamento"), JSON_EXTRACT(JSONVALUE, "$.Projeto[0].Nome_Projeto")
,  t2.CPF_FUNCIONARIO, t2.Horas FROM tb_object_departamento_projeto_trabalha_em
CROSS JOIN
JSON_TABLE (JSON_EXTRACT(JSONVALUE, "$.Projeto[0].Horas_Trabalhadas"), "$[*]"
COLUMNS (CPF_FUNCIONARIO VARCHAR(10) PATH "$.Cpf_Funcionario", Horas integer PATH "$.Horas")) t2
UNION
SELECT JSON_EXTRACT(JSONVALUE, "$.Nome_Departamento"), JSON_EXTRACT(JSONVALUE, "$.Projeto[1].Nome_Projeto")
, t2.CPF_FUNCIONARIO, t2.Horas FROM tb_object_departamento_projeto_trabalha_em
CROSS JOIN
JSON_TABLE (JSON_EXTRACT(JSONVALUE, "$.Projeto[1].Horas_Trabalhadas"), "$[*]"
COLUMNS (CPF_FUNCIONARIO VARCHAR(10) PATH "$.Cpf_Funcionario", Horas integer PATH "$.Horas")) t2;