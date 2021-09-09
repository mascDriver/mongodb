-- filter
db.funcionario.find({"Sexo": "M"}, {})
db.funcionario.find({"Salario": "31000"}, {})
-- maior menor gt gte lt lte
db.funcionario.find({"Salario": {$gte: 31000}}, {})
db.funcionario.find({"Data_Nascimento": {$gte: new Date("1980-01-01")}}, {})
--in
db.funcionario.find({"Primeiro_Nome": {$in: ["Fernando", "Tonico"]}}, {})
-- and
db.funcionario.find({$and: [{"Sexo": "M"}, {"Numero_Departamento": "5"}]}, {})
-- or
db.funcionario.find({or: [{"Sexo": "M"}, {"Numero_Departamento": "5"}]}, {})