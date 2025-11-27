USE AdotaPet;

-- ============================================
-- INSERTS: ENDERECO
-- ============================================
INSERT INTO ENDERECO (rua, numero, bairro, cidade)
VALUES
('Rua das Flores', '120', 'Centro', 'Curitiba'),
('Av. Brasil', '450', 'Jardins', 'São Paulo'),
('Rua das Acácias', '87', 'Campestre', 'Belo Horizonte');

-- ============================================
-- INSERTS: ADOTANTE
-- ============================================
INSERT INTO ADOTANTE (nome, cpf, telefone, email, id_endereco)
VALUES
('Maria Souza', '123.456.789-00', '41 99999-1111', 'maria@gmail.com', 1),
('João Lima', '987.654.321-00', '11 98888-2222', 'joao@gmail.com', 2),
('Beatriz Ramos', '222.333.444-55', '31 97777-3333', 'bia@gmail.com', 3);

-- ============================================
-- INSERTS: VOLUNTARIO
-- ============================================
INSERT INTO VOLUNTARIO (nome, cpf, telefone, email)
VALUES
('Ana Pereira', '111.222.333-44', '41 99999-4444', 'ana@vol.com'),
('Carlos Neves', '555.666.777-88', '41 98888-5555', 'carlos@vol.com');

-- ============================================
-- INSERTS: DISPONIBILIDADE_VOLUNTARIO
-- ============================================
INSERT INTO DISPONIBILIDADE_VOLUNTARIO (id_voluntario, dia_semana, horario_inicio, horario_fim)
VALUES
(1, 'Sábado', '08:00', '12:00'),
(1, 'Domingo', '09:00', '13:00'),
(2, 'Sábado', '13:00', '18:00');

-- ============================================
-- INSERTS: ANIMAL
-- ============================================
INSERT INTO ANIMAL (nome, especie, idade, status_adocao)
VALUES
('Luna', 'Cachorro', 2, 'Disponível'),
('Mingau', 'Gato', 1, 'Adotado'),
('Thor', 'Cachorro', 3, 'Disponível');

-- ============================================
-- INSERTS: HISTORICO MEDICO
-- ============================================
INSERT INTO HISTORICO_MEDICO (id_animal, descricao, data_registro, tipo)
VALUES
(1, 'Vermifugação realizada', '2025-01-10', 'Vermifugação'),
(1, 'Vacina V8 aplicada', '2025-01-15', 'Vacina'),
(2, 'Tratamento de pulgas e carrapatos', '2025-02-02', 'Tratamento');

-- ============================================
-- INSERTS: DOCUMENTOS
-- ============================================
INSERT INTO DOCUMENTO (tipo, caminho_arquivo, descricao, id_animal)
VALUES
('Foto', '/imagens/luna1.png', 'Foto de identificação', 1),
('Laudo Veterinário', '/docs/mingau_laudo.pdf', 'Exame clínico completo', 2),
('Foto', '/imagens/thor.png', 'Foto oficial', 3);

-- ============================================
-- INSERTS: EVENTO
-- ============================================
INSERT INTO EVENTO (nome, data_evento, local_evento, descricao)
VALUES
('Feira de Adoção', '2025-10-15', 'Praça Central', 'Adoção mensal'),
('Mutirão de Resgate', '2025-11-20', 'Parque Verde', 'Ação voluntária'),
('Campanha de Vacinação', '2025-12-02', 'Abrigo Municipal', 'Vacinação gratuita');

-- ============================================
-- INSERTS: ADOCAO
-- ============================================
INSERT INTO ADOCAO (data_entrevista, data_aprovacao, data_entrega, status, id_adotante, id_animal)
VALUES
('2025-10-10', '2025-10-12', '2025-10-15', 'Concluída', 1, 2);
