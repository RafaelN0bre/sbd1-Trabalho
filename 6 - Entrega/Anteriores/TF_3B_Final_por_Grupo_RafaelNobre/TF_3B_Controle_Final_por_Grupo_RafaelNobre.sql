--------  << TF_3B_RAFAELNOBRE >>  ----------
--
--                SCRIPT CONTROLE (DDL e DCL)
--
-- Data Criacao ...........: 13/02/2023
-- Autor(es) ..............: Pablo Guilherme de Jesus Batista Silva
-- ........................: Paulo Henrique de Oliveira Rezende
-- ........................: Rafael de Medeiros Nobre
-- ........................: Rafael Fernandes Amancio
-- ........................: Rodrigo Carvalho dos Santos
-- ........................: Rodrigo Edmar Wright Dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_3B_RAFAELNOBRE
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

-- criação de roles

CREATE ROLE IF NOT EXISTS 'adm', 'caixa', 'estoque';

-- concessão de privilégios

GRANT ALL PRIVILEGES ON TF_3B_RAFAELNOBRE TO adm;
GRANT SELECT, INSERT ON TF_3B_RAFAELNOBRE.OPCAOCARDAPIO TO caixa;
GRANT SELECT, INSERT ON TF_3B_RAFAELNOBRE.contem TO caixa;
GRANT SELECT, INSERT ON TF_3B_RAFAELNOBRE.VENDA TO caixa;
GRANT SELECT, INSERT, DELETE, UPDATE ON TF_3B_RAFAELNOBRE.ESTOQUE TO estoque;
GRANT SELECT, INSERT, DELETE, UPDATE ON TF_3B_RAFAELNOBRE.PRODUTO TO estoque;
GRANT SELECT, INSERT, DELETE, UPDATE ON TF_3B_RAFAELNOBRE.ABASTECIMENTO TO estoque;

-- criação de usuarios

CREATE USER 'ADM'
    IDENTIFIED BY 'AdmAcai2023';
    GRANT adm TO ADM WITH ADMIN OPTION;

CREATE USER 'PO'
    IDENTIFIED BY 'POPASS';
    GRANT adm TO PO;

CREATE USER 'ENCARREGADO_LOJA'
    IDENTIFIED BY 'ENCARREGADOPASS';
    GRANT adm TO ENCARREGADO_LOJA;

CREATE USER 'ENCARREGADO'
    IDENTIFIED BY 'ENCARREGADOPASS';
    GRANT caixa TO ENCARREGADO WITH ADMIN OPTION;

CREATE USER 'CAIXA2'
    IDENTIFIED BY 'CaixaLoja2';
    GRANT caixa TO CAIXA2;

CREATE USER 'CAIXA3'
    IDENTIFIED BY 'CaixaLoja3';
    GRANT caixa TO CAIXA3;

CREATE USER 'GERENTE_ESTOQUE'
    IDENTIFIED BY 'GERENTEESTOQUEPASS';
    GRANT estoque TO GERENTE_ESTOQUE WITH ADMIN OPTION;

CREATE USER 'ESTOQUE_SISTEMA'
    IDENTIFIED BY 'SYS.PASS';
    GRANT estoque TO ESTOQUE_SISTEMA;

CREATE USER 'ESTOQUE'
    IDENTIFIED BY '123estoque';
    GRANT estoque TO ESTOQUE;
