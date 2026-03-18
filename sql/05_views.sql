CREATE VIEW consultas_detalhadas AS
SELECT M.nome AS medico, P.nome AS paciente, C.data_cons, C.hora
FROM Consulta C
JOIN Medico M ON C.codm = M.codm
JOIN Paciente P ON C.codp = P.codp;
