---

# **📍 Sobre a Empresa**

A empresa oferece **serviços de automação industrial**, criando soluções para seus clientes. Para isso, adquire **licenças de software** de fornecedores e as revende junto aos projetos. Além disso, oferece **horas de trabalho** dos desenvolvedores para implementar o software no ambiente do cliente. O **setor de vendas** recebe a solicitação do cliente, vende o software e repassa para o **setor de projetos**, onde as demandas são organizadas e gerenciadas. Cada **projeto** possui atributos como nome, descrição e status, com informações detalhadas sobre o custo estimado e orçamento definido, além das datas de início e conclusão.

---

# **📍 Como os Projetos são Gerenciados**

Os projetos são divididos em **sprints**, que são documentadas em etapas do projeto, as quais podem ser gerenciadas em um arquivo com **datas de cada etapa**, **custo estimado**, **detalhamento do que será feito** e o **tempo estimado para cada etapa**. A **etapa do projeto** inclui dados como nome, descrição, datas de início e término (previstas e reais), e o status atual de cada fase. Durante o planejamento, são identificados os **equipamentos do cliente** que interagirão com o software, bem como o **tamanho da fábrica** e a quantidade de telas ou dispositivos que se comunicarão com o sistema. Esses dados são registrados no **projeto**, onde é possível consultar informações detalhadas sobre os custos estimados e o orçamento disponível para cada fase.

---

# **📍 Status do Projeto**

Acompanhando a evolução do trabalho, o **status** de cada projeto varia de acordo com o seu andamento, podendo ser **em andamento**, **esperando por aprovação**, **concluído**, **atrasado**, **feedback** ou **aguardando informações do cliente**. O status é um atributo fundamental na gestão do **projeto**, indicando a fase atual e permitindo o acompanhamento de suas diversas etapas.

---

# **📍 Reclamações e Suporte**

Em caso de problemas com o serviço, os clientes podem abrir **tickets de reclamação**, que ficam registrados no sistema. Cada **ticket** possui um status que pode ser **aberto**, **em andamento**, **aguardando cliente** ou **concluído**, ajudando a gerenciar o progresso das solicitações de suporte. Esses tickets estão associados tanto ao **cliente** quanto ao **projeto**, possibilitando que os responsáveis possam acompanhar a resolução de cada reclamação com base no seu contexto.

---

# **📍 Orçamento e Custos**

O **preço fixo pela hora de trabalho** dos desenvolvedores é definido com base na **entidade Funcionário**, que possui o valor de **salário por hora**. O **cliente** estabelece o **orçamento do projeto**, o qual é registrado no **projeto** como **orcamento_definido**. Durante a execução, custos adicionais como **viagens**, **hospedagem** e **infraestrutura** são enviados ao cliente e registrados como parte do **custo estimado** do projeto, possibilitando o controle financeiro de cada etapa.

---

# **📍 Contratos**

O **blueprint do projeto** funciona como o contrato oficial entre a empresa e o cliente, sendo assinado por ambas as partes. Além disso, para a parte de **suporte**, existe um contrato separado que é registrado na **entidade de documentos do projeto**, mantendo todos os detalhes legais e técnicos do acordo acessíveis para consulta.

---

# **📍 Problemas Atuais**

Atualmente, a empresa enfrenta a **falta de um sistema centralizado** para armazenar os **códigos**, **documentos** e **arquivos** dos projetos, o que leva a uma dispersão das informações nos **repositórios pessoais** dos desenvolvedores. Isso dificulta o acesso e a organização dos dados relacionados aos projetos. Para solucionar esse problema, uma **entidade Documentos do Projeto** pode ser criada para armazenar esses arquivos e organizar as informações em um único lugar, com dados como o **nome do arquivo**, **tipo** e **caminho de armazenamento**. Além disso, a gestão de **tickets de reclamação** através de **email** é ineficiente, e um sistema centralizado pode ajudar a acompanhar o status de cada ticket de maneira mais organizada e eficiente.

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
