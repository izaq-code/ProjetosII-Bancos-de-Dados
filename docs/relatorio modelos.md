# **Organização das Informações e Modelo de Dados**

## **📍 Sobre a Empresa**

- A empresa presta **serviços de automação industrial (software)**.
- Compra a licença do software de um fornecedor e revende junto ao projeto para o cliente.
- Vende também a **hora de trabalho** dos desenvolvedores.
- O setor de **vendas** recebe a solicitação do cliente, vende o software e repassa a demanda para o **setor de projetos**.
- Os projetos envolvem **banco de dados, código e design/interface** conforme a necessidade do cliente.

## **📍 Como os Projetos são Gerenciados**

- Trabalham com **sprints**, que são documentadas em um **arquivo Word**, contendo:
  - **Datas de cada etapa** do projeto.
  - **Custo estimado**, incluindo licença, cloud, banco de dados e infraestrutura.
  - **Detalhamento do que será feito**.
  - **Tempo estimado para cada etapa**.
- O planejamento envolve:
  - Identificação dos **equipamentos do cliente** que interagirão com o software.
  - **Tamanho da fábrica** e **quantidade de telas** e equipamentos que se comunicarão com o software.
- O cliente fornece **todo o equipamento necessário**, a empresa entrega apenas **o software e a mão de obra**.

## **📍 Status do Projeto**

Os projetos possuem **status**, como:

- **Em andamento**
- **Esperando por aprovação**
- **Concluído**
- **Atrasado**
- **Feedback**
- **Aguardando informações do cliente**

## **📍 Reclamações e Suporte**

- Clientes podem abrir **tickets** de reclamação.
- Status de um ticket pode ser:
  - **Aberto**
  - **Em andamento**
  - **Aguardando cliente**
  - **Concluído**

## **📍 Orçamento e Custos**

- A empresa tem um **preço fixo pela hora de trabalho**.
- O cliente define o orçamento do projeto.
- Custos recorrentes como **viagens, escritório, luz, hospedagem** são enviados ao cliente.
- O cliente avalia se o projeto **compensa financeiramente** antes da aprovação.

## **📍 Contratos**

- O **blueprint do projeto** serve como contrato, sendo assinado por ambas as partes.
- Há também um contrato específico para **suporte**.

## **📍 Problemas Atuais**

- **Falta de um sistema centralizado** para armazenar códigos, documentos e arquivos do projeto.
- Os dados dos clientes ficam dispersos nos **repositórios pessoais** dos desenvolvedores.
- Reclamações e tickets são gerenciados via **email**, sem um sistema estruturado.
- Todos na empresa possuem **acesso irrestrito** aos projetos.

---

# **📊 Previsão de Entidades e Atributos**

## **1️⃣ Cliente**

📌 Representa as empresas que contratam os serviços.

```yaml
- id_cliente (PK)
- nome
- cnpj
- endereco
- contato
- email
- telefone
- orcamento_disponivel
```

## **2️⃣ Projeto**

📌 Representa um projeto desenvolvido para um cliente.

```yaml
- id_projeto (PK)
- id_cliente (FK)
- nome
- descricao
- dt_inicio
- dt_prev_conclusao
- dt_real_conclusao
- status
- custo_estimado
- orcamento_definido
- responsavel (FK)
```

## **3️⃣ Etapa do Projeto**

📌 Representa cada fase do desenvolvimento de um projeto.

```yaml
- id_etapa (PK)
- id_projeto (FK)
- nome
- descricao
- dt_inicio
- dt_fim_prev
- dt_fim_real
- status
```

## **4️⃣ Funcionário**

📌 Representa os funcionários que desenvolvem os projetos.

```yaml
- id_funcionario (PK)
- nome
- email
- telefone
- cargo
- salario_hora
```

## **5️⃣ Ticket de Reclamação**

📌 Representa reclamações ou pedidos de suporte abertos pelos clientes.

```yaml
- id_ticket (PK)
- id_cliente (FK)
- id_projeto (FK)
- descricao
- dt_abertura
- dt_fechamento
- status
```

## **6️⃣ Licença de Software**

📌 Representa as licenças de software adquiridas para os projetos.

```yaml
- id_licenca (PK)
- id_software (FK)
- custo
- dt_compra
- dt_validade
```

## **7️⃣ Software**

📌 Representa as licenças de software adquiridas para os projetos.

```yaml
- id_sofeware (PK)
- id_projeto (FK)
- fornecedor
- nome_software
```

## **8️⃣ Documentos do Projeto**

📌 Representa documentos anexados aos projetos.

```yaml
- id_documento (PK)
- id_projeto (FK)
- nome_arquivo
- tipo
- caminho_arquivo
```

---
