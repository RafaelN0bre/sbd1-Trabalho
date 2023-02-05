--------  << TF_TEMA3_ACAI >>  ----------
--
--                SCRIPT POPULA (DML)
--
-- Data Criacao ...........: 25/01/2023
-- Autor(es) ..............: Rafael de Medeiros Nobre 
--                           Rodrigo Edmar Wright Dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_TEMA3_ACAI
--
-- Ultimas Alteracoes
-- 
-- PROJETO => 01 Base de Dados
--         => 23 Tabelas
--
-- ---------------------------------------------------------

USE TF_TEMA3_ACAI;

INSERT INTO PRODUTO(nomeProduto, validadeEmDias, quantidadeAtual)
    VALUES
        ('Margarina', 30, 3),
        ('Orégano', 60, 5),
        ('Queijo', 15, 3),
        ('Frango', 20, 5),
        ('Farinha de Trigo', 30, 3),
        ('Fermento', 10, 2),
        ('Farinha panco', 30, 5),
        ('Farinha de rosca', 40, 5),
        ('Xarope de guaraná', 20, 10),
        ('Açaí puro', 30, 50),
        ('Banana', 10, 10),
        ('Granola', 30, 10),
        ('Leite em pó', 20, 5),
        ('Leite condensado', 20, 10),
        ('Aveia', 20, 10),
        ('Óleo', 10, 5),
        ('Carne moída', 10, 10),
        ('Catupiry', 10, 10),
        ('Amendoim', 15, 10);
        


INSERT INTO ENDERECO (cep, estado, cidade, bairro, logradouro)
    VALUES
        (72005755, 'Distrito Federal', 'Vicente Pires', 'St.Hab. Vicente Pires', 'Rua 3'),
        (71936970, 'Distrito Federal', 'AguasClaras', 'Águas Claras Shopping' ,'Avenida das Araucárias'),
        (72015015, 'Distrito Federal', 'Taguatinga', 'Taguatinga Sul', 'Quadra CSA 1'),
        (03527000, 'São Paulo', 'Vila Califórnia', 'Av. Aricanduva', 'Rua Solimões QA2'),
        (72035506, 'Distrito Federal', 'Taguatinga', 'Taguatinga Sul', 'CSG 06'),
        (71200100, 'Distrito Federal', 'Guará', 'Zona Industrial', 'SIA TRECHO 10'),
        (72311109, 'Distrito Federal', 'Samambaia', 'Samambaia Sul', 'Quadra QR 327 Conjunto 9'),
        (72265160, 'Distrito Federal', 'Ceilândia', 'Setor Industria', 'Quadra Quadra 16');


INSERT INTO FUNCIONARIO(cpfFuncionario, nomeCompleto, dataContratacao, dataNascimento, telefoneCelular, email, salarioFixo, cep)
    VALUES
        (83613238055, 'Viola Davis', '2023-05-01', '1965-08-11', 61989728337, 'violadavis@gmail.com', 1500.00, 72005755),
        (15732923543, 'Tom Cruise', '2022-03-23', '1962-07-03', 61969384273, 'topmcruise@gmail.com', 1750.00, 72015015),
        (22397464160, 'Danielle Deadwyler', '2022-11-24', '1982-05-03', 61993961186, NULL, 1500.00, 72035506),
        (05226122888, 'James Cameron', '2023-01-22', '1954-08-16', 61975086781, 'jamescameron@gmail.com', 750.00, 71936970),
        (05226122887, 'Christian Bale', '2022-10-22', '1974-01-30', 61987540887, 'christianbale@gmail.com', 800.00, 72035506);


INSERT INTO LOJA (dataAbertura, cep, cpfFuncionario)
    VALUES
        ('2022-01-25', 71936970, 15732923543),
        ('2012-01-01', 72015015, 22397464160);

INSERT INTO OPCAOCARDAPIO (nomeOpcao, valorAtual, descricao)
    VALUES
        ('Açaí Diferenciado Pequeno', 10.00, '200ml'),
        ('Açaí Diferenciado Médio', 15.00, '300ml'),
        ('Açaí Diferenciado Grande', 20.00, '500ml'),
        ('Tapioca especial', 8.00, NULL),
        ('Coca-Cola', 8.00, '600ml'),
        ('Coxinha', 6.00, 'Coxinha com catupyry'),
        ('Adicionais', 2.00, 'Adicionais ao Açaí');

INSERT INTO ATIVIDADE(cbo, nomeAtividade, descricao)
    VALUES
        (421125, 'Operador de Caixa', 'Dar baixa nas vendas, oferecer cpfNaNota'),
        (514320, 'Faxineira', 'Realizar a limpeza dos estabelecimentos'),
        (252210, 'Contador', 'Realizar os serviços fiscais necessários'),
        (513205, 'Cozinheiro', 'Realizar o preparo das opções do cardápio'),
        (612005, 'Funcionário Polivalente', 'Realizar trabalhos diversos nos estabelecimentos');

INSERT INTO FORMAPAGAMENTO (formaPagamento)
    VALUES 
        ('Débito'),
        ('Crédito'),
        ('Dinheiro'),
        ('Pix'),
        ('Transferência Bancária');

INSERT INTO TIPOVENDA(tipoVenda)
    VALUES
        ('Delivery'),
        ('Venda Direta'),
        ('Encomenda'),
        ('Reserva'),
        ('Venda Indireta');

INSERT INTO VENDA (cpfNaNotaCliente, nfc, idFormaPagamento, idTipoVenda, dataVenda, codLoja)
    VALUES
        (12345678901, '54344345100543443451003175576770631755767706', 1, 1, '2022-01-23', 1),
        (36484025878, '36484025878685922677306859226773068592267730', 2, 2, '2021-05-21', 2),
        (68592267730, '59614341769596143417695961434176959614341769', 3, 4, '2020-03-10', 1),
        (75313657313, '65668761894656687618946566876189465668761894', 1, 4, '2022-04-12', 1),
        (NULL, '06836715379068367153790683671537906836715379', 4, 2, '2021-01-21', 1),
        (33870240377, '33870240377338702403773387024037733870240377', 4, 2, '2020-04-23', 2),
        (19040197814, '19040197814190401978141904019781419040197814', 5, 4, '2020-04-24', 2);
        
        
INSERT INTO FORNECEDOR(cnpjFornecedor, nomeEmpresa, email, nomeVendedor, cep)
    VALUES
        (77181665000173, 'Tubarão do Açaí', 'contato@mayumes.com.br', 'Carlos Roberto Tubarão', 03527000),
        (72758195000144, 'Mayimes Açaí', 'contato@mayumes.com.br', 'Jéssica almeida souza', 71200100),
        (83624193000189, 'Distribuidora Caue', 'atendimento@distribuidoracaue.com.br', 'Cauê Justus', 72311109),
        (91401760000166, 'Distribuidora JaimeFrangos', 'contato@jaimefrangos.com', 'Daniel Roberto Silva', 72005755 ),
        (31237664000100, 'Martinha temperos', NULL, 'Marta Paulina', 72265160);

INSERT INTO PAGAMENTOFUNCIONARIO (valorTotal, dataPagamento, cpfFuncionario)
    VALUES
        (1800.00, '2023-01-25', 15732923543),
        (800.01 , '2022-11-22', 05226122888),
        (1700.00 , '2022-10-10', 15732923543),
        (1550.00 , '2023-01-25', 22397464160),
        (800.00, '2022-11-22', 05226122887),
        (1800.00, '2022-11-22', 15732923543);
        

INSERT INTO CLIENTE(whatsappCliente, nomeCliente)   
    VALUES
        (6128425425, "Lucas Paulo"),
        (6122757168, "Paulo Lucas"),
        (6134662786, "Jennifer Armani"),
        (6134338128, "Victoria Justice"),
        (6127234437, "Paulo Freire");

INSERT INTO PEDIDOFORNECEDOR(dataPedido, qtdProduto, dataEntrega, preco, cnpjFornecedor, codProduto)
    VALUES
        ('2021-01-03', 100, '2021-01-05', 3.50, 77181665000173, 10),
        ('2022-04-23', 20, '2022-04-25', 10.90, 72758195000144, 9),
        ('2021-06-22', 40, '2022-04-25', 15.90, 83624193000189, 1),
        ('2023-01-10', 15, '2022-04-25', 12.90, 91401760000166, 4),
        ('2021-05-12', 30, '2022-04-25', 7.90, 72758195000144, 11);


INSERT INTO ABASTECIMENTO(qtdProduto, preco, dataAbastecimento, codProduto)
    VALUES
        (10, 3.10, '2023-02-02', 11),
        (20, 5.90, '2021-06-23', 15),
        (6, 4.80, '2022-04-01', 9),
        (2, 22.00, '2021-07-11', 1),
        (12, 33.25, '2023-08-30', 6);

INSERT INTO TIPOMANUTENCAO (tipoManutencao, descricao)
    VALUES
        ('Agua', 'Conta de agua'),
        ('Luz', 'Conta de luz'),
        ('Aluguel', 'Conta com alugués'),
        ('Equipamento', 'troca ou conserto de equipamento'),
        ('Acidente', 'Custo com acidentes');


INSERT INTO MANUTENCAO(data, valor, codLoja, tipoManutencao)
    VALUES
        ('2023-01-01', 500.00, 1, 'Agua'),
        ('2022-05-12', 710.99, 1, 'Aluguel'),
        ('2021-03-16', 100.00, 2, 'Aluguel'),
        ('2022-12-15', 323.90, 2, 'Equipamento'),
        ('2022-02-27', 499.00, 1, 'Luz');
        

INSERT INTO ferias (cpfFuncionario, dataInicio, dataFim)
    VALUES
        (22397464160, '2022-12-25', '2023-01-01'),
        (15732923543, '2021-06-25', '2021-07-01'),
        (22397464160, '2022-11-25', '2022-12-25'),
        (05226122887, '2023-12-25', '2024-01-01'),
        (05226122888, '2022-10-25', '2022-11-10');
        

INSERT INTO telefone (cnpjFornecedor, ddd, numero)
    VALUES
        (77181665000173, 11, 960832229),
        (77181665000173, 11, 26514155),
        (72758195000144, 11, 2495-6312),
        (83624193000189, 11, 37966000),
        (91401760000166, 61, 983214466),
        (91401760000166, 61, 962334234),
        (31237664000100, 61, 981234124),
        (31237664000100, 61, 33412313);


INSERT INTO feitoCom(codProduto, codOpcaoCardapio)
    VALUES
        (10, 1),
        (12, 1),
        (10, 2),
        (6, 4),
        (2, 6);

INSERT INTO trabalha(cpfFuncionario, codLoja)
    VALUES
        (83613238055, 1),
        (83613238055, 2),
        (05226122887, 1),
        (22397464160, 1),
        (22397464160, 2);


INSERT INTO exerce(cbo, cpfFuncionario)
    VALUES
        (421125, 83613238055),
        (514320, 83613238055),
        (612005, 15732923543),
        (513205, 05226122887),
        (513205, 05226122888);

INSERT INTO contem(codVenda, codOpcaoCardapio, quantidade, valorVenda)
    VALUES
        (1, 1, 1, 10.00),
        (1, 2, 2, 15.00),
        (1, 3, 1, 20.00),
        (2, 5, 1, 8.00),
        (2, 6, 2, 6.00);

INSERT INTO fornece (codProduto, cnpjFornecedor)
    VALUES
        (14, 77181665000173),
        (12, 72758195000144),
        (12, 83624193000189),
        (6, 91401760000166),
        (10, 31237664000100);

