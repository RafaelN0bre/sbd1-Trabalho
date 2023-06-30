--------  << USE TF_3B_RAFAELNOBRE >>  ----------
--
--                SCRIPT DE CRIACAO (DDL)
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
-- 
-- PROJETO => 01 Base de Dados
--         => 18 Tabelas
--         => 03 Roles
--         => 03 Usarios
--
-- ---------------------------------------------------------

CREATE DATABASE IF NOT EXISTS TF_3B_RAFAELNOBRE;

USE TF_3B_RAFAELNOBRE;

CREATE TABLE PRODUTO(
    codProduto INT NOT NULL AUTO_INCREMENT,
    nomeProduto VARCHAR(30) NOT NULL,
    
    CONSTRAINT PRODUTO_PK PRIMARY KEY (codProduto)
) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE LOJA (
    codLoja INT NOT NULL AUTO_INCREMENT,
    dataAbertura DATE NOT NULL,
    cep INT(8) NOT NULL,
    cnpjLoja BIGINT UNIQUE NOT NULL,
    cidade VARCHAR(60),
    estado VARCHAR(60),
    bairro VARCHAR(60),
    logradouro VARCHAR(60),

    CONSTRAINT LOJA_PK PRIMARY KEY (codLoja)
) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE OPCAOCARDAPIO (
    codOpcaoCardapio INT NOT NULL AUTO_INCREMENT,
    nomeOpcao VARCHAR(50) NOT NULL,
    valorAtual DECIMAL(4,2) NOT NULL,
    descricao VARCHAR(50),

    CONSTRAINT OPCAOCARDAPIO_PK PRIMARY KEY (codOpcaoCardapio)
) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE FUNCIONARIO (
    cpfFuncionario BIGINT(11) NOT NULL,
    nomeCompleto VARCHAR(30) NOT NULL,
    dataContratacao DATE NOT NULL,
    dataNascimento DATE NOT NULL,
    dataDemissao DATE,
    telefoneCelular BIGINT(11) NOT NULL,
    email VARCHAR(30),
    salarioFixo DECIMAL(7, 2) NOT NULL,
    status ENUM('ativo', 'inativo') NOT NULL,
    cep INT(8) NOT NULL,
    codLoja INT NOT NULL, 
    
    CONSTRAINT FUNCIONARIO_PK PRIMARY KEY (cpfFuncionario),
    CONSTRAINT FUNCIONARIO_LOJA_FK FOREIGN KEY (codLoja) REFERENCES LOJA (codLoja) ON DELETE RESTRICT ON UPDATE RESTRICT
) Engine = InnoDB;

CREATE TABLE VENDA (
    codVenda INT NOT NULL AUTO_INCREMENT,
    cpfNaNotaCliente BIGINT,
    nfc_e DECIMAL(44,0) NOT NULL,
    tipoVenda ENUM('retirada', 'delivery', 'presencial') NOT NULL,
    dataVenda DATE NOT NULL,
    codLoja INT NOT NULL,
    formaPagamento ENUM('dinheiro', 'debito', 'credito', 'pix') NOT NULL,
    
    CONSTRAINT VENDA_PK PRIMARY KEY (codVenda),
    CONSTRAINT VENDA_LOJA_FK FOREIGN KEY (codLoja) REFERENCES LOJA (codLoja) ON DELETE RESTRICT ON UPDATE RESTRICT
) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE FORNECEDOR (
    nomeFornecedor VARCHAR(30) NOT NULL,
    email VARCHAR(40),
    cpf_cnpjFornecedor BIGINT(14) NOT NULL,

    CONSTRAINT FORNECEDOR_PK PRIMARY KEY(cpf_cnpjFornecedor)
) Engine = InnoDB;

CREATE TABLE PAGAMENTOFUNCIONARIO (
    codPagamentoFuncionario INT AUTO_INCREMENT,
    valorTotal DECIMAL(7, 2) NOT NULL,
    dataPagamento DATE NOT NULL,
    cpfFuncionario BIGINT(11) NOT NULL,

    CONSTRAINT PAGAMENTOFUNCIONARIO_PK PRIMARY KEY (codPagamentoFuncionario),
    CONSTRAINT PAGAMENTOFUNCIONARIO_FUNCIONARIO_FK FOREIGN KEY (cpfFuncionario) REFERENCES FUNCIONARIO (cpfFuncionario) ON DELETE RESTRICT ON UPDATE RESTRICT
) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE ESTOQUE (
    quantidadeAtual INT(4) NOT NULL,
    unidadeMedida VARCHAR(100) NOT NULL,
    codProduto INT NOT NULL,
    codLoja INT NOT NULL,

    CONSTRAINT ESTOQUE_PK PRIMARY KEY(codLoja, codProduto),
    CONSTRAINT ESTOQUE_PRODUTO_FK FOREIGN KEY (codProduto)
        REFERENCES PRODUTO (codProduto)
            ON DELETE RESTRICT
            ON UPDATE RESTRICT,
    CONSTRAINT ESTOQUE_LOJA_FK FOREIGN KEY (codLoja) 
        REFERENCES LOJA (codLoja)
            ON DELETE RESTRICT
            ON UPDATE RESTRICT 
) Engine = InnoDB;

CREATE TABLE PEDIDOFORNECEDOR (
    idPedidoFornecedor INT NOT NULL AUTO_INCREMENT,
    dataPedido DATE NOT NULL,
    qtdProduto INT(6) NOT NULL,
    dataEntrega DATE NOT NULL,
    preco DECIMAL(7, 2) NOT NULL,
    cpf_cnpjFornecedor BIGINT(14) NOT NULL,
    codProduto INT NOT NULL,
    codLoja INT NOT NULL,
    
    CONSTRAINT PEDIDOFORNECEDOR_PK PRIMARY KEY(idPedidoFornecedor),
    CONSTRAINT PEDIDOFORNECEDOR_FORNECEDOR_FK FOREIGN KEY(cpf_cnpjFornecedor)
        REFERENCES FORNECEDOR (cpf_cnpjFornecedor)
            on update restrict
            on delete restrict,
    CONSTRAINT PEDIDOFORNECEDOR_ESTOQUE_FK FOREIGN KEY(codLoja, codProduto)
        REFERENCES ESTOQUE (codLoja, codProduto)
            on update restrict
            on delete restrict
) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE ABASTECIMENTO (
    idAbastecimento INT NOT NULL AUTO_INCREMENT,
    qtdProduto INT(6) NOT NULL,
    preco DECIMAL(7, 2) NOT NULL,
    dataAbastecimento DATE NOT NULL,
    codProduto INT NOT NULL,
    codLoja INT NOT NULL,

    CONSTRAINT ABASTECIMENTO_PK PRIMARY KEY(idAbastecimento),
    CONSTRAINT ABASTECIMENTO_ESTOQUE_FK FOREIGN KEY(codLoja, codProduto)
        REFERENCES ESTOQUE (codLoja, codProduto) on update restrict
            on delete restrict 
) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE TIPOMANUTENCAO (
    tipoManutencao VARCHAR(30) NOT NULL,
    descricao VARCHAR(50),

    CONSTRAINT TIPOMANUTENCAO_PK PRIMARY KEY(tipoManutencao)
) Engine = InnoDB;

CREATE TABLE MANUTENCAO (
    codManutencao INT NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    valor DECIMAL(5,2) NOT NULL,
    codLoja INT NOT NULL,
    tipoManutencao VARCHAR(30) NOT NULL,

    CONSTRAINT MANUTENCAO_PK PRIMARY KEY(codManutencao),
    CONSTRAINT MANUTENCAO_LOJA_FK FOREIGN KEY (codLoja) REFERENCES LOJA (codLoja) ON DELETE RESTRICT ON UPDATE RESTRICT
) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE ferias (
    cpfFuncionario BIGINT(14) NOT NULL,
    dataInicio DATE,
    dataFim DATE,

    CONSTRAINT ferias_FUNCIONARIO_FK FOREIGN KEY (cpfFuncionario) REFERENCES FUNCIONARIO (cpfFuncionario) ON DELETE RESTRICT ON UPDATE RESTRICT
) Engine = InnoDB;

CREATE TABLE telefone (
    cpf_cnpjFornecedor BIGINT(14) NOT NULL,
    ddd INT(2) NOT NULL,
    numero INT(9) NOT NULL,

    CONSTRAINT telefone_FORNECEDOR_FK FOREIGN KEY (cpf_cnpjFornecedor) REFERENCES FORNECEDOR (cpf_cnpjFornecedor) ON DELETE RESTRICT ON UPDATE RESTRICT
) Engine = InnoDB;

CREATE TABLE contem (
    codOpcaoCardapio INT NOT NULL,
    codVenda INT NOT NULL,
    quantidade INT(3) NOT NULL,
    valorVenda DECIMAL(4,2) NOT NULL,

    CONSTRAINT contem_PK PRIMARY KEY (codOpcaoCardapio),
    CONSTRAINT contem_VENDA_FK FOREIGN KEY (codVenda) REFERENCES VENDA (codVenda) ON DELETE RESTRICT ON UPDATE RESTRICT
) Engine = InnoDB ;

CREATE TABLE fornece (
    codProduto INT,
    cpf_cnpjFornecedor BIGINT(14),

    CONSTRAINT fornece_PRODUTO_FK FOREIGN KEY (codProduto) REFERENCES PRODUTO (codProduto) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT fornece_FORNECEDOR_FK FOREIGN KEY (cpf_cnpjFornecedor) REFERENCES FORNECEDOR (cpf_cnpjFornecedor) ON DELETE RESTRICT ON UPDATE RESTRICT 
) Engine = InnoDB;


CREATE TABLE pontoDeControle (
    idPonto INT NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    cpfFuncionario BIGINT(11) NOT NULL,
    horaEntrada TIME,
    horaSaida TIME,

    CONSTRAINT pontoDeControle_PK PRIMARY KEY(idPonto),
    CONSTRAINT pontoDeControle_UK UNIQUE (data, cpfFuncionario),
    CONSTRAINT pontoDeControle_FUNCIONARIO_FK FOREIGN KEY (cpfFuncionario) 
        REFERENCES FUNCIONARIO (cpfFuncionario)
            ON DELETE RESTRICT
            ON UPDATE RESTRICT
) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE gerencia(
    codLoja INT NOT NULL,
    cpfFuncionario BIGINT(11) NOT NULL,

    CONSTRAINT gerencia_UK UNIQUE(cpfFuncionario),
    CONSTRAINT gerencia_LOJA_FK FOREIGN KEY(codLoja)
        REFERENCES LOJA(codLoja)
            ON DELETE RESTRICT
            ON UPDATE RESTRICT,
    CONSTRAINT gerencia_FUNCIONARIO_FK FOREIGN KEY(cpfFuncionario)
        REFERENCES FUNCIONARIO(cpfFuncionario)
            ON DELETE RESTRICT
            ON UPDATE RESTRICT
) Engine = InnoDB;