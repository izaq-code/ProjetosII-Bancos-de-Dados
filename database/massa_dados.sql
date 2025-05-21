USE al2f;

-- Inserir dados em status
INSERT INTO status (nome_status) VALUES
('Aberto'),
('Em andamento'),
('Concluído'),
('Fechado'),
('Cancelado');

-- Inserir dados em cargo
INSERT INTO cargo (nome_cargo) VALUES
('Desenvolvedor'),
('Gerente de Projetos'),
('Analista de Qualidade'),
('Designer'),
('Suporte Técnico');

-- Inserir dados em cliente
INSERT INTO cliente (contato, nome) VALUES
('31988887777', 'Empresa Alpha Ltda'),
('31999996666', 'TechBeta Solutions'),
('31911112222', 'Gamma Inc.'),
('31922223333', 'Delta Corp.'),
('31933334444', 'Omega Systems');

-- Inserir dados em funcionario
INSERT INTO funcionario (nome, telefone, salario_hora, email, nome_cargo) VALUES
('João Silva', '31988880001', 45.00, 'joao@empresa.com', 'Desenvolvedor'),
('Maria Oliveira', '31988880002', 60.00, 'maria@empresa.com', 'Gerente de Projetos'),
('Carlos Pereira', '31988880003', 50.00, 'carlos@empresa.com', 'Analista de Qualidade'),
('Ana Souza', '31988880004', 40.00, 'ana@empresa.com', 'Designer'),
('Lucas Rocha', '31988880005', 35.00, 'lucas@empresa.com', 'Suporte Técnico');

-- Inserir dados em projeto 
INSERT INTO projeto (caminho_doc, descricao, data_abertura, data_fechamento, status, diretorio_projeto, id_cliente) VALUES
('https://github.com/empresa/vendas/docs/requisitos.docx', 'Sistema de Vendas Online', '2024-01-10', NULL, 'Em andamento', 'https://github.com/empresa/vendas', 1),
('https://github.com/empresa/delivery/docs/escopo.docx', 'Aplicativo de Delivery', '2024-02-15', NULL, 'Aberto', 'https://github.com/empresa/delivery', 2),
('https://github.com/empresa/educacional/docs/projeto_final.docx', 'Plataforma Educacional', '2023-11-01', '2024-03-20', 'Concluído', 'https://github.com/empresa/educacional', 3),
('https://github.com/empresa/rh/docs/analise.docx', 'Sistema de RH', '2024-03-01', NULL, 'Em andamento', 'https://github.com/empresa/rh', 4),
('https://github.com/empresa/site/docs/design_inicial.docx', 'Website Institucional', '2024-04-10', NULL, 'Aberto', 'https://github.com/empresa/site', 5);

-- Inserir dados em ticket_reclamacao
INSERT INTO ticket_reclamacao (descricao, data_abertura, data_fechamento, status, id_cliente, id_projeto) VALUES
('Erro na tela de login', '2024-05-01', NULL, 'Aberto', 1, 1),
('Falha ao gerar relatório', '2024-05-02', NULL, 'Em andamento', 2, 2),
('Layout desconfigurado', '2024-05-03', '2024-05-10', 'Concluído', 3, 3),
('Problema no cadastro de funcionários', '2024-05-05', NULL, 'Aberto', 4, 4),
('Menu não responde', '2024-05-06', NULL, 'Aberto', 5, 5);

-- Inserir dados em etapa_projeto
INSERT INTO etapa_projeto (nome, descricao, data_inicio, data_fim_prevista, data_fim_real, status, id_funcionario, id_projeto) VALUES
('Levantamento de Requisitos', 'Entrevistas e reuniões com stakeholders', '2024-01-15', '2024-01-30', '2024-01-28', 'Concluído', 2, 1),
('Desenvolvimento Backend', 'Criação das APIs', '2024-02-01', '2024-03-15', NULL, 'Em andamento', 1, 1),
('Design UI/UX', 'Prototipagem das telas', '2024-04-01', '2024-04-15', '2024-04-14', 'Concluído', 4, 5),
('Testes Funcionais', 'Verificação dos requisitos implementados', '2024-05-01', '2024-05-20', NULL, 'Aberto', 3, 2),
('Implantação', 'Entrega do sistema ao cliente', '2024-06-01', '2024-06-10', NULL, 'Aberto', 2, 4);
