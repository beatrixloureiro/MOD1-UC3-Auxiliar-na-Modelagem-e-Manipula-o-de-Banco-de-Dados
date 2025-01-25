USE CLINICA_LOUREIRO;

SELECT * FROM consultas WHERE YEAR(data_realizada) = 2020 AND id_conveni IS NOT NULL; 
SELECT AVG (valor) FROM consultas WHERE YEAR(data_realizada) = 2020 AND id_conveni IS NOT NULL;

SELECT * FROM consultas WHERE YEAR(data_realizada) = 2020 AND id_conveni IS NULL; 
SELECT AVG (valor) FROM consultas WHERE YEAR(data_realizada) = 2020 AND id_conveni IS NULL;

SELECT * FROM internacao WHERE data_saida > data_prevista;

SELECT *, instrucoes FROM consultas c, receituario r WHERE id_consulta=1;

SELECT * FROM consultas WHERE valor = (SELECT MAX(valor) FROM consultas) AND id_conveni IS NULL;
SELECT * FROM consultas WHERE valor = (SELECT MIN(valor) FROM consultas) AND id_conveni IS NULL;

SELECT data_entrada, data_prevista, data_saida, procedimentos FROM internacao, receituario
JOIN quarto JOIN tipos_quarto WHERE apartamento;

SELECT nome, data_realizada, data_nascimento FROM pacientes JOIN consultas  JOIN especialidade 
WHERE TIMESTAMPDIFF(YEAR, CURDATE(), data_realizada) < 18
ORDER BY data_realizada;

SELECT nome, crm, COUNT(id_consulta) AS quantidadeConsultas FROM medicos
JOIN consultas c ON crm = crm
GROUP BY nome, crm;

SELECT nome, cre, COUNT(id_enfermeiro_2) AS numeroInternacoes
FROM enfermeiros e JOIN internacao i JOIN internacao_paciente_medico
GROUP BY nome, cre
HAVING COUNT(id_enfermeiro_2)>1;




