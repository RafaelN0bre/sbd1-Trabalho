-- --------  << TF_3A_pabloguedes >>  ----------
--
--                    SCRIPT DE CONTROLE
--
-- Data Criacao ...........: 04/02/2023
-- Autor(es) ..............: Vitor Diniz Pagani Vieira Ribeiro - 180132385, Sara Campos - 170045269, Vitor Eduardo Kühl Rodrigues - 190118288, Pablo Christianno Silva Guedes - 200042416
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_3A_pabloguedes
--
-- PROJETO => 01 Base de Dados
--         => 15 Tabelas
-- 		   => 03 Papeis 
--         => 05 Usuarios

-- Ultimas alterações:
-- 04/02/2023 => Criando novas tabelas de FOLHA_PONTO, INSUMO, CONTROLE_PONTO
-- 12/02/2023 => Adicionando novos funcionarios
-- ---------------------------------------------------------

-- Criando perfis do projeto

CREATE ROLE 'administrador'@'localhost';
    
CREATE ROLE 'gerente'@'localhost';

CREATE ROLE 'funcionario'@'localhost';
		
-- Criando usuarios do projeto

CREATE USER Ana
	IDENTIFIED BY 'Aninha123';
    
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
	ON TF_3A_pabloguedes.*
    TO 'administrador'@'localhost';
    
-- Privilegios do gerente
GRANT SELECT, UPDATE, INSERT
	ON TF_3A_pabloguedes.*
    TO 'gerente'@'localhost';
    
-- Privilegios do funcionario
GRANT SELECT, INSERT
	ON TF_3A_pabloguedes.VENDA
    TO 'funcionario'@'localhost';
    
GRANT SELECT, INSERT
	ON TF_3A_pabloguedes.LOTE
    TO 'funcionario'@'localhost';
    
GRANT SELECT, INSERT
	ON TF_3A_pabloguedes.ENDERECO
    TO 'funcionario'@'localhost';
    
GRANT SELECT, INSERT
	ON TF_3A_pabloguedes.TELEFONE
    TO 'funcionario'@'localhost';

GRANT SELECT, INSERT
	ON TF_3A_pabloguedes.CLIENTE
    TO 'funcionario'@'localhost';
    
GRANT SELECT, INSERT
	ON TF_3A_pabloguedes.INSUMO
    TO 'funcionario'@'localhost';
    
-- Designando papeis para os usuarios

GRANT 'administrador'@'localhost' TO Ana;
GRANT 'gerente'@'localhost' TO Pablo;
GRANT 'funcionario'@'localhost' TO Roger;
GRANT 'funcionario'@'localhost' TO Fernanda;
GRANT 'funcionario'@'localhost' TO Carlos;