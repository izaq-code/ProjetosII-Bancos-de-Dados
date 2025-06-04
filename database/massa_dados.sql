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
INSERT INTO cliente (contato, orcamento_disponivel, nome) VALUES
('31988887777', 5000.00, 'Empresa Alpha Ltda'),
('31999996666', 7500.50, 'TechBeta Solutions'),
('31911112222', 6200.00, 'Gamma Inc.'),
('31922223333', 4100.75, 'Delta Corp.'),
('31933334444', 9800.90, 'Omega Systems'),
('31944445555', 3000.00, 'Nova Era Tech'),
('31955556666', 8700.30, 'VisionWare Solutions'),
('31966667777', 9100.00, 'AlphaCode Devs'),
('31977778888', 15000.00, 'SkyNet AI'),
('31988889999', 7200.10, 'CloudWave Corp.'),
('31943345555', 8600.00, 'Nexus Solutions'),
('31958856666', 6950.00, 'Vortex Tecnologia'),
('31965567777', 8450.20, 'Pinnacle Group'),
('31988878777', 3800.00, 'Synergy Corp'),
('31977799999', 9300.00, 'Vertex Innovations'),
('31999990000', 50000.00, 'Empresa Alpha'),
('31988881111', 75000.00, 'Empresa Beta'),
('31977772222', 30000.00, 'Empresa Gama'),
('31966663333', 60000.00, 'Empresa Delta'),
('31955554444', 45000.00, 'Empresa Épsilon');



-- Inserir dados em funcionario
INSERT INTO funcionario (nome, telefone, salario_hora, email, nome_cargo) VALUES
('João Silva', '31988880001', 45.00, 'joao@empresa.com', 'Desenvolvedor'),
('Maria Oliveira', '31988880002', 60.00, 'maria@empresa.com', 'Gerente de Projetos'),
('Carlos Pereira', '31988880003', 50.00, 'carlos@empresa.com', 'Analista de Qualidade'),
('Ana Souza', '31988880004', 40.00, 'ana@empresa.com', 'Designer'),
('Lucas Rocha', '31988880005', 35.00, 'lucas@empresa.com', 'Suporte Técnico'),
('Bruno Costa', '31988880006', 55.00, 'bruno@empresa.com', 'Desenvolvedor'),
('Fernanda Lima', '31988880007', 65.00, 'fernanda@empresa.com', 'Gerente de Projetos'),
('Ricardo Alves', '31988880008', 48.00, 'ricardo@empresa.com', 'Analista de Qualidade'),
('Juliana Mota', '31988880009', 42.00, 'juliana@empresa.com', 'Designer'),
('Thiago Martins', '31988880010', 38.00, 'thiago@empresa.com', 'Suporte Técnico'),
('Julia Lima', '31988880011', 42.00, 'fernanda@empresa.com', 'Desenvolvedor'),
('Rafael Martins', '31988880012', 58.00, 'rafael@empresa.com', 'Gerente de Projetos'),
('Beatriz Santos', '31988880013', 48.00, 'beatriz@empresa.com', 'Analista de Qualidade'),
('Kaio Barros', '31988880014', 38.00, 'thiago@empresa.com', 'Designer'),
('Patrícia Ferreira', '31988880015', 36.00, 'patricia@empresa.com', 'Suporte Técnico'),
('Thiago Melo', '31987654331', 50.00, 'thiago@empresa.com', 'Desenvolvedor'),
('Patrícia Xavier', '31987654332', 60.00, 'patricia@empresa.com', 'Gerente de Projetos'),
('Diego Fernandes', '31987654333', 45.00, 'diego@empresa.com', 'Analista de Qualidade'),
('Camila Ribeiro', '31987654334', 55.00, 'camila@empresa.com', 'Designer'),
('Rodrigo Pires', '31987654335', 40.00, 'rodrigo@empresa.com', 'Suporte Técnico'),
('Pires', '31987654335', 20.00, NULL , 'Designer');
-- Inserir dados em projeto 
INSERT INTO projeto (caminho_doc, descricao, data_abertura, data_fechamento, status, diretorio_projeto, id_cliente) VALUES
('https://github.com/empresa/vendas/docs/requisitos.docx', 'Sistema de Vendas Online', '2024-01-10', NULL, 'Em andamento', 'https://github.com/empresa/vendas', 1),
('https://github.com/empresa/delivery/docs/escopo.docx', 'Aplicativo de Delivery', '2024-02-15', NULL, 'Aberto', 'https://github.com/empresa/delivery', 2),
('https://github.com/empresa/educacional/docs/projeto_final.docx', 'Plataforma Educacional', '2023-11-01', '2024-03-20', 'Concluído', 'https://github.com/empresa/educacional', 3),
('https://github.com/empresa/rh/docs/analise.docx', 'Sistema de RH', '2024-03-01', NULL, 'Em andamento', 'https://github.com/empresa/rh', 4),
('https://github.com/empresa/site/docs/design_inicial.docx', 'Website Institucional', '2024-04-10', NULL, 'Aberto', 'https://github.com/empresa/site', 5),
('https://github.com/empresa/erp/docs/doc_erp.docx', 'Sistema ERP Completo', '2024-05-01', NULL, 'Em andamento', 'https://github.com/empresa/erp', 6),
('https://github.com/empresa/appfinanceiro/docs/requisitos_financeiro.docx', 'App Financeiro Pessoal', '2024-05-05', NULL, 'Aberto', 'https://github.com/empresa/appfinanceiro', 7),
('https://github.com/empresa/saudeai/docs/proposta.docx', 'Plataforma Saúde AI', '2024-05-10', NULL, 'Aberto', 'https://github.com/empresa/saudeai', 8),
('https://github.com/empresa/rede_social/docs/redesocial.docx', 'Rede Social Corporativa', '2024-05-12', NULL, 'Em andamento', 'https://github.com/empresa/rede_social', 9),
('https://github.com/empresa/cloud/docs/infraestrutura.docx', 'Infraestrutura em Nuvem', '2024-05-15', NULL, 'Aberto', 'https://github.com/empresa/cloud', 10),
('https://github.com/empresa/logistica/docs/escopo.docx', 'Sistema de Logística', '2024-04-15', NULL, 'Aberto', 'https://github.com/empresa/logistica', 11),
('https://github.com/empresa/comercial/docs/plano.docx', 'Sistema Comercial', '2024-05-01', NULL, 'Em andamento', 'https://github.com/empresa/comercial', 12),
('https://github.com/empresa/financeiro/docs/relatorio.docx', 'Sistema Financeiro', '2024-03-20', '2024-05-10', 'Concluído', 'https://github.com/empresa/financeiro', 13),
('https://github.com/empresa/suporte/docs/manual.docx', 'Sistema de Suporte Técnico', '2024-05-05', NULL, 'Aberto', 'https://github.com/empresa/suporte', 14),
('https://github.com/empresa/marketing/docs/campanha.docx', 'Plataforma de Marketing', '2024-04-30', NULL, 'Cancelado', 'https://github.com/empresa/marketing', 15),
('/docs/proj1.pdf', 'Sistema de Vendas', '2024-01-10', NULL, 'Aberto', '/dir/proj1', 1),
('/docs/proj2.pdf', 'Aplicativo Móvel', '2024-02-15', NULL, 'Em andamento', '/dir/proj2', 2),
('/docs/proj3.pdf', 'Site Institucional', '2024-03-01', NULL, 'Concluído', '/dir/proj3', 3),
('/docs/proj4.pdf', 'Sistema de Estoque', '2024-03-10', NULL, 'Aberto', '/dir/proj4', 1),
('/docs/proj5.pdf', 'Plataforma EAD', '2024-04-01', NULL, 'Cancelado', '/dir/proj5', 2);


-- Inserir dados em ticket_de_suporte
INSERT INTO ticket_de_suporte (descricao, data_abertura, data_fechamento, status, id_cliente, id_projeto) VALUES
('Erro na tela de login', '2024-05-01', NULL, 'Aberto', 1, 1),
('Falha ao gerar relatório', '2024-05-02', NULL, 'Em andamento', 2, 2),
('Layout desconfigurado', '2024-05-03', '2024-05-10', 'Concluído', 3, 3),
('Problema no cadastro de funcionários', '2024-05-05', NULL, 'Aberto', 4, 4),
('Menu não responde', '2024-05-06', NULL, 'Aberto', 5, 5),
('Erro ao salvar cadastro', '2024-05-11', NULL, 'Aberto', 6, 6),
('Botão de exportar não funciona', '2024-05-12', NULL, 'Em andamento', 7, 7),
('Gráficos não aparecem no dashboard', '2024-05-13', NULL, 'Aberto', 8, 8),
('Não é possível adicionar novos usuários', '2024-05-14', NULL, 'Aberto', 9, 9),
('Falha na autenticação OAuth', '2024-05-15', NULL, 'Aberto', 10, 10),
('Erro ao carregar dashboard', '2024-05-07', NULL, 'Aberto', 11, 11),
('Sistema lento durante consultas', '2024-05-08', NULL, 'Em andamento', 12, 12),
('Problemas com autenticação', '2024-05-09', '2024-05-15', 'Concluído', 13, 13),
('Falha no envio de notificações', '2024-05-10', NULL, 'Aberto', 14, 14),
('Relatório com dados incorretos', '2024-05-11', NULL, 'Aberto', 15, 15),
('Erro no login', '2024-05-01', NULL, 'Aberto', 1, 1),
('Página não carrega', '2024-05-02', NULL, 'Em andamento', 2, 2),
('Bug no relatório', '2024-05-03', NULL, 'Concluído', 3, 3),
('Dúvida sobre uso', '2024-05-04', NULL, 'Aberto', 1, 4),
('Problema no cadastro', '2024-05-05', NULL, 'Fechado', 2, 5);

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
('Deploy', 'Implantação em produção', '2024-06-15', '2024-06-25', NULL, 'Aberto', 15, 14),
('Planejamento', 'Definir escopo', '2024-03-10', '2024-03-20', NULL, 'Aberto', 1, 3),
('Execução', 'Implementação', '2024-03-21', '2024-04-10', NULL, 'Em andamento', 2, 3),
('Revisão', 'Avaliação do projeto', '2024-04-11', '2024-04-20', NULL, 'Fechado', 3, 3),
('Infraestrutura', 'Configuração de servidores', '2024-04-01', '2024-04-10', NULL, 'Aberto', 6, 4),
('Lançamento', 'Divulgação ao cliente', '2024-04-11', '2024-04-15', NULL, 'Concluído', 21, 5);

