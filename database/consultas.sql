--Isaque

--1. Listar todos os funcionários agrupados por cargo.

SELECT nome as "Funcionario", nome_cargo as "Cargo"
FROM funcionario
ORDER BY nome ASC;

--2. Exibir a quantidade de funcionários por cargo.

SELECT c.nome_cargo AS "Cargo", COUNT(f.id_funcionario) AS "Quantidade de Funcionários"
FROM cargo c
LEFT JOIN funcionario f ON c.nome_cargo = f.nome_cargo
GROUP BY c.nome_cargo;


--3. Mostrar o nome do funcionário, seu cargo e o salário por hora.

SELECT nome as "Funcionario", nome_cargo as "Cargo", salario_hora as "Salario por h/"
FROM funcionario
ORDER BY nome ASC;

---

--Maria

--4. Listar os nomes e contatos (telefone e e-mail) de todos os funcionários com e-mail preenchido.


--5. Listar os projetos com status "Em andamento", mostrando a descrição e o nome do cliente.


--6. Listar os projetos cancelados e os nomes dos funcionários que atuaram em etapas desses projetos.




---

--Felipe

--7. Exibir quantos projetos cada funcionário está envolvido por meio das etapas atribuídas.


--8. Mostrar para cada status, quantos projetos existem cadastrados.


--9. Listar os clientes que ainda não abriram nenhum ticket de reclamação.




---

--Matheus

--10. Listar os projetos que tiveram etapas iniciadas entre duas datas específicas (ex: entre 2024-01-01 e 2025-01-01).


--11. Listar os funcionários com salário por hora maior que a média da empresa.


--12. Exibir os projetos que têm etapas atribuídas a funcionários com e-mail não informado (NULL).