--------  << TF_Tema3_PabloGuedes >>  ----------
--
--                SCRIPT POPULA (DML)
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

INSERT INTO ENDERECO
	(logradouro, complemento, numero, bairro, cep, estado, cidade)
VALUES
	('Av. Parque Aguas Claras', 'Rua 1', 1285, 'Aguas Claras', 71906500, 'DF', 'Brasília'),
    ('Av. das Araucarias', 'Rua 18', 28, 'Aguas Claras', 71976281, 'DF', 'Brasília'),
    ('QNA 2', 'Rua 1', 14, 'Taguatinga', 72110020, 'DF', 'Brasília'),
    ('CNA 2 Praca DI', 'Rua das pitangueiras', 12, 'Taguatinga', 72110030, 'DF', 'Brasília'),
    ('SQS 112 Sul', 'Quadra H', 5, 'Asa Sul', 70070020, 'DF', 'Brasília'),
    ('SQS 512 Sul', 'Quadra B', 8, 'Asa Sul', 71010224, 'DF', 'Brasília'),
    ('CLN 207', 'Quadra J', 3, 'Asa Norte', 71571217, 'DF', 'Brasília'),
    ('SQS 113 Sul', 'ap. 701', 2, 'Asa Sul', 71571702, 'DF', 'Brasília'),
    ('SQS 416 Sul', 'ap. 313', 1, 'Asa Sul', 72301701, 'DF', 'Brasília'),
    ('Sia trecho 4', 'Quadra H', 12, 'Sia', 73310302, 'DF', 'Brasília'),
    ('SQN 216 Norte', 'ap. 401', 25, 'Asa Norte', 71100110, 'DF', 'Brasília'),
    ('W3 Sul 512', 'ap. 101', 17, 'Asa Sul', 72578290, 'DF', 'Brasília'),
    ('SQN 214 Norte', 'ap. 103', 32, 'Asa Norte', 72215051, 'DF', 'Brasília'),
    ('W3 Norte 514', 'Loja 5', 10, 'Asa Norte', 71884585, 'DF', 'Brasília'),
    ('Sia Trecho 3', 'Loja 105', 1, 'SIA', 71200010, 'DF', 'Brasília'),
    ('CCSW 2', 'Bloco A', 2, 'Sudoeste', 71590629, 'DF', 'Brasília'),
    ('SQS 402', 'Bloco H', 1, 'Asa Sul', 72500833, 'DF', 'Brasília'),
    ('QI 18', 'Bloco B', 20, 'Guara I', 71215000, 'DF', 'Brasília'),
    ('SBS 2', 'Bloco A', 2, 'Asa Sul', 70070120, 'DF', 'Brasília'),
    ('SQN 713 Norte', 'Bloco G', 1, 'Asa Norte', 71904800, 'DF', 'Brasília'),   
    ('Av. Parque Aguas Claras', 'Rua 5', 1285, 'Aguas Claras', 71906502, 'DF', 'Brasília'),
    ('Av. das Araucarias', 'Rua 20', 28, 'Aguas Claras', 71976290, 'DF', 'Brasília'),
    ('QNA 2', 'Rua 2', 15, 'Taguatinga', 72110022, 'DF', 'Brasília'),
    ('CNA 2 Praca DI', 'Rua das pitangueiras', 20, 'Taguatinga', 72110030, 'DF', 'Brasília'),
    ('SQS 112 Sul', 'Quadra A', 5, 'Asa Sul', 70070035, 'DF', 'Brasília'),
    ('SQS 512 Sul', 'Quadra B', 12, 'Asa Sul', 71010229, 'DF', 'Brasília'),
    ('CLN 207', 'Quadra K', 3, 'Asa Norte', 71571217, 'DF', 'Brasília'),
    ('SQS 113 Sul', 'ap. 701', 2, 'Asa Sul', 71571703, 'DF', 'Brasília'),
    ('SQS 416 Sul', 'ap. 314', 1, 'Asa Sul', 72301701, 'DF', 'Brasília'),
    ('Sia trecho 5', 'Quadra H', 12, 'Sia', 73310312, 'DF', 'Brasília'),
    ('SQN 216 Norte', 'ap. 401', 12, 'Asa Norte', 71100115, 'DF', 'Brasília'),
    ('W3 Sul 513', 'ap. 101', 17, 'Asa Sul', 72578288, 'DF', 'Brasília'),
    ('SQN 214 Norte', 'ap. 103', 25, 'Asa Norte', 72215055, 'DF', 'Brasília'),
    ('W3 Norte 514', 'Loja 8', 10, 'Asa Norte', 71884585, 'DF', 'Brasília'),
    ('Sia Trecho 2', 'Loja 105', 1, 'SIA', 71200012, 'DF', 'Brasília'),
    ('CCSW 2', 'Bloco A', 15, 'Sudoeste', 71590629, 'DF', 'Brasília'),
    ('SQS 402', 'Bloco B', 1, 'Asa Sul', 72500833, 'DF', 'Brasília'),
    ('QI 20', 'Bloco B', 20, 'Guara I', 71215055, 'DF', 'Brasília'),
    ('SBS 3', 'Bloco A', 2, 'Asa Sul', 70070120, 'DF', 'Brasília'),
    ('SQN 713 Norte', 'Bloco G', 8, 'Asa Norte', 71904808, 'DF', 'Brasília');    

INSERT INTO PRODUTO
	(nomeProduto, valorUnitarioAtual, descricaoProduto)
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
    
INSERT INTO LOJA
	(cnpjLoja, nomeLoja, idEndereco, idTelefone, dataAbertura)
VALUES
	(67358385000134, 'Acai da Ana matriz', 6, 20, '1982-04-15'),
    (03162477000161, 'Acai Ana unidade 2', 7, 16, '1999-07-10'),
    (55221037000131, 'Maui acai', 8, 17, '1992-12-12'),
    (56504813000173, 'Oakberry', 9, 18, '2000-02-10'),
    (68137361000118, 'Acai da Maria', 10, 19, '2001-02-17'),
    (67358385000148, 'Sr. acai', 16, 21, '2003-11-01'),
    (03162477000100, 'Acai natural', 17, 22, '2004-08-22'),
    (55221037000200, 'MegaFrutti', 18, 23, '2007-02-18'),
    (56504813000982, 'Toca do Acai', 19, 24, '2012-11-05'),
    (68137361000525, 'Aloha acai', 20, 25, '2020-09-14');
    
INSERT INTO FUNCIONARIO
	(nomeCompleto, cpfFuncionario, dataContratacao, idEndereco, dataNascimento, cnpjLoja, idTelefone, status, dataDemissao)
VALUES
	('Natan Fernandes', 57696251120, '2021-12-25', 26, '2000-02-10',67358385000134, 6, 'ativo', NULL),
    ('Savio Cunha', 42104253110, '2022-01-12', 27, '1999-06-10',67358385000134, 7, 'ativo', NULL),
    ('Ana Beatriz da Silva', 46631293154, '2022-12-10', 28, '2000-12-15',67358385000134, 8, 'ativo', NULL),
    ('Vitor Coelho', 01381099157, '2020-02-15', 29, '2001-02-14',03162477000161, 9, 'ativo', NULL),
    ('Maria Coelho', 26103526116, '2020-02-15', 30, '2005-08-30',03162477000161, 10, 'inativo', '2022-02-02'),   
    ('Pedro Cunha', 12499166070, '2021-12-25', 36, '2000-02-12',67358385000134, 31, 'ativo', NULL),
    ('Priscila Azevedo', 72091493090, '2022-01-12', 37, '1999-06-13',67358385000134, 32, 'ativo', NULL),
    ('Mariana Rio', 41070208000, '2022-12-10', 38, '2000-12-20',67358385000134, 33, 'ativo', NULL),
    ('Jorge Filho', 04301456082, '2020-02-15', 39, '2001-02-01',03162477000161, 34, 'ativo', NULL),
    ('Luis Khalil', 77543707004, '2020-02-15', 40, '2005-08-03',03162477000161, 35, 'inativo', '2023-02-16');

INSERT INTO VENDA
	(notaFiscal, formaPagamento, cnpjLoja, dataVenda, horaVenda, cpfNaNota, cpfFuncionario, tipoVenda, desconto)
VALUES
	('0000111144446767000098980000', 'dinheiro' , 03162477000161, '2022-01-27', '12:00:00', 03233132110, 57696251120, 'retirada', NULL),
    ('000011110909878700098980000', 'debito', 03162477000161, '2022-02-27','10:33:00', 18531680174, 42104253110, 'presencial', NULL),
    ('0000111155556767111198980000', 'pix', 03162477000161, '2022-03-27','09:44:21', 42407213181, 46631293154, 'delivery', NULL),
    ('0000111122134343000098980000', 'dinheiro', 03162477000161, '2022-04-27','08:20:58', 29518876126, 01381099157, 'retirada', NULL),
    ('0000111101024348000098980000', 'credito', 03162477000161, '2022-05-27', '11:30:00', 40577346199, 26103526116, 'delivery', 1.5),
	('0000111144446767000098984444', 'debito', 67358385000134, '2022-01-30', '12:00:00', 15974233000, 57696251120, 'retirada', NULL),
    ('000011110909878700098984444', 'dinheiro', 67358385000134, '2022-02-28','10:33:00', 49946932008, 42104253110, 'presencial',  2.00),
    ('0000111155556767111198984444', 'credito', 67358385000134, '2022-03-30','09:44:21', 58788504000, 46631293154, 'delivery', NULL),
    ('0000111122134343000098984444', 'debito', 67358385000134, '2022-04-30','08:20:58', 82535756021, 01381099157, 'presencial', NULL),
    ('0000111101024348000098984444', 'dinheiro', 67358385000134, '2022-05-30', '11:30:00', 77543707004, 26103526116, 'presencial', 1.50);

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

-- atualizado
INSERT INTO PAGAMENTOFUNCIONARIO (cpfFuncionario, valorTotal, dataPagamento) VALUES
	(42104253110, 1250.00, '2023-02-12'),
	(42104253110, 1250.00, '2023-01-12'),
	(42104253110, 1250.00, '2022-12-12'),
	(42104253110, 1374.00, '2022-11-12'),
	(42104253110, 1412.00, '2022-10-12'),
	(01381099157, 1374.00, '2023-02-12'),
	(57696251120, 1374.00, '2023-02-12'),
	(72091493090, 1374.00, '2023-02-12'),
	(77543707004, 1412.00, '2023-02-12'),
	(41070208000, 1374.00, '2023-02-12');

-- atualizado
INSERT INTO TIPOMANUTENCAO(tipoManutencao) VALUES
	('encanamento'),
	('ceramica'),
	('maquinas de impressao'),
	('Maquinas De preparo'),
	('Liquidificador'),
	('Telhado'),
	('Parquinho'),
	('Eletrico'),
	('Portoes'),
	('Armarios');

-- atualizado
INSERT INTO MANUTENCAO(cnpjLoja,dataManutencao,idTipoManutencao,valorManutencao) VALUES
	(03162477000161,'2022-03-04',1,251.00),
    (67358385000134,'2022-03-05',2,252.00),
    (55221037000131,'2022-03-06',3,253.00),
    (55221037000131,'2022-03-07',4,254.00),
    (55221037000131,'2022-03-08',5,255.00),
    (03162477000161,'2022-03-09',6,256.00),
    (03162477000161,'2022-03-10',7,257.00),
    (03162477000161,'2022-03-11',8,258.00),
    (68137361000118,'2022-03-12',9,259.00),
    (68137361000118,'2022-03-13',10,260.00);

INSERT INTO CONTROLEFERIAS
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

INSERT INTO FOLHAPONTO
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

-- atualizado 
INSERT INTO gerencia
    (cnpjLoja,cpfFuncionario)
VALUES
    (67358385000134, 57696251120),
    (03162477000161, 42104253110),
    (55221037000131, 46631293154),
    (56504813000173, 01381099157),
    (68137361000118, 26103526116),
    (67358385000148, 12499166070),
    (03162477000100, 72091493090),
    (55221037000200, 41070208000),
    (56504813000982, 04301456082),
    (68137361000525, 77543707004);

INSERT INTO INSUMO
	(nomeInsumo)
VALUES
	('Banana'),
    ('Morango'),
    ('Frango'),
    ('Acai'),
    ('Massa de tapioca'),
    ('Maca'),
    ('Pera'),
    ('Picanha'),
    ('Folhado'),
    ('Queijo Minas'),
    ('orégano');

-- ATUALIZADO
INSERT INTO ESTOQUE(idInsumo, unidadeMedida, cnpjLoja, quantidadeAtual) VALUES
	(4, 'kg', 03162477000161, 1),
	(5, 'kg', 03162477000161, 2),
	(7, 'kg', 03162477000161, 3),
	(3, 'kg', 55221037000131, 4),
	(4, 'kg', 55221037000131, 1),
	(8, 'kg', 55221037000131, 2),
	(9, 'kg', 03162477000161, 3),
	(3, 'kg', 03162477000161, 4),
	(1, 'kg', 03162477000161, 5),
	(11, 'g', 68137361000118, 5);

-- atualizado0
INSERT INTO ABASTECIMENTO(qtdInsumo,precoUnitario,dataAbastecimento,idInsumo,cnpjLoja) VALUES
	(3,  50.00, '2023-02-03', 4, 03162477000161),
	(4,  5.00,  '2023-02-02', 5, 03162477000161),
	(5,  60.00, '2023-02-13', 7, 03162477000161),
	(6,  70.00, '2023-02-13', 3, 55221037000131),
	(7,  80.00, '2023-02-02', 4, 55221037000131),
	(8,  90.00, '2023-02-01', 8, 55221037000131),
	(9,  40.00, '2023-02-05', 9, 03162477000161),
	(30, 20.00, '2023-02-06', 3, 03162477000161),
	(34, 30.00, '2023-02-07', 1, 03162477000161),
	(32, 33.00, '2023-02-08', 11, 68137361000118);

-- atualizado
INSERT INTO PEDIDOFORNECEDOR(dataPedido,qtdInsumo,dataEntrega,precoUnitario,cnpjFornecedor,idInsumo,cnpjLoja) VALUES
	('2022-03-03', 3, '2022-03-04', 50.00, 60156175000114, 4, 03162477000161),
	('2022-03-04', 4, '2022-03-05', 51.00, 76838465000188, 5, 03162477000161),
	('2022-03-05', 5, '2022-03-06', 52.00, 74848115000177, 7, 03162477000161),
	('2022-03-06', 6, '2022-03-07', 53.00, 25666999000133, 3, 55221037000131),
	('2022-03-07', 7, '2022-03-08', 54.00, 62070384000176, 4, 55221037000131),
	('2022-03-08', 8, '2022-03-09', 55.00, 60156175000120, 8, 55221037000131),
	('2022-03-09', 9, '2022-03-10', 56.00, 76838465000100, 9, 03162477000161),
	('2022-03-10', 10, '2022-03-11', 70.00, 74848115000111, 3, 03162477000161),
	('2022-03-11', 11, '2022-03-12', 58.00, 25666999000144, 1, 03162477000161),
	('2022-03-12', 12, '2022-03-13', 59.00, 62070384012389, 11, 68137361000118);

-- atualizado
INSERT INTO fornece (idInsumo, cnpjFornecedor) VALUES
    (1, 76838465000188),
    (2, 60156175000114),
    (3, 74848115000177),
    (4, 62070384000176),
    (5, 25666999000133),
    (6, 60156175000120),
    (7, 76838465000100),
    (8, 74848115000111),
    (9, 25666999000144),
    (10, 62070384012389);

INSERT INTO possui
	(idProduto, idVenda, quantidade, valorUnitarioVenda)
VALUES
	(1, 1, 1, 15.00),
    (2, 2, 2, 18.00),
    (1, 3, 3, 15.0),
    (1, 4, 1, 10.00),
    (4, 5, 2, 12.00),
    (6, 6, 3, 15.00),
    (7, 7, 1, 25.00),
    (8, 8, 2, 15.00),
    (9, 9, 3, 15.00),
    (10, 10, 1, 20.00);
