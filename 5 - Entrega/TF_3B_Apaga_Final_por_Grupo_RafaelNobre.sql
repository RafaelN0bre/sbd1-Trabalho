--------  << USE TF_3B_RAFAELNOBRE >>  ----------
--
--                SCRIPT DE REMOCAO (DDL)
--
-- Data Criacao ...........: 13/02/2023
-- Autor(es) ..............: Pablo Guilherme de Jesus Batista Silva
-- ........................: Paulo Henrique de Oliveira Rezende
-- ........................: Rafael de Medeiros Nobre
-- ........................: Rafael Fernandes Amancio
-- ........................: Rodrigo Carvalho dos Santos
-- ........................: Rodrigo Edmar Wright Dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: USE TF_3B_RAFAELNOBRE
--
-- Ultimas Alteracoes
-- 
-- PROJETO => 01 Base de Dados
--         => 18 Tabelas
--         => 03 Roles
--         => 03 Usarios
--
-- ---------------------------------------------------------

USE TF_3B_RAFAELNOBRE;


DROP TABLE gerencia;
DROP TABLE pontoDeControle;
DROP TABLE fornece;
DROP TABLE contem;


DROP TABLE telefone;
DROP TABLE ferias;
DROP TABLE MANUTENCAO;
DROP TABLE TIPOMANUTENCAO;
DROP TABLE ABASTECIMENTO;
DROP TABLE PEDIDOFORNECEDOR;


DROP TABLE ESTOQUE;
DROP TABLE PAGAMENTOFUNCIONARIO;
DROP TABLE FORNECEDOR;
DROP TABLE VENDA;


DROP TABLE FUNCIONARIO;
DROP TABLE OPCAOCARDAPIO;
DROP TABLE LOJA;
DROP TABLE PRODUTO;

DROP USER ESTOQUE;
DROP USER ESTOQUE_SISTEMA;
DROP USER GERENTE_ESTOQUE;
DROP USER CAIXA3;
DROP USER CAIXA2;
DROP USER ENCARREGADO;
DROP USER ENCARREGADO_LOJA;
DROP USER PO;
DROP USER ADM;

DROP ROLE adm;
DROP ROLE caixa;
DROP ROLE estoque;