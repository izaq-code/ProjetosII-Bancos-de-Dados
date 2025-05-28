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
GROUP BY c.nome_cargo
ORDER BY COUNT(f.id_funcionario) DESC;

--3.Qual o nome do funcionário, seu cargo e o valor do salário por hora, incluindo também informações de participação em etapas de projetos?

SELECT f.nome as "Funcionario", f.nome_cargo as "Cargo", f.salario_hora as "Salario por h/", COUNT(e.id_etapa) AS "Projetos Associados"
FROM funcionario f inner join etapa_projeto e ON f.id_funcionario = e.id_funcionario
Group BY f.nome
ORDER BY f.nome ASC;

---

--Maria

--4. Quais funcionários possuem e-mail informado e quais são seus respectivos contatos (telefone e e-mail), considerando também os cargos e etapas de projetos em que estão envolvidos?
SELECT
    f.nome AS Nome_Funcionario,
    f.telefone AS Telefone_Funcionario,
    f.email AS Email_Funcionario,
    c.nome_cargo AS Cargo_Funcionario,
    ep.nome AS Nome_Etapa_Projeto,
    ep.descricao AS Descricao_Etapa,
    ep.status AS Status_Etapa,
    p.descricao AS Nome_Projeto
FROM
    funcionario AS f
JOIN
    cargo AS c ON f.nome_cargo = c.nome_cargo
LEFT JOIN
    etapa_projeto AS ep ON f.id_funcionario = ep.id_funcionario
LEFT JOIN
    projeto AS p ON ep.id_projeto = p.id_projeto
WHERE
    f.email IS NOT NULL AND f.email <> '';

--5. Quais projetos estão com status "Em andamento", exibindo a descrição do projeto, o nome do cliente, o orçamento disponível e os detalhes das etapas ou dos responsáveis?
SELECT
    p.descricao AS Descricao_Projeto,
    cli.nome AS Nome_Cliente,
    cli.orcamento AS Orcamento_Disponivel,
    ep.nome AS Nome_Etapa,
    ep.descricao AS Descricao_Etapa,
    ep.data_inicio AS Data_Inicio_Etapa,
    ep.data_fim_prevista AS Data_Fim_Prevista_Etapa,
    ep.status AS Status_Etapa,
    f.nome AS Responsavel_Etapa,
    f.email AS Email_Responsavel,
    f.telefone AS Telefone_Responsavel
FROM
    projeto AS p
JOIN
    cliente AS cli ON p.id_cliente = cli.id_cliente
LEFT JOIN
    etapa_projeto AS ep ON p.id_projeto = ep.id_projeto
LEFT JOIN
    funcionario AS f ON ep.id_funcionario = f.id_funcionario
WHERE
    p.status = 'Em andamento';


--6. Quais são os projetos cancelados, quem foram os funcionários que participaram de suas etapas, e qual era o orçamento disponível do cliente responsável por cada projeto?
SELECT
    p.descricao AS Descricao_Projeto,
    p.status AS Status_Projeto,
    cli.nome AS Nome_Cliente,
    cli.orcamento AS Orcamento_Disponivel,
    f.nome AS Nome_Funcionario,
    f.nome_cargo AS Cargo_Funcionario,
    ep.nome AS Nome_Etapa,
    ep.descricao AS Descricao_Etapa,
    ep.data_inicio AS Data_Inicio_Etapa,
    ep.data_fim_prevista AS Data_Fim_Prevista_Etapa,
    ep.data_fim_real AS Data_Fim_Real_Etapa,
    ep.status AS Status_Etapa_Projeto
FROM
    projeto AS p
JOIN
    cliente AS cli ON p.id_cliente = cli.id_cliente
JOIN
    etapa_projeto AS ep ON p.id_projeto = ep.id_projeto
JOIN
    funcionario AS f ON ep.id_funcionario = f.id_funcionario
WHERE
    p.status = 'Cancelado';


---

--Felipe

--7. Quantos projetos cada funcionário participou por meio das etapas atribuídas, agrupando os dados por funcionário e ordenando pela quantidade de projetos?

SELECT f.id_funcionario AS 'ID funcionário',
f.nome AS 'Nome funcionário',
COUNT(e.id_etapa) AS 'Projetos associados'
FROM funcionario AS f INNER JOIN etapa_projeto AS e ON f.id_funcionario = e.id_funcionario
GROUP BY f.id_funcionario,
f.nome

--8. Para cada status existente, quantos projetos estão cadastrados, incluindo somente os status que possuem mais de 1 projeto?

SELECT s.nome_status AS 'Status',
COUNT(p.id_projeto) AS 'Projetos nesse status'
FROM status AS s INNER JOIN projeto AS p ON s.nome_status = p.status
GROUP BY s.nome_status


--9. Quais clientes ainda não abriram nenhum ticket de reclamação e qual é o orçamento disponível de cada um deles? e verificando também se possuem projetos associados?


SELECT c.id_cliente AS 'ID',
       c.nome AS 'Clientes sem ticket',
       c.orcamento AS 'Orcamento_Disponivel'
FROM cliente AS c
LEFT JOIN ticket_de_suporte AS t ON c.id_cliente = t.id_cliente
WHERE t.id_ticket IS NULL
GROUP BY c.id_cliente, c.nome, c.orcamento;


---

--Matheus

--10. Quais projetos tiveram etapas iniciadas entre duas datas específicas (ex: 2024-01-01 e 2025-01-01), considerando também o nome do funcionário responsável e o status da etapa?


--11. Quais funcionários possuem salário por hora maior que a média da empresa, incluindo informações sobre cargo e participação em projetos?


--12. Quais são os projetos que têm etapas atribuídas a funcionários cujo e-mail não foi informado (NULL)?
