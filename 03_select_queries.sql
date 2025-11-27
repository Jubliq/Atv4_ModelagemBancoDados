USE AdotaPet;

-- ============================================
-- 1. Listar todos os animais disponíveis
-- ============================================
SELECT id_animal, nome, especie, idade, status_adocao
FROM ANIMAL
WHERE status_adocao = 'Disponível'
ORDER BY nome ASC;

-- ============================================
-- 2. Buscar adotantes com seus respectivos endereços
-- JOIN (ADOTANTE + ENDERECO)
-- ============================================
SELECT 
    a.id_adotante,
    a.nome AS nome_adotante,
    a.cpf,
    e.rua,
    e.numero,
    e.bairro,
    e.cidade
FROM ADOTANTE a
JOIN ENDERECO e ON a.id_endereco = e.id_endereco

-- ============================================
-- 3. Histórico médico dos animais, com nome do animal
-- JOIN (HISTORICO_MEDICO + ANIMAL)
-- ============================================
SELECT 
    an.nome AS animal,
    h.descricao,
    h.tipo,
    h.data_registro
FROM HISTORICO_MEDICO h
JOIN ANIMAL an ON h.id_animal = an.id_animal
ORDER BY h.data_registro DESC;

-- ============================================
-- 4. Listar adoções com nomes do adotante e do animal
-- JOIN triplo (ADOCAO + ADOTANTE + ANIMAL)
-- ============================================
SELECT 
    ad.id_adocao,
    ad.status,
    ad.data_entrega,
    adot.nome AS adotante,
    an.nome AS animal
FROM ADOCAO ad
JOIN ADOTANTE adot ON ad.id_adotante = adot.id_adotante
JOIN ANIMAL an ON ad.id_animal = an.id_animal
ORDER BY ad.data_entrega DESC;

-- ============================================
-- 5. Listar eventos futuros (LIMIT 2)
-- ============================================
SELECT 
    id_evento,
    nome,
    data_evento,
    local_evento
FROM EVENTO
WHERE data_evento > CURDATE()
ORDER BY data_evento ASC
LIMIT 2;
