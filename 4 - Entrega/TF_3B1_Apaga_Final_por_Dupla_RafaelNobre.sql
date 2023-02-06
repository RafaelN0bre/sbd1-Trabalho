--------  << TF_3B1_RAFAELNOBRE >>  ----------
--
--                SCRIPT DE REMOCAO (DDL)
--
-- Data Criacao ...........: 25/01/2023
-- Autor(es) ..............: Rafael de Medeiros Nobre 
--                           Rodrigo Edmar Wright Dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_3B1_RAFAELNOBRE
--
-- Ultimas Alteracoes
-- 
-- PROJETO => 01 Base de Dados
--         => 23 Tabelas
--
-- ---------------------------------------------------------

USE TF_3B1_RAFAELNOBRE;

DROP TABLE fornece;
DROP TABLE contem;
DROP TABLE exerce;
DROP TABLE trabalha;
DROP TABLE telefone;
DROP TABLE ferias;
DROP TABLE MANUTENCAO;
DROP TABLE TIPOMANUTENCAO;
DROP TABLE ABASTECIMENTO;
DROP TABLE PEDIDOFORNECEDOR;
DROP TABLE CLIENTE;
DROP TABLE PAGAMENTOFUNCIONARIO;
DROP TABLE FORNECEDOR;
DROP TABLE VENDA;
DROP TABLE TIPOVENDA;
DROP TABLE FORMAPAGAMENTO;
DROP TABLE ATIVIDADE;
DROP TABLE OPCAOCARDAPIO;
DROP TABLE ESTOQUE;
DROP TABLE LOJA;
DROP TABLE FUNCIONARIO;
DROP TABLE ENDERECO;
DROP TABLE PRODUTO;

DROP USER operador_caixa;
DROP USER operador_estoque;
DROP USER admin_acai;

DROP ROLE estoque;
DROP ROLE caixa;
DROP ROLE administrador;
