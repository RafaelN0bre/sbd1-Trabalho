-- --------  << TF_3A_pabloguedes >>  ----------
--
--                    SCRIPT DE POPULA (DML)
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
-- 05/02/2023 => Adicionando Unique key na tabela TELEFONE e CLIENTE
-- 12/02/2023 => Removendo obrigatoriedade de cpf na tabela VENDA
-- ---------------------------------------------------------

USE TF_3A_pabloguedes;

INSERT INTO ENDERECO
	(logradouro, complemento, numero, bairro, cep)
VALUES
	('Av. Parque Aguas Claras', 'Rua 1', 1285, 'Aguas Claras', 71906500),
    ('Av. das Araucarias', 'Rua 18', 28, 'Aguas Claras', 71976281),
    ('QNA 2', 'Rua 1', 14, 'Taguatinga', 72110020),
    ('CNA 2 Praca DI', 'Rua das pitangueiras', 12, 'Taguatinga', 72110030),
    ('SQS 112 Sul', 'Quadra H', 5, 'Asa Sul', 70070020),
    ('SQS 512 Sul', 'Quadra B', 8, 'Asa Sul', 71010224),
    ('CLN 207', 'Quadra J', 3, 'Asa Norte', 71571217),
    ('SQS 113 Sul', 'ap. 701', 2, 'Asa Sul', 71571702),
    ('SQS 416 Sul', 'ap. 313', 1, 'Asa Sul', 72301701),
    ('Sia trecho 4', 'Quadra H', 12, 'Sia', 73310302),
    ('SQN 216 Norte', 'ap. 401', 25, 'Asa Norte', 71100110),
    ('W3 Sul 512', 'ap. 101', 17, 'Asa Sul', 72578290),
    ('SQN 214 Norte', 'ap. 103', 32, 'Asa Norte', 72215051),
    ('W3 Norte 514', 'Loja 5', 10, 'Asa Norte', 71884585),
    ('Sia Trecho 3', 'Loja 105', 1, 'SIA', 71200010),
    ('CCSW 2', 'Bloco A', 2, 'Sudoeste', 71590629),
    ('SQS 402', 'Bloco H', 1, 'Asa Sul', 72500833),
    ('QI 18', 'Bloco B', 20, 'Guara I', 71215000),
    ('SBS 2', 'Bloco A', 2, 'Asa Sul', 70070120),
    ('SQN 713 Norte', 'Bloco G', 1, 'Asa Norte', 71904800),
    
    ('Av. Parque Aguas Claras', 'Rua 5', 1285, 'Aguas Claras', 71906502),
    ('Av. das Araucarias', 'Rua 20', 28, 'Aguas Claras', 71976290),
    ('QNA 2', 'Rua 2', 15, 'Taguatinga', 72110022),
    ('CNA 2 Praca DI', 'Rua das pitangueiras', 20, 'Taguatinga', 72110030),
    ('SQS 112 Sul', 'Quadra A', 5, 'Asa Sul', 70070035),
    ('SQS 512 Sul', 'Quadra B', 12, 'Asa Sul', 71010229),
    ('CLN 207', 'Quadra K', 3, 'Asa Norte', 71571217),
    ('SQS 113 Sul', 'ap. 701', 2, 'Asa Sul', 71571703),
    ('SQS 416 Sul', 'ap. 314', 1, 'Asa Sul', 72301701),
    ('Sia trecho 5', 'Quadra H', 12, 'Sia', 73310312),
    ('SQN 216 Norte', 'ap. 401', 12, 'Asa Norte', 71100115),
    ('W3 Sul 513', 'ap. 101', 17, 'Asa Sul', 72578288),
    ('SQN 214 Norte', 'ap. 103', 25, 'Asa Norte', 72215055),
    ('W3 Norte 514', 'Loja 8', 10, 'Asa Norte', 71884585),
    ('Sia Trecho 2', 'Loja 105', 1, 'SIA', 71200012),
    ('CCSW 2', 'Bloco A', 15, 'Sudoeste', 71590629),
    ('SQS 402', 'Bloco B', 1, 'Asa Sul', 72500833),
    ('QI 20', 'Bloco B', 20, 'Guara I', 71215055),
    ('SBS 3', 'Bloco A', 2, 'Asa Sul', 70070120),
    ('SQN 713 Norte', 'Bloco G', 8, 'Asa Norte', 71904808);
    
INSERT INTO TELEFONE
		(ddd, numeroTelefone)
VALUES
	(061, 983831143),
    (061, 38771640),
    (061, 45657980),
    (061, 981122455),
    (061, 912139392),
    (061, 999334565),
    (061, 38771440),
    (061, 33261640),
    (061, 33457272),
    (061, 998343113),
    (061, 34453345),
    (061, 994991640),
    (061, 38456780),
    (061, 985431143),
    (061, 992209009),
    (061, 30304040),
    (061, 33441290),
    (061, 34861640),
    (061, 32834573),
    (061, 33997879),
    
    (061, 983831144),
    (061, 38771641),
    (061, 45657981),
    (061, 981122444),
    (061, 912139393),
    (061, 999334599),
    (061, 38771433),
    (061, 33261633),
    (061, 33457227),
    (061, 998343112),
    (061, 34453354),
    (061, 994991641),
    (061, 38456781),
    (061, 985431144),
    (061, 992209087),
    (061, 30304030),
    (061, 33441280),
    (061, 34861644),
    (061, 32834572),
    (061, 33997871);
    
    
INSERT INTO PRODUTO
	(nomeProduto, valorUnitario, descricaoProduto)
VALUES
	('Tapioca de Frango', 15.00, 'Tapioca com recheio de frango'),
    ('Tapioca de Carne Seca', 18.00, 'Tapioca com recheio de carne seca'),
    ('Tapioca de Presunto e Queijo', 15.00, 'Tapioca com recheio de presunto e queijo'),
    ('Acai', 10.00, 'Acai puro 300ml'),
    ('Acai c/ banana', 12.00, 'Acai com pedacos de banana 300ml'),
    
    ('Enroladinho de queijo', 15.00, 'Enrolado reacheado com queijo'),
    ('Tapioca de Carne nobre', 25.00, 'Tapioca com recheio de carne nobre'),
    ('Folhado', 15.00, 'Folha de presunto e queijo'),
    ('Acai', 15.00, 'Acai puro 600ml'),
    ('Acai banana e morango', 20.00, 'Acai com pedacos de banana e morango 300ml');
    
    
INSERT INTO FORNECEDOR
	(cnpjFornecedor, nomeFornecedor, idEndereco, idTelefone)
VALUES
	(60156175000114, 'Acai da Benta', 2, 2),
    (76838465000188, 'Frango do Carlos', 1, 1),
    (74848115000177, 'Bebidas Geladas ltda', 3, 3),
    (25666999000133, 'Frutaria Maria', 5, 5),
    (62070384000176, 'Celia Guarnicoes', 4, 4),
    
    (60156175000120, 'Acai da Leticia', 21, 21),
    (76838465000100, 'Ki carnes', 22, 22),
    (74848115000111, 'Acais naturas', 23, 23),
    (25666999000144, 'Pedro suporte', 24, 24),
    (62070384012389, 'Guarnicoes ldta', 25, 25);
    
INSERT INTO LOJA
	(cnpj, nomeLoja, idEndereco, idTelefone)
VALUES
	(67358385000134, 'Acai da Ana matriz', 6, 20),
    (03162477000161, 'Acai Ana unidade 2', 7, 16),
    (55221037000131, 'Maui acai', 8, 17),
    (56504813000173, 'Oakberry', 9, 18),
    (68137361000118, 'Acai da Maria', 10, 19),
    
    (67358385000148, 'Sr. acai', 26, 21),
    (03162477000100, 'Acai natural', 27, 22),
    (55221037000200, 'MegaFrutti', 28, 23),
    (56504813000982, 'Toca do Acai', 29, 24),
    (68137361000525, 'Aloha acai', 30, 25);
    
INSERT INTO CLIENTE
	(cpfCliente, nomeCompleto, dataNascimento, idTelefone, idEndereco, email)
VALUES
	(03233132110, 'Joao Fernandes', '2000-02-10', 6, 11, 'joao@gmail.com'),
    (18531680174, 'Anderson Mota', '1999-06-10', 7, 12, 'anderson@gmail.com'),
    (42407213181, 'Leonardo Pedrosa', '2000-12-15', 8, 13, 'lelecobala@gmail.com'),
    (29518876126, 'Rafael Barros', '2001-02-14', 9, 14, 'rafabarros@gmail.com'),
    (40577346199, 'Denis Nunes', '2005-08-30', 10, 15, 'denaoshow@gmail.com'),
    
    (15974233000, 'Julio Pessati', '2000-02-12', 26, 35, 'julio@gmail.com'),
    (49946932008, 'Anderson Junior', '1999-06-23', 27, 31, 'andersonjr@gmail.com'),
    (58788504000, 'Rafael Brabo', '2000-12-13', 28, 32, 'brabo@gmail.com'),
    (82535756021, 'Luis Gustavo', '2001-02-02', 29, 33, 'lg@gmail.com'),
    (77543707004, 'Diana Prince', '2005-08-20', 30, 34, 'diana@gmail.com');
    
INSERT INTO FUNCIONARIO
	(nomeCompleto, cpfFuncionario, dataContratacao, idEndereco, dataNascimento, cnpjLoja, idTelefone)
VALUES
	('Natan Fernandes', 57696251120, '2021-12-25', 16, '2000-02-10',67358385000134, 6),
    ('Savio Cunha', 42104253110, '2022-01-12', 17, '1999-06-10',67358385000134, 7),
    ('Ana Beatriz da Silva', 46631293154, '2022-12-10', 18, '2000-12-15',67358385000134, 8),
    ('Vitor Coelho', 01381099157, '2020-02-15', 19, '2001-02-14',03162477000161, 9),
    ('Maria Coelho', 26103526116, '2020-02-15', 20, '2005-08-30',03162477000161, 10),
    
    ('Pedro Cunha', 12499166070, '2021-12-25', 36, '2000-02-12',67358385000134, 31),
    ('Priscila Azevedo', 72091493090, '2022-01-12', 37, '1999-06-13',67358385000134, 32),
    ('Mariana Rio', 41070208000, '2022-12-10', 38, '2000-12-20',67358385000134, 33),
    ('Jorge Filho', 04301456082, '2020-02-15', 39, '2001-02-01',03162477000161, 34),
    ('Luis Khalil', 77543707004, '2020-02-15', 40, '2005-08-03',03162477000161, 35);
    
INSERT INTO LOTE
	(dataEntrada, qtdeRecebida, custo, cnpjFornecedor, cpfFuncionario, cnpjLoja)
VALUES
	('2021-10-03', 15, 800.00, 60156175000114, 42104253110, 67358385000134),
    ('2021-10-05', 12, 600.00, 76838465000188, 42104253110, 67358385000134),
    ('2021-10-08', 1, 200.00, 74848115000177, 42104253110, 67358385000134),
    ('2021-10-20', 10, 500.00, 25666999000133, 42104253110, 67358385000134),
    ('2021-11-01', 8, 400.00, 62070384000176, 42104253110, 67358385000134),
    
    ('2021-10-03', 15, 1000.00, 60156175000120, 77543707004, 03162477000161),
    ('2021-10-05', 10, 600.00, 76838465000100, 77543707004, 03162477000161),
    ('2021-10-08', 12, 400.00, 74848115000111, 77543707004, 03162477000161),
    ('2021-10-20', 5, 500.00, 25666999000144, 77543707004, 03162477000161),
    ('2021-11-01', 30, 200.00, 62070384012389, 77543707004, 03162477000161);
    
INSERT INTO INSUMO
	(qtdeEstoque, dataValidade, nomeInsumo, idLote)
VALUES
	(12, '2023-02-10', 'Banana', 1),
    (20, '2023-02-10', 'Morango', 2),
    (10, '2023-04-20', 'Frango', 3),
    (50, '2023-05-05', 'Acai', 4),
    (5, '2023-02-20', 'Massa de tapioca', 5),
    
    (10, '2023-02-10', 'Maca', 6),
    (25, '2023-02-10', 'Pera', 7),
    (2, '2023-04-20', 'Picanha', 8),
    (3, '2023-05-05', 'Folhado', 9),
    (5, '2023-02-20', 'Queijo Minas', 10);
    
    
INSERT INTO VENDA
	(notaFiscal, formaPagamento, cnpjLoja, senha, dataVenda,horaVenda, desconto, cpfCliente, cpfFuncionario)
VALUES
	('0000111144446767000098980000', 'D', 03162477000161, 1, '2022-01-27', '12:00:00', 0.0, 03233132110,57696251120),
    ('000011110909878700098980000', 'D', 03162477000161, 2, '2022-02-27','10:33:00', 0.0, 18531680174,42104253110),
    ('0000111155556767111198980000', 'DB', 03162477000161, 3, '2022-03-27','09:44:21', 0.0, 42407213181,46631293154),
    ('0000111122134343000098980000', 'DB', 03162477000161, 4, '2022-04-27','08:20:58', 0.0, 29518876126,01381099157),
    ('0000111101024348000098980000', 'CR', 03162477000161, 5, '2022-05-27', '11:30:00', 0.1, 40577346199,26103526116),
    
	('0000111144446767000098984444', 'D', 67358385000134, 1, '2022-01-30', '12:00:00', 0.0, 15974233000 ,57696251120),
    ('000011110909878700098984444', 'D', 67358385000134, 2, '2022-02-28','10:33:00', 0.0, 49946932008,42104253110),
    ('0000111155556767111198984444', 'DB', 67358385000134, 3, '2022-03-30','09:44:21', 0.0, 58788504000,46631293154),
    ('0000111122134343000098984444', 'DB', 67358385000134, 4, '2022-04-30','08:20:58', 0.0, 82535756021,01381099157),
    ('0000111101024348000098984444', 'CR', 67358385000134, 5, '2022-05-30', '11:30:00', 0.0, 77543707004,26103526116);
    
    
INSERT INTO CONTROLE_FERIAS
	(dataInicio, dataFim, cpfFuncionario)
VALUES
	('2022-10-10', '2022-10-20', 57696251120),
    ('2022-08-10', '2022-08-20', 42104253110),
    ('2022-07-25', '2022-08-20', 46631293154),
    ('2021-10-10', '2021-10-20', 01381099157),
    ('2021-10-10', '2021-10-20', 26103526116),
    
    ('2022-01-10', '2022-01-20', 12499166070),
    ('2022-02-10', '2022-02-20', 72091493090),
    ('2022-08-25', '2022-09-20', 41070208000),
    ('2021-11-10', '2021-11-20', 04301456082),
    ('2021-12-10', '2021-12-20', 77543707004);
    
INSERT INTO FOLHA_PONTO
	(dataFolha, horaEntrada, horaSaida, cpfFuncionario)
VALUES
	('2022-06-29', '08:00:00', '18:00:00', 57696251120),
    ('2022-06-30', '08:00:00', '18:00:00', 57696251120),
    ('2022-07-01', '08:00:00', '18:00:00', 57696251120),
    ('2022-07-02', '08:00:00', '18:00:00', 57696251120),
    ('2022-07-03', '08:00:00', '18:00:00', 57696251120),
    
    ('2022-08-29', '08:00:00', '18:00:00', 41070208000),
    ('2022-08-30', '08:00:00', '18:00:00', 41070208000),
    ('2022-09-01', '08:00:00', '18:00:00', 41070208000),
    ('2022-09-02', '08:00:00', '18:00:00', 41070208000),
    ('2022-09-03', '08:00:00', '18:00:00', 41070208000);
     
INSERT INTO DEPENDENTE
	(nomeDependente, sexo, dataNascimento, parentesco, cpfFuncionario)
VALUES
	('Anna Pereira', 'F', '2020-02-10', 'filha', 57696251120),
    ('Vitor Coelho Jr', 'M', '2021-02-10', 'filho', 01381099157),
    ('Joao Mota', 'M', '2020-03-15', 'filho', 46631293154),
    ('Julio Resende', 'M', '2022-01-10', 'filho', 42104253110),
    ('Maria Silva', 'F', '2019-03-10', 'filha', 26103526116),
    
    ('Fernanda Castro', 'F', '2020-02-10', 'filha', 12499166070),
    ('Jorge Jesus', 'M', '2021-02-10', 'filho', 72091493090),
    ('Vitor Pereira', 'M', '2020-03-15', 'filho', 41070208000),
    ('Dorival Junior', 'M', '2022-01-10', 'filho', 04301456082),
    ('Luiza Diniz', 'F', '2019-03-10', 'filha', 77543707004);
    
INSERT INTO possui
	(idProduto, idVenda)
VALUES
	(1,1),
    (2,2),
    (1,3),
    (1,4),
    (4,5),
    
    (6,6),
    (7,7),
    (8,8),
    (9,9),
    (10,10);
    
INSERT INTO usa
	(idProduto, idInsumo)
VALUES
	(1,5),
    (4,5),
    (4,4),
    (5,1),
    (5,2),
    
    (6,6),
    (7,7),
    (8,8),
    (9,9),
    (10,10);


    

    
    
    
    
    
    

    
