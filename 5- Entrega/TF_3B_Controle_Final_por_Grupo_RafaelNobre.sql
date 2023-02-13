--------  << TF_3B1_RAFAELNOBRE >>  ----------
--
--                SCRIPT CONTROLE (DDL e DCL)
--
-- Data Criacao ...........: 05/02/2023
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

CREATE ROLE IF NOT EXISTS 'administrador', 'caixa', 'estoque';

GRANT ALL ON TF_3B1_RAFAELNOBRE.* TO 'administrador';
GRANT SELECT ON TF_3B1_RAFAELNOBRE.OPCAOCARDAPIO TO 'caixa';
GRANT INSERT ON TF_3B1_RAFAELNOBRE.VENDA TO 'caixa';
GRANT SELECT, UPDATE ON TF_3B1_RAFAELNOBRE.ESTOQUE TO 'estoque';

-- administrador
CREATE USER admin_acai
IDENTIFIED BY 'V[oQ7F(=bE';
GRANT 'administrador' TO 'admin_acai';

-- caixa
CREATE USER operador_caixa
IDENTIFIED BY 'caxx@1233';
GRANT 'caixa' TO 'operador_caixa';

-- estoque
CREATE USER operador_estoque
IDENTIFIED BY 'etq!333';
GRANT 'estoque' TO 'operador_estoque';

FLUSH PRIVILEGES;