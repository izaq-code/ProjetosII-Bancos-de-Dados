# 💾 Atividade Prática: Criação de Banco de Dados `al2f`

## 🎯 Objetivo

Nesta atividade, você irá projetar e implementar um banco de dados relacional chamado `al2f`, que simula o funcionamento de uma empresa de tecnologia com clientes, projetos, funcionários e tickets de reclamação.

Você deverá criar:
- O banco de dados
- Todas as tabelas
- Relacionamentos entre as tabelas usando chaves primárias e estrangeiras
- Definir os tipos de dados apropriados para cada coluna

---

## 🧭 Referência: Modelo Lógico

Para te guiar na construção do banco de dados, utilize o **modelo lógico disponível no link abaixo**:

🔗 [Modelo Lógico - GitHub](https://github.com/izaq-code/ProjetosII-Bancos-de-Dados/blob/main/docs/modelo_logico.png)

Esse modelo mostra as entidades, atributos e os relacionamentos entre as tabelas.

---

## ✅ Requisitos

### 🛠 Estrutura do Banco `al2f`

1. O banco deve ser criado com o nome `al2f`.
2. Se já existir um banco com esse nome, ele deve ser excluído.
3. Use o mecanismo `InnoDB` para todas as tabelas (necessário para suportar chaves estrangeiras).

---

## 🔹 Requisitos das Tabelas

### 1. **Cliente**
- ID do cliente (chave primária)
- Nome
- Contato (telefone)

---

### 2. **Projeto**
- ID do projeto (chave primária)
- Caminho para o documento do projeto
- Descrição
- Data de abertura
- Data de fechamento
- Status do projeto
- Diretório do projeto
- ID do cliente (chave estrangeira que referencia a tabela `cliente`)

---

### 3. **Ticket de Reclamação**
- ID do ticket (chave primária)
- Descrição do problema
- Data de abertura
- Data de fechamento
- Status do ticket
- ID do cliente (chave estrangeira)
- ID do projeto (chave estrangeira)

---

### 4. **Cargo**
- Nome do cargo (chave primária)

---

### 5. **Funcionário**
- ID do funcionário (chave primária)
- Nome
- Telefone
- Salário por hora
- Email
- Nome do cargo (chave estrangeira que referencia a tabela `cargo`)

---

### 6. **Etapas do Projeto**
- ID da etapa (chave primária)
- Nome da etapa
- Descrição
- Data de início
- Data fim prevista
- Data fim real
- Status da etapa
- ID do funcionário (chave estrangeira)
- ID do projeto (chave estrangeira)

---

## 🧠 O que você precisa fazer

1. Criar o banco de dados `al2f`.
2. Criar todas as tabelas com base nos requisitos acima.
3. Utilizar corretamente:
   - Tipos de dados adequados para datas, textos e números
   - `AUTO_INCREMENT` quando necessário
   - Chaves primárias e estrangeiras
   - Mecanismo `ENGINE = InnoDB`
4. Garantir que os relacionamentos entre tabelas estejam corretos.

---

## 🛠 Dicas e Materiais de Apoio

### 📘 Comandos SQL
- [SQL CREATE TABLE - W3Schools](https://www.w3schools.com/sql/sql_create_table.asp)
- [Chaves Primárias e Estrangeiras - DevMedia](https://www.devmedia.com.br/sql-primary-key-e-foreign-key/18945/)
- [Tipos de Dados MySQL](https://dev.mysql.com/doc/refman/8.0/en/data-types.html)

### 🎥 Vídeos
- [Curso de SQL - Curso em Vídeo (MySQL)](https://www.youtube.com/watch?v=Ofktsne-utM&list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r)
- [SQL para Iniciantes (CFBCursos)](https://www.youtube.com/watch?v=adIIAEc3Q04&list=PLx4x_zx8csUgQUjExcssR3utb3JIX6Kra)

---

## 🔍 O que é `ENGINE = InnoDB`?

Ao criar uma tabela no MySQL, você pode especificar qual **mecanismo de armazenamento** ela vai utilizar. Esse mecanismo define como os dados serão armazenados, manipulados e protegidos.

O mais utilizado e recomendado é o **InnoDB**, principalmente quando se deseja trabalhar com:
- 🔑 **Chaves estrangeiras (Foreign Keys)** — para manter integridade referencial entre tabelas.
- 🔒 **Bloqueio em nível de linha** — permite que várias transações ocorram ao mesmo tempo, com mais segurança.
- 🔁 **Transações ACID** — garante que suas operações no banco sejam **atômicas**, **consistentes**, **isoladas** e **duráveis**.

Exemplo de uso:

```sql
CREATE TABLE exemplo (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
) ENGINE = InnoDB;
```

### 📘 Documentação oficial:
👉 [InnoDB Storage Engine – MySQL Documentation (versão 8.0)](https://dev.mysql.com/doc/refman/8.0/en/innodb-storage-engine.html)

Essa página explica:
- Como o InnoDB funciona internamente
- Vantagens sobre outros mecanismos como MyISAM
- Boas práticas e recomendações

### 📌 Por que usar o InnoDB neste projeto?

Como nosso banco de dados `al2f` terá **relacionamentos com chaves estrangeiras**, e pode ser ampliado para controle de transações no futuro, o InnoDB é essencial.

**Nunca esqueça:** se não usar `ENGINE = InnoDB`, os relacionamentos com `FOREIGN KEY` não funcionarão corretamente no MySQL!

---

## 📩 Entrega

1. Submeta o script `.sql` com todos os comandos de criação do banco e tabelas.
2. Opcional: capture a tela da execução no MySQL mostrando as tabelas criadas com sucesso.

---

📅 **Prazo de Entrega:** sexta  
📊 **Avaliação:**  
- Estrutura correta do banco e tabelas  
- Nomeação adequada de campos e tabelas  
- Relacionamentos implementados corretamente  
- Utilização adequada de tipos de dados

Boa sorte e mãos à obra! 🚀
```
