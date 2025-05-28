--Isaque

--1. Quais são todos os funcionários, seus dados e informações de projeto e cargo, agrupados por cargo, ordenados alfabeticamente?

SELECT f.nome AS Funcionario, f.nome_cargo AS Cargo, p.id_projeto
FROM funcionario f
INNER JOIN etapa_projeto ep ON f.id_funcionario = ep.id_funcionario
INNER JOIN projeto p ON ep.id_projeto = p.id_projeto
Group BY f.nome_cargo,
ORDER BY f.nome ASC;

--2. Exibir a quantidade de funcionários em cada cargo, agrupando por nome do cargo, e ordenando do maior para o menor número de funcionários.

SELECT c.nome_cargo AS "Cargo", COUNT(f.id_funcionario) AS "Quantidade de Funcionários"
FROM cargo c
LEFT JOIN funcionario f ON c.nome_cargo = f.nome_cargo
GROUP BY c.nome_cargo;


--3.Qual o nome do funcionário, seu cargo e o valor do salário por hora, incluindo também informações de participação em etapas de projetos?

SELECT nome as "Funcionario", nome_cargo as "Cargo", salario_hora as "Salario por h/"
FROM funcionario
ORDER BY nome ASC;

---

--Maria

--4. Quais funcionários possuem e-mail informado e quais são seus respectivos contatos (telefone e e-mail), considerando também os cargos e etapas de projetos em que estão envolvidos?


--5. Quais projetos estão com status "Em andamento", exibindo a descrição do projeto e o nome do cliente, além de detalhes de etapas ou responsáveis?


--6. Quais são os projetos cancelados e quais funcionários atuaram em alguma etapa desses projetos, considerando também a data e o status dessas etapas?


---

--Felipe

--7. Quantos projetos cada funcionário participou por meio das etapas atribuídas, agrupando os dados por funcionário e ordenando pela quantidade de projetos?

SELECT f.id_funcionario AS 'ID funcionário',
f.nome AS 'Nome funcionário',
COUNT(p.id_projeto) AS 'Projetos associados'
FROM funcionario AS f INNER JOIN etapa_projeto AS e ON f.id_funcionario = e.id_funcionario
GROUP BY f.id_funcionario,
f.nome

--8. Para cada status existente, quantos projetos estão cadastrados, incluindo somente os status que possuem mais de 1 projeto?

SELECT s.nome_status AS 'Status',
COUNT(p.id_projeto) AS 'Projetos nesse status'
FROM status AS s INNER JOIN projeto AS p ON s.nome_status = p.status
GROUP BY s.nome_status


--9. Quais clientes ainda não abriram nenhum ticket de reclamação, verificando também se possuem projetos associados?

SELECT c.id_cliente AS 'ID',
c.nome AS 'Clientes sem ticket'
FROM cliente AS c
LEFT JOIN ticket_de_suporte AS t ON c.id_cliente = t.id_cliente WHERE t.id_ticket IS NULL
GROUP BY c.id_cliente, c.nome

---

--Matheus

--10. Quais projetos tiveram etapas iniciadas entre duas datas específicas (ex: 2024-01-01 e 2025-01-01), considerando também o nome do funcionário responsável e o status da etapa?


--11. Quais funcionários possuem salário por hora maior que a média da empresa, incluindo informações sobre cargo e participação em projetos?


--12. Quais são os projetos que têm etapas atribuídas a funcionários cujo e-mail não foi informado (NULL)?