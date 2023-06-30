--------  << USE TF_3B_RAFAELNOBRE >>  ----------
--
--                SCRIPT POPULA (DML)
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

INSERT INTO PRODUTO(nomeProduto) VALUES
	('Açai'),
	('Banana'),
	('Frango Desfiado'),
	('Granola'),
	('Kiwi'),
	('Leite Condensado'),
	('Leite em Pó'),
	('Massa de Tapioca'),
	('MMs'),
	('Morango');

INSERT INTO LOJA(dataAbertura, cnpjLoja, cep, estado, cidade, bairro, logradouro) 
VALUES
	('2017-11-27', 20616382000190, 71827645, 'DF', 'Brasília', 'Riacho Fundo I', 'Chácara 06'),
	('2018-07-15', 99880529000104, 72150306, 'DF', 'Brasília', 'Taguatinga Norte', 'Quadra QNL 3 Conjunto F'),
	('2019-04-12', 83818936000151, 71515800, 'DF', 'Brasília', 'Setor de Habitações Individuais Norte', 'Quadra SHIN QI 11 Conjunto 10'),
	('2019-08-18', 42853332000169, 70331560, 'DF', 'Brasília', 'Asa Sul', 'Quadra EQS 503/504'),
	('2020-01-10', 01779113000108, 21825140, 'RJ', 'Rio de Janeiro', 'Bangu', 'Rua Jundiai'),
	('2020-09-02', 87827021000163, 29211122, 'ES', 'Guarapari', 'Bela Vista', 'Rua Alfredo Chaves'),
	('2021-02-13', 36057542000148, 93290240, 'RS', 'Esteio', 'Santo Inácio', 'Avenida Governador Ernesto Dornelles'),
	('2021-06-01', 09505400000123, 35302460, 'MG', 'Caratinga', 'Zacarias', 'Rua Sucupira'),
	('2022-12-09', 00550632000129, 40450640, 'BA', 'Salvador', 'Uruguai', 'Rua Araújo Bulcão'),
	('2023-03-20', 00550632000130, 02871080, 'SP', 'São Paulo', 'Jardim Ondina', 'Rua Montes Pirineus');

INSERT INTO OPCAOCARDAPIO (nomeOpcao, valorAtual, descricao) VALUES
	('Açai Copo 200ml', 6.50, 'Açai com Diversas Opções de Complementos'),
	('Açai Copo 350ml', 10.0, 'Açai com Diversas Opções de Complementos'),
	('Açai Tigela 500ml', 15.00, 'Açai com Diversas Opções de Complementos'),
	('Açai Barca 1L', 25.00, 'Açai com Diversas Opções de Complementos'),
	('Açai Rodízio', 50.00, 'Açai com Diversas Opções de Complementos'),
	('Tapioca Recheada com Frango', 7.00, null),
	('Tapioca Recheada com Banana', 7.00, null),
	('Tapioca Recheada com Morango', 7.00, null),
	('Tapioca Recheada com Kiwi', 7.00, null),
	('Tapioca Recheada com Leite Condensado', 5.00, null);

INSERT INTO VENDA(cpfNaNotaCliente, nfc_e, tipoVenda, dataVenda, codLoja, formaPagamento) VALUES
	(40177648007, 63555935412689558401147285564897568823721234 , 'presencial', '2023-02-02', 1, 'dinheiro'),
	(null, 63555935412689558401147285564897568823721235, 'presencial', '2022-01-01', 1, 'dinheiro'),
	(88548510005, 63555935412689558401147285564897568823721236, 'delivery', '2022-02-02', 2, 'credito'),
	(07042946057, 63555935412689558401147285564897568823721237, 'delivery', '2022-03-03', 2, 'debito'),
	(null, 63555935412689558401147285564897568823721238, 'presencial', '2022-04-04', 3, 'pix'),
	(null, 63555935412689558401147285564897568823721239, 'presencial', '2022-05-05', 3, 'dinheiro'),
	(null, 63555935412689558401147285564897568823721240, 'presencial', '2022-06-06', 4, 'pix'),
	(17046913030, 63555935412689558401147285564897568823721241, 'retirada', '2022-07-07', 4, 'dinheiro'),
	(70237748070, 63555935412689558401147285564897568823721242, 'retirada', '2022-11-11', 5, 'credito'),
	(81503206017, 63555935412689558401147285564897568823721243, 'delivery', '2023-01-01', 5, 'debito');

INSERT INTO ESTOQUE(quantidadeAtual,unidadeMedida,codProduto,codLoja) VALUES
	(4,'kg',1,1),
	(5,'kg',2,2),
	(7,'kg',3,3),
	(3,'kg',4,4),
	(4,'kg',5,5),
	(8,'kg',6,6),
	(9,'kg',7,7),
	(3,'kg',8,8),
	(1,'kg',9,9),
	(8,'kg',10,10);


INSERT INTO ABASTECIMENTO(qtdProduto,preco,dataAbastecimento,codProduto,codLoja) VALUES
	(3,50.00,'2023-02-03',1,1),
	(4,5.00,'2023-02-02',2,2),
	(5,60.00,'2023-02-13',3,3),
	(6,70.00,'2023-02-13',4,4),
	(7,80.00,'2023-02-02',5,5),
	(8,90.00,'2023-02-01',6,6),
	(9,40.00,'2023-02-05',7,7),
	(30,20.00,'2023-02-06',8,8),
	(34,30.00,'2023-02-07',9,9),
	(32,33.00,'2023-02-08',10,10);

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

INSERT INTO MANUTENCAO(data,valor,codLoja,tipoManutencao) VALUES
	('2023-01-16',250.00,1,'encanamento'),
	('2023-01-15',255.00,2,'ceramica'),
	('2023-01-14',260.00,3,'maquinas de impressao'),
	('2023-01-13',290.00,4,'Maquinas De preparo'),
	('2023-01-12',257.00,5,'Telhado'),
	('2023-01-11',253.00,6,'Liquidificador'),
	('2023-01-10',255.00,7,'Parquinho'),
	('2023-01-09',252.00,8,'Eletrico'),
	('2023-01-08',253.00,9,'Portoes'),
	('2023-01-06',240.00,10,'Armarios');

INSERT INTO FORNECEDOR(nomeFornecedor,email,cpf_cnpjFornecedor) VALUES
	('Ana Beatriz','anaBeatriz@gmail.com',02233588741),
	('Serjão Berranteiro','Serjao@gmail.com',02333588741),
	('Ednaldo Pereira','Ed@gmail.com',02233588541),
	('Manoel Gomes','Man@gmail.com',02233588747),
	('Jailson Gomes','aJai@gmail.com',02233583741),
	('Ana Maria Braga','Braga@gmail.com',02277588741),
	('Erick Jaquin','Erick@gmail.com',02233589041),
	('Seu Jorge','Jorg@gmail.com',02233588742),
	('Péricles','Pericles@gmail.com',02233588743),
	('Vandor Risoli','Vandor@gmail.com',32156489765);

INSERT INTO PEDIDOFORNECEDOR(dataPedido,qtdProduto,dataEntrega,preco,idPedidoFornecedor,cpf_cnpjFornecedor,codProduto,codLoja) VALUES
	('2022-03-03',3,'2022-03-04',50.00,1,02233588741,1,1),
	('2022-03-04',4,'2022-03-05',51.00,2,02333588741,2,2),
	('2022-03-05',5,'2022-03-06',52.00,3,02233588541,3,3),
	('2022-03-06',6,'2022-03-07',53.00,4,02233588747,4,4),
	('2022-03-07',7,'2022-03-08',54.00,5,02233583741,5,5),
	('2022-03-08',8,'2022-03-09',55.00,6,02277588741,6,6),
	('2022-03-09',9,'2022-03-10',56.00,7,02233589041,7,7),
	('2022-03-10',10,'2022-03-11',70.00,8,02233588743,8,8),
	('2022-03-11',11,'2022-03-12',58.00,9,02233588742,9,9),
	('2022-03-12',12,'2022-03-13',59.00,10,32156489765,10,10);

INSERT INTO FUNCIONARIO(cpfFuncionario,nomeCompleto,dataContratacao,dataNascimento,telefoneCelular,email,salarioFixo,cep,codLoja) VALUES
	(08156349100,'Jose da silva','2022-01-01','2002-04-10',61982749147,'joseSilva@gmail.com',1250.00,72150776,1),
	(08156349351,'Ana Maria Braga','2022-01-02','2002-04-09',61982749148,'ana@gmail.com',1250.00,72150736,1),
	(08156349491,'Maria da Silva','2022-01-03','2002-04-08',61982749149,'maria@gmail.com',1250.00,72150726,1),
	(08156349774,'Rogério Castro','2022-01-04','2002-04-07',61982749150,'rogerio@gmail.com',1250.00,72150716,2),
	(08156349898,'Marcelo Guima','2022-01-05','2002-04-06',61982749151,'marcelo@gmail.com',1250.00,72150709,2),
	(08156349063,'Ana Beatriz','2022-01-06','2002-04-05',61982749125,'ana@gmail.com',1250.00,72150796,2),
	(08156349333,'Vanessa Silva','2022-01-07','2002-04-04',6198273312,'vanessa@gmail.com',1250.00,72150708,3),
	(08156349444,'Leticia Martins','2022-01-08','2002-04-03',61993183422, 'leticia@gmail.com', 1250.00,72150707,3),
	(08156349999,'Victor Hugo','2022-01-09','2002-04-02',61993187425,'victora@gmail.com', 1250.00,72150706,4),
	(08156349555,'Paulo Vinicius','2022-01-10','2002-04-01',61993183425,'paulo@gmail.com',1250.00,72150705,4);

INSERT INTO PAGAMENTOFUNCIONARIO (cpfFuncionario, valorTotal, dataPagamento) VALUES
	(08156349100, 1250.00, '2023-02-12'),
	(08156349100, 1250.00, '2023-01-12'),
	(08156349100, 1250.00, '2022-12-12'),
	(08156349100, 1374.00, '2022-11-12'),
	(08156349100, 1412.00, '2022-10-12'),
	(08156349063, 1374.00, '2023-02-12'),
	(08156349333, 1374.00, '2023-02-12'),
	(08156349444, 1374.00, '2023-02-12'),
	(08156349999, 1412.00, '2023-02-12'),
	(08156349555, 1374.00, '2023-02-12');



INSERT INTO telefone(cpf_cnpjFornecedor,ddd,numero) VALUES
	(02233588741,061,982749147),
	(02333588741,061,982749148),
	(02233588541,061,982749146),
	(02233588747,061,982749145),
	(02233583741,061,982749144),
	(02277588741,061,982749143),
	(02233589041,061,982749142),
	(02233588742,061,982749141),
	(02233588743,061,982749148),
	(32156489765,061,982749149);

INSERT INTO pontoDeControle(data,cpfFuncionario,horaEntrada,horaSaida) VALUES
	('2023-02-03',08156349100,'15:01:01','22:10:00'),
	('2023-02-04',08156349351,'15:02:01','22:11:00'),
	('2023-02-05',08156349491,'15:03:01','22:12:00'),
	('2023-02-06',08156349774,'15:04:01','22:13:00'),
	('2023-02-07',08156349898,'15:05:01','22:14:00'),
	('2023-02-08',08156349063,'15:06:01','22:15:00'),
	('2023-02-09',08156349333,'15:07:01','22:16:00'),
	('2023-02-10',08156349444,'15:08:01','22:17:00'),
	('2023-02-11',08156349999,'15:09:01','22:18:00'),
	('2023-02-12',08156349555,'15:10:01','22:19:00');


INSERT INTO ferias(cpfFuncionario,dataInicio,dataFim) VALUES
	(08156349100,'2022-02-02','2022-03-03'),
	(08156349351,'2022-02-02','2022-03-03'),
	(08156349491,'2022-02-02','2022-03-03'),
	(08156349774,'2022-02-02','2022-03-03'),
	(08156349898,'2022-02-02','2022-03-03'),
	(08156349063,'2022-02-02','2022-03-03'),
	(08156349333,'2022-02-02','2022-03-03'),
	(08156349444,'2022-02-02','2022-03-03'),
	(08156349999,'2022-02-02','2022-03-03'),
	(08156349555,'2022-02-02','2022-03-03');


INSERT INTO contem(codOpcaoCardapio,codVenda,quantidade,valorVenda) VALUES
	(1,1,3,15.00),
	(2,1,4,30.00),
	(3,1,3,45.00),
	(4,1,3,15.00),
	(5,1,3,75.00),
	(6,1,3,35.00),
	(7,1,3,95.00),
	(8,1,3,65.00),
	(9,1,3,55.00),
	(10,1,3,10.00);

INSERT INTO fornece(codProduto,cpf_cnpjFornecedor) VALUES
	(1,02233588741),
	(2,02333588741),
	(3,02233588541),
	(4,02233588747),
	(5,02233583741),
	(6,02277588741),
	(7,02233589041),
	(8,02233588742),
	(9,02233588743),
	(10,32156489765);


