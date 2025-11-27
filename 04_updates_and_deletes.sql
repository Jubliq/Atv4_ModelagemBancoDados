USE AdotaPet;

-- ============================================
-- UPDATE (Alterações de dados)
-- ============================================

-- 1. Atualizar status de um animal
UPDATE ANIMAL
SET status_adocao = 'Adotado'
WHERE id_animal = 1;

-- 2. Atualizar telefone de um adotante
UPDATE ADOTANTE
SET telefone = '41 90000-0000'
WHERE id_adotante = 1;

-- 3. Atualizar o local de um evento
UPDATE EVENTO
SET local_evento = 'Ginásio Municipal'
WHERE id_evento = 1;

-- ============================================
-- DELETE (Exclusões de dados)
-- ============================================

-- 4. Remover um documento associado a um animal
DELETE FROM DOCUMENTO
WHERE id_documento = 1;

-- 5. Excluir uma faixa de disponibilidade de voluntário
DELETE FROM DISPONIBILIDADE_VOLUNTARIO
WHERE id_disponibilidade = 2;

-- 6. Excluir um evento
DELETE FROM EVENTO
WHERE id_evento = 3;
