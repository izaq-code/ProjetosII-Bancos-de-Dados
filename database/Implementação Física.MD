# 📄 README — Consultas SQL com Requisitos Específicos

**Objetivo:** Responder a perguntas com consultas SQL que atendem a requisitos específicos de junções, filtros, operadores, agrupamentos, subconsultas e ordenações.

---

## ✅ **1. Junção de 3 ou mais tabelas com `ORDER BY`**

**Pergunta 1:** Quais são todos os funcionários, seus dados e informações de projeto e cargo, agrupados por cargo, ordenados alfabeticamente?

```sql
SELECT f.nome AS Funcionario, f.telefone, f.email, f.salario_hora, f.nome_cargo AS Cargo, p.id_projeto, p.descricao AS Projeto
FROM funcionario f
INNER JOIN etapa_projeto ep ON f.id_funcionario = ep.id_funcionario
INNER JOIN projeto p ON ep.id_projeto = p.id_projeto
ORDER BY f.nome_cargo ASC, f.nome ASC;
```

![colsulta sql](/docs/prints/ex1.png)

---

## ✅ **2. Junção de 3 ou mais tabelas com `ORDER BY` e filtros na cláusula `WHERE`**

**Pergunta 4:** Quais funcionários possuem e-mail informado e quais são seus respectivos contatos, considerando também os cargos e etapas de projetos em que estão envolvidos?

```sql
SELECT f.nome AS Nome_Funcionario, f.telefone, f.email, c.nome_cargo, ep.nome AS Nome_Etapa_Projeto,
       ep.descricao AS Descricao_Etapa, ep.status, p.descricao AS Nome_Projeto
FROM funcionario f
JOIN cargo c ON f.nome_cargo = c.nome_cargo
LEFT JOIN etapa_projeto ep ON f.id_funcionario = ep.id_funcionario
LEFT JOIN projeto p ON ep.id_projeto = p.id_projeto
WHERE f.email IS NOT NULL AND f.email <> '';
```

![colsulta sql](/docs/prints/ex4.png)

**Pergunta 5:** Quais projetos estão com status "Em andamento", exibindo a descrição do projeto, o nome do cliente, o orçamento disponível e os detalhes das etapas ou dos responsáveis?

```sql
SELECT p.descricao AS Descricao_Projeto, p.status, cli.nome AS Nome_Cliente, cli.Orcamento_Disponivel,
       f.nome AS Nome_Funcionario, f.nome_cargo, ep.nome AS Nome_Etapa, ep.descricao, ep.data_inicio,
       ep.data_fim_prevista, ep.data_fim_real, ep.status AS Status_Etapa_Projeto
FROM projeto p
JOIN cliente cli ON p.id_cliente = cli.id_cliente
JOIN etapa_projeto ep ON p.id_projeto = ep.id_projeto
JOIN funcionario f ON ep.id_funcionario = f.id_funcionario
WHERE p.status = 'Em andamento';
```

![colsulta sql](/docs/prints/ex5.png)

**Pergunta 6:** Quais são os projetos cancelados, quem foram os funcionários que participaram de suas etapas, e qual era o orçamento do cliente?

```sql
SELECT p.descricao AS Descricao_Projeto, p.status, cli.nome AS Nome_Cliente, cli.Orcamento_Disponivel,
       f.nome AS Nome_Funcionario, f.nome_cargo, ep.nome AS Nome_Etapa, ep.descricao, ep.data_inicio,
       ep.data_fim_prevista, ep.data_fim_real, ep.status AS Status_Etapa_Projeto
FROM projeto p
JOIN cliente cli ON p.id_cliente = cli.id_cliente
JOIN etapa_projeto ep ON p.id_projeto = ep.id_projeto
JOIN funcionario f ON ep.id_funcionario = f.id_funcionario
WHERE p.status = 'Cancelado';
```

![colsulta sql](/docs/prints/ex6.png)

---

## ✅ **3. Junção de 3 ou mais tabelas com `LIKE` e `BETWEEN`**

**Pergunta 10:** Quais projetos tiveram etapas iniciadas entre duas datas específicas, considerando o nome do funcionário responsável e o status da etapa?

```sql
SELECT p.id_projeto, p.descricao AS projeto, e.nome AS etapa, e.data_inicio, e.status, f.nome AS funcionario_responsavel 
FROM projeto p
JOIN etapa_projeto e ON p.id_projeto = e.id_projeto
LEFT JOIN funcionario f ON e.id_funcionario = f.id_funcionario
WHERE e.data_inicio BETWEEN '2024-01-01' AND '2025-01-01'
ORDER BY e.data_inicio;
```

![colsulta sql](/docs/prints/ex10.png)

---

## ✅ **4. Junção de 3 ou mais tabelas com `IN/NOT IN` e `IS NULL/IS NOT NULL`**

**Pergunta 12:** Quais são os projetos que têm etapas atribuídas a funcionários cujo e-mail não foi informado (NULL)?

```sql
SELECT p.id_projeto, p.descricao AS projeto, e.nome AS etapa, f.nome AS funcionario, f.email 
FROM projeto p
JOIN etapa_projeto e ON p.id_projeto = e.id_projeto
LEFT JOIN funcionario f ON e.id_funcionario = f.id_funcionario
WHERE f.email IS NULL OR e.id_funcionario IS NULL;
```

![colsulta sql](/docs/prints/ex12.png)

---

## ✅ **5. Junção de 2 ou mais tabelas com `GROUP BY`, sem `HAVING`, com agregação e `ORDER BY`**

**Pergunta 2:** Exibir a quantidade de funcionários em cada cargo, ordenando do maior para o menor número de funcionários.

```sql
SELECT c.nome_cargo AS "Cargo", COUNT(f.id_funcionario) AS "Quantidade de Funcionários"
FROM cargo c
LEFT JOIN funcionario f ON c.nome_cargo = f.nome_cargo
GROUP BY c.nome_cargo
ORDER BY COUNT(f.id_funcionario) DESC;
```
![colsulta sql](/docs/prints/ex2.png)

**Pergunta 3:** Qual o nome do funcionário, seu cargo e o valor do salário por hora, incluindo também informações de participação em etapas de projetos?

```sql
SELECT f.nome AS "Funcionario", f.nome_cargo AS "Cargo", f.salario_hora AS "Salario por h/",
       COUNT(DISTINCT e.id_etapa) AS "Qtd Etapas Envolvido"
FROM funcionario f
LEFT JOIN etapa_projeto e ON f.id_funcionario = e.id_funcionario
GROUP BY f.id_funcionario, f.nome, f.nome_cargo, f.salario_hora
ORDER BY f.nome ASC;
```

![colsulta sql](/docs/prints/ex3.png)

**Pergunta 7:** Quantos projetos cada funcionário participou por meio das etapas atribuídas, agrupando por funcionário e ordenando pela quantidade?

```sql
SELECT f.id_funcionario AS "ID funcionário", f.nome AS "Nome funcionário",
       COUNT(e.id_etapa) AS "Projetos associados"
FROM funcionario f
INNER JOIN etapa_projeto e ON f.id_funcionario = e.id_funcionario
GROUP BY f.id_funcionario, f.nome
ORDER BY COUNT(e.id_etapa) DESC;
```

![colsulta sql](/docs/prints/ex7.png)

---

## ✅ **6. Junção de 2 ou mais tabelas com `GROUP BY` e `HAVING`**

**Pergunta 8:** Para cada status existente, quantos projetos estão cadastrados, incluindo somente os status com mais de 1 projeto?

```sql
SELECT s.nome_status AS "Status", COUNT(p.id_projeto) AS "Projetos nesse status"
FROM status s
JOIN projeto p ON s.nome_status = p.status
GROUP BY s.nome_status
HAVING COUNT(p.id_projeto) > 1;
```

![colsulta sql](/docs/prints/ex8.png)

---

## ✅ **7. Subselect sem correlação**

**Pergunta 11:** Quais funcionários possuem salário por hora maior que a média da empresa, incluindo informações sobre cargo e participação em projetos?

```sql
SELECT f.nome, f.salario_hora, f.nome_cargo, COUNT(e.id_etapa) AS participacao_projetos
FROM funcionario f
LEFT JOIN etapa_projeto e ON f.id_funcionario = e.id_funcionario
WHERE f.salario_hora > (SELECT AVG(salario_hora) FROM funcionario)
GROUP BY f.id_funcionario, f.nome, f.salario_hora, f.nome_cargo;
```

![colsulta sql](/docs/prints/ex11.png)

---

## ✅ **8. Subselect com correlação**

**Pergunta 9:** Quais clientes ainda não abriram nenhum ticket de reclamação e qual é o orçamento disponível de cada um deles?

```sql
SELECT c.id_cliente AS "ID", c.nome AS "Clientes sem ticket", c.Orcamento_Disponivel
FROM cliente c
LEFT JOIN ticket_de_suporte t ON c.id_cliente = t.id_cliente
WHERE t.id_ticket IS NULL
GROUP BY c.id_cliente, c.nome, c.Orcamento_Disponivel;
```

![colsulta sql](/docs/prints/ex9.png)

---

## ✅ **9. Subselect com `EXISTS`**

**Consulta adicional 13:** Quais funcionários participam de pelo menos uma etapa de projeto?

```sql
SELECT f.nome, f.email
FROM funcionario f
WHERE EXISTS (
    SELECT 1 FROM etapa_projeto ep WHERE ep.id_funcionario = f.id_funcionario
);
```

![colsulta sql](/docs/prints/ex13.png)

---

## ✅ **10. Junção de 2 ou mais tabelas com `GROUP BY`, `HAVING` e `ALL`**

**Consulta adicional 14:** Quais funcionários participaram do maior número de etapas entre todos?

```sql
SELECT f.id_funcionario, f.nome, COUNT(e.id_etapa) AS qtd_projetos
FROM funcionario f
JOIN etapa_projeto e ON f.id_funcionario = e.id_funcionario
GROUP BY f.id_funcionario, f.nome
HAVING COUNT(e.id_etapa) >= ALL (
    SELECT COUNT(*) FROM etapa_projeto GROUP BY id_funcionario
);
```

![colsulta sql](/docs/prints/ex14.png)

---
