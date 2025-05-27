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
('31933334444', 'Omega Systems'),
('31943345555', 'Nexus Solutions'),
('31958856666', 'Vortex Tecnologia'),
('31965567777', 'Pinnacle Group'),
('31988878777', 'Synergy Corp'),
('31977799999', 'Vertex Innovations');

-- Inserir dados em funcionario
INSERT INTO funcionario (nome, telefone, salario_hora, email, nome_cargo) VALUES
('João Silva', '31988880001', 45.00, 'joao@empresa.com', 'Desenvolvedor'),
('Maria Oliveira', '31988880002', 60.00, 'maria@empresa.com', 'Gerente de Projetos'),
('Carlos Pereira', '31988880003', 50.00, 'carlos@empresa.com', 'Analista de Qualidade'),
('Ana Souza', '31988880004', 40.00, 'ana@empresa.com', 'Designer'),
('Lucas Rocha', '31988880005', 35.00, 'lucas@empresa.com', 'Suporte Técnico'),
('Julia Lima', '31988880011', 42.00, 'fernanda@empresa.com', 'Desenvolvedor'),
('Rafael Martins', '31988880012', 58.00, 'rafael@empresa.com', 'Gerente de Projetos'),
('Beatriz Santos', '31988880013', 48.00, 'beatriz@empresa.com', 'Analista de Qualidade'),
('Kaio Barros', '31988880014', 38.00, 'thiago@empresa.com', 'Designer'),
('Patrícia Ferreira', '31988880015', 36.00, 'patricia@empresa.com', 'Suporte Técnico');

-- Inserir dados em projeto 
INSERT INTO projeto (caminho_doc, descricao, data_abertura, data_fechamento, status, diretorio_projeto, id_cliente) VALUES
('https://github.com/empresa/vendas/docs/requisitos.docx', 'Sistema de Vendas Online', '2024-01-10', NULL, 'Em andamento', 'https://github.com/empresa/vendas', 1),
('https://github.com/empresa/delivery/docs/escopo.docx', 'Aplicativo de Delivery', '2024-02-15', NULL, 'Aberto', 'https://github.com/empresa/delivery', 2),
('https://github.com/empresa/educacional/docs/projeto_final.docx', 'Plataforma Educacional', '2023-11-01', '2024-03-20', 'Concluído', 'https://github.com/empresa/educacional', 3),
('https://github.com/empresa/rh/docs/analise.docx', 'Sistema de RH', '2024-03-01', NULL, 'Em andamento', 'https://github.com/empresa/rh', 4),
('https://github.com/empresa/site/docs/design_inicial.docx', 'Website Institucional', '2024-04-10', NULL, 'Aberto', 'https://github.com/empresa/site', 5),
('https://github.com/empresa/logistica/docs/escopo.docx', 'Sistema de Logística', '2024-04-15', NULL, 'Aberto', 'https://github.com/empresa/logistica', 11),
('https://github.com/empresa/comercial/docs/plano.docx', 'Sistema Comercial', '2024-05-01', NULL, 'Em andamento', 'https://github.com/empresa/comercial', 12),
('https://github.com/empresa/financeiro/docs/relatorio.docx', 'Sistema Financeiro', '2024-03-20', '2024-05-10', 'Concluído', 'https://github.com/empresa/financeiro', 13),
('https://github.com/empresa/suporte/docs/manual.docx', 'Sistema de Suporte Técnico', '2024-05-05', NULL, 'Aberto', 'https://github.com/empresa/suporte', 14),
('https://github.com/empresa/marketing/docs/campanha.docx', 'Plataforma de Marketing', '2024-04-30', NULL, 'Cancelado', 'https://github.com/empresa/marketing', 15);

-- Inserir dados em ticket_reclamacao
INSERT INTO ticket_reclamacao (descricao, data_abertura, data_fechamento, status, id_cliente, id_projeto) VALUES
('Erro na tela de login', '2024-05-01', NULL, 'Aberto', 1, 1),
('Falha ao gerar relatório', '2024-05-02', NULL, 'Em andamento', 2, 2),
('Layout desconfigurado', '2024-05-03', '2024-05-10', 'Concluído', 3, 3),
('Problema no cadastro de funcionários', '2024-05-05', NULL, 'Aberto', 4, 4),
('Menu não responde', '2024-05-06', NULL, 'Aberto', 5, 5),
('https://github.com/empresa/logistica/docs/escopo.docx', 'Sistema de Logística', '2024-04-15', NULL, 'Aberto', 'https://github.com/empresa/logistica', 11),
('https://github.com/empresa/comercial/docs/plano.docx', 'Sistema Comercial', '2024-05-01', NULL, 'Em andamento', 'https://github.com/empresa/comercial', 12),
('https://github.com/empresa/financeiro/docs/relatorio.docx', 'Sistema Financeiro', '2024-03-20', '2024-05-10', 'Concluído', 'https://github.com/empresa/financeiro', 13),
('https://github.com/empresa/suporte/docs/manual.docx', 'Sistema de Suporte Técnico', '2024-05-05', NULL, 'Aberto', 'https://github.com/empresa/suporte', 14),
('https://github.com/empresa/marketing/docs/campanha.docx', 'Plataforma de Marketing', '2024-04-30', NULL, 'Cancelado', 'https://github.com/empresa/marketing', 15);

-- Inserir dados em etapa_projeto
INSERT INTO etapa_projeto (nome, descricao, data_inicio, data_fim_prevista, data_fim_real, status, id_funcionario, id_projeto) VALUES
('Levantamento de Requisitos', 'Entrevistas e reuniões com stakeholders', '2024-01-15', '2024-01-30', '2024-01-28', 'Concluído', 2, 1),
('Desenvolvimento Backend', 'Criação das APIs', '2024-02-01', '2024-03-15', NULL, 'Em andamento', 1, 1),
('Design UI/UX', 'Prototipagem das telas', '2024-04-01', '2024-04-15', '2024-04-14', 'Concluído', 4, 5),
('Testes Funcionais', 'Verificação dos requisitos implementados', '2024-05-01', '2024-05-20', NULL, 'Aberto', 3, 2),
('Implantação', 'Entrega do sistema ao cliente', '2024-06-01', '2024-06-10', NULL, 'Aberto', 2, 4),
('Planejamento', 'Definição do escopo e recursos', '2024-04-20', '2024-05-05', '2024-05-03', 'Concluído', 13, 11),
('Desenvolvimento Frontend', 'Criação das interfaces', '2024-05-06', '2024-06-15', NULL, 'Em andamento', 11, 12),
('Testes de Integração', 'Testar funcionalidades integradas', '2024-05-20', '2024-06-10', NULL, 'Aberto', 12, 13),
('Documentação', 'Elaboração dos manuais', '2024-06-01', '2024-06-20', NULL, 'Aberto', 15, 14),
('Deploy', 'Implantação em produção', '2024-06-15', '2024-06-25', NULL, 'Aberto', 15, 14);
