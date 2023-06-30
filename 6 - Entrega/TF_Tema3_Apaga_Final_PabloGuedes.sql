--------  << TF_Tema3_PabloGuedes >>  ----------
--
--                SCRIPT DE DELECAO (DDL)
--
-- Data Criacao ...........: 15/02/2023
-- Autor(es) ..............: Pablo Guilherme de Jesus Batista Silva
-- ........................: Paulo Henrique de Oliveira Rezende
-- ........................: Rafael de Medeiros Nobre
-- ........................: Rafael Fernandes Amancio
-- ........................: Vitor Diniz Pagani Vieira Ribeiro
-- ........................: Sara Campos
-- ........................: Vitor Eduardo Kühl Rodrigues
-- ........................: Pablo Christianno Silva Guedes
-- ........................: Rodrigo Carvalho dos Santos
-- ........................: Rodrigo Edmar Wright Dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_Tema3_PabloGuedes
--
-- PROJETO => 01 Base de Dados
--         => 19 Tabelas
--         => 03 Roles
--         => 05 Usarios
--
-- ---------------------------------------------------------

USE TF_Tema3_PabloGuedes;

DROP TABLE fornece;
DROP TABLE PEDIDOFORNECEDOR;
DROP TABLE ABASTECIMENTO;
DROP TABLE ESTOQUE;
DROP TABLE INSUMO;
DROP TABLE possui;
DROP TABLE gerencia;
DROP TABLE FOLHAPONTO;
DROP TABLE CONTROLEFERIAS;
DROP TABLE MANUTENCAO;
DROP TABLE TIPOMANUTENCAO;
DROP TABLE PAGAMENTOFUNCIONARIO;
DROP TABLE FORNECEDOR;
DROP TABLE VENDA;
DROP TABLE FUNCIONARIO;
DROP TABLE LOJA;
DROP TABLE PRODUTO;
DROP TABLE ENDERECO;
DROP TABLE TELEFONE;

DROP USER Ana;
DROP USER Pablo;
DROP USER Roger;
DROP USER Fernanda; 
DROP USER Carlos;

DROP ROLE 'administrador'@'localhost';
DROP ROLE 'gerente'@'localhost';
DROP ROLE 'funcionario'@'localhost';

