--------  << TF_Tema3_PabloGuedes >>  ----------
--
--                SCRIPT DE CONTROLE
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
--         => 05 Usuarios
--
-- ---------------------------------------------------------

CREATE ROLE 'administrador'@'localhost';
    
CREATE ROLE 'gerente'@'localhost';

CREATE ROLE 'funcionario'@'localhost';

-- Criando usuarios do projeto

CREATE USER Ana
	IDENTIFIED BY 'Aninha123@';
    
CREATE USER Pablo
	IDENTIFIED BY 'pablo2023';
    
CREATE USER Roger
	IDENTIFIED BY 'regor2023';
    
CREATE USER Fernanda
	IDENTIFIED BY 'adnanref2023';
    
CREATE USER Carlos
	IDENTIFIED BY 'solrac2023';
    
-- Privilegios do admin
GRANT ALL PRIVILEGES
	ON TF_Tema3_PabloGuedes.*
    TO 'administrador'@'localhost';
    
-- Privilegios do gerente
GRANT SELECT, UPDATE, INSERT
	ON TF_Tema3_PabloGuedes.*
    TO 'gerente'@'localhost';
    
-- Privilegios do funcionario
GRANT SELECT, INSERT
	ON TF_Tema3_PabloGuedes.FUNCIONARIO
    TO 'funcionario'@'localhost';
    
GRANT SELECT, INSERT
	ON TF_Tema3_PabloGuedes.LOJA
    TO 'funcionario'@'localhost';
    
GRANT SELECT, INSERT
	ON TF_Tema3_PabloGuedes.PRODUTO
    TO 'funcionario'@'localhost';
    
GRANT SELECT, INSERT
	ON TF_Tema3_PabloGuedes.TELEFONE
    TO 'funcionario'@'localhost';

GRANT SELECT, INSERT
	ON TF_Tema3_PabloGuedes.ENDERECO
    TO 'funcionario'@'localhost';
    
GRANT SELECT, INSERT
	ON TF_Tema3_PabloGuedes.VENDA
    TO 'funcionario'@'localhost';
    
GRANT SELECT, INSERT
	ON TF_Tema3_PabloGuedes.FOLHAPONTO
    TO 'funcionario'@'localhost';
    
-- Designando papeis para os usuarios

GRANT 'administrador'@'localhost' TO Ana;
GRANT 'gerente'@'localhost' TO Pablo;
GRANT 'funcionario'@'localhost' TO Roger;
GRANT 'funcionario'@'localhost' TO Fernanda;
GRANT 'funcionario'@'localhost' TO Carlos;