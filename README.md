# 🐾 AdotaPet – Banco de Dados Relacional  
Projeto acadêmico desenvolvido para modelagem, criação e manipulação de dados utilizando MySQL.

Este repositório contém a implementação completa do banco de dados do sistema **AdotaPet**, incluindo criação de tabelas, povoamento, consultas, atualizações e exclusões. O projeto segue as boas práticas de modelagem, normalização até 3FN e utilização da linguagem SQL

---

## 📌 Objetivo do Projeto

Realizar a implementação física do banco de dados baseada no modelo lógico desenvolvido nas etapas anteriores.

---

## 🛠 Tecnologias Utilizadas

- **MySQL 8+**
- **MySQL Workbench**
- SQL (DDL e DML)
- Git + GitHub

---

## 🧩 Modelagem Utilizada

A modelagem foi construída seguindo:

- **1FN, 2FN e 3FN**  
- Definição de entidades, atributos e relacionamentos  
- Tabelas criadas com chaves primárias, estrangeiras e restrições  
- Divisão de atributos não atômicos em novas entidades (ex.: histórico médico e disponibilidade do voluntário)

Entidades principais:

- ANIMAL  
- ADOTANTE  
- ENDERECO  
- VOLUNTARIO  
- DISPONIBILIDADE_VOLUNTARIO  
- HISTORICO_MEDICO  
- DOCUMENTO  
- EVENTO  
- ADOCAO  

---

## 📘 Detalhes dos Scripts

### 1️⃣ **01_create_tables.sql**
Cria o banco `AdotaPet` e todas as tabelas normalizadas, com suas chaves estrangeiras.

### 2️⃣ **02_insert_data.sql**
Povoa todas as tabelas com dados coerentes, garantindo integridade referencial.

### 3️⃣ **03_select_queries.sql**
Contém consultas SQL usando:
- `WHERE`
- `ORDER BY`
- `LIMIT`
- `JOIN` (incluindo múltiplas tabelas)

### 4️⃣ **04_updates_and_deletes.sql**
Inclui operações de:
- Atualização de registros com `UPDATE`
- Remoção de registros com `DELETE`

---

## 📜 Licença

Este projeto é acadêmico e pode ser reutilizado para fins de estudo.

---

## ✨ Autor

**Matheus Gonçalves Stein**  
Projeto desenvolvido para a disciplina de Banco de Dados — Uninter.  
