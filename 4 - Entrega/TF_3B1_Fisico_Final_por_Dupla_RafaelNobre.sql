--------  << TF_3B1_RAFAELNOBRE >>  ----------
--
--                SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 25/01/2023
-- Autor(es) ..............: Rafael de Medeiros Nobre 
--                           Rodrigo Edmar Wright Dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_3B1_RAFAELNOBRE
--
-- 
-- PROJETO => 01 Base de Dados
--         => 23 Tabelas
--
-- ---------------------------------------------------------

CREATE DATABASE IF NOT EXISTS TF_3B1_RAFAELNOBRE;

USE TF_3B1_RAFAELNOBRE;

CREATE TABLE PRODUTO (
    codProduto INT(3) AUTO_INCREMENT NOT NULL,
    nomeProduto VARCHAR(30) NOT NULL,
    validadeEmDias INT(4),

	CONSTRAINT PRODUTO_PK PRIMARY KEY (codProduto)
)ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE ENDERECO (
    cep INT(8) NOT NULL,
    estado VARCHAR(30) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    logradouro VARCHAR(30) NOT NULL,
    
    CONSTRAINT ENDERECO_PK PRIMARY KEY (cep)
)ENGINE = InnoDB;

CREATE TABLE FUNCIONARIO (
    cpfFuncionario BIGINT(11) NOT NULL,
    nomeCompleto VARCHAR(30) NOT NULL,
    dataContratacao DATE NOT NULL,
    dataNascimento DATE NOT NULL,
    telefoneCelular BIGINT(11) NOT NULL,
    email VARCHAR(30),
    salarioFixo DECIMAL(7, 2) NOT NULL,
    cep INT(8) NOT NULL,
    
    CONSTRAINT FUNCIONARIO_PK PRIMARY KEY (cpfFuncionario),
    CONSTRAINT FUNCIONARIO_ENDERECO_FK FOREIGN KEY (cep)
        REFERENCES ENDERECO (cep)
            on update cascade
            on delete restrict
)ENGINE = InnoDB;

CREATE TABLE LOJA (
    codLoja INT(3) AUTO_INCREMENT NOT NULL,
    dataAbertura DATE NOT NULL,
    cep INT(8) NOT NULL,
    cpfFuncionario BIGINT(11) NOT NULL,

    CONSTRAINT LOJA_PK PRIMARY KEY (codLoja),
    CONSTRAINT LOJA_ENDERECO_FK FOREIGN KEY (cep)
        REFERENCES ENDERECO (cep)
            on update cascade
            on delete restrict,
    CONSTRAINT LOJA_FUNCIONARIO_FK FOREIGN KEY (cpfFuncionario)
        REFERENCES FUNCIONARIO (cpfFuncionario)
            on update cascade
            on delete restrict
            
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE ESTOQUE(
    codLoja INT(3) NOT NULL,
    codProduto INT(3) NOT NULL,
    quantidadeAtual INT(4) NOT NULL,
    unidadeMedida VARCHAR(100) NOT NULL,


    CONSTRAINT ESTOQUE_PK PRIMARY KEY(codLoja, codProduto),

    CONSTRAINT ESTOQUE_LOJA_FK FOREIGN KEY (codLoja)
        REFERENCES LOJA (codLoja)
            on update cascade
            on delete restrict,

    CONSTRAINT ESTOQUE_PRODUTO_FK FOREIGN KEY (codProduto)
    REFERENCES PRODUTO (codProduto)
        on update cascade
        on delete restrict
)ENGINE = InnoDB;

CREATE TABLE OPCAOCARDAPIO (
    codOpcaoCardapio INT(3) AUTO_INCREMENT NOT NULL,
    nomeOpcao VARCHAR(30) NOT NULL,
    valorAtual DECIMAL(4,2) NOT NULL,
    descricao VARCHAR(50),
    
    CONSTRAINT OPCAOCARDAPIO_PK PRIMARY KEY (codOpcaoCardapio)
)ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE ATIVIDADE (
    cbo INT(6) NOT NULL,
    nomeAtividade VARCHAR(30) NOT NULL,
    descricao VARCHAR(50) NOT NULL,

    CONSTRAINT ATIVIDADE_PK PRIMARY KEY(cbo)
)ENGINE = InnoDB;

CREATE TABLE FORMAPAGAMENTO (
    idFormaPagamento INT(3) AUTO_INCREMENT NOT NULL,
    formaPagamento VARCHAR(30) NOT NULL,

    CONSTRAINT FORMAPAGAMENTO_PK PRIMARY KEY(idFormaPagamento)
)ENGINE = InnoDB AUTO_INCREMENT=1;

CREATE TABLE TIPOVENDA (
    tipoVenda VARCHAR(30) NOT NULL,
    idTipoVenda INT(3) NOT NULL AUTO_INCREMENT,

    CONSTRAINT TIPOVENDA_PK PRIMARY KEY(idTipoVenda)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE VENDA (
    codVenda INT(3) AUTO_INCREMENT NOT NULL,
    cpfNaNotaCliente BIGINT(11),
    nfc VARCHAR(44) NOT NULL,
    idFormaPagamento INT(3) NOT NULL,
    idTipoVenda INT(3) NOT NULL,
    dataVenda DATE NOT NULL,
    codLoja INT(4) NOT NULL,


    CONSTRAINT VENDA_PK PRIMARY KEY(codVenda),
    CONSTRAINT VENDA_TIPOVENDA_FK FOREIGN KEY (idTipoVenda)
        REFERENCES TIPOVENDA (idTipoVenda)
            on update cascade
            on delete restrict,
    CONSTRAINT VENDA_FORMAPAGAMENTO_FK FOREIGN KEY (idFormaPagamento)
        REFERENCES FORMAPAGAMENTO (idFormaPagamento)
            on update cascade
            on delete restrict,
    CONSTRAINT VENDA_LOJA_FK FOREIGN KEY(codLoja)
        REFERENCES LOJA(codLoja)
            on update cascade
            on delete restrict
)ENGINE = InnoDB AUTO_INCREMENT=1;

CREATE TABLE FORNECEDOR (
    nomeEmpresa VARCHAR(30) NOT NULL,
    email VARCHAR(40),
    cnpjFornecedor BIGINT(14) NOT NULL,
    nomeVendedor VARCHAR(30) NOT NULL,
    cep INT(8) NOT NULL,

    CONSTRAINT FORNECEDOR_PK PRIMARY KEY(cnpjFornecedor),
    CONSTRAINT FORNECEDOR_ENDERECO_FK FOREIGN KEY (cep)
        REFERENCES ENDERECO (cep)
            on update cascade
            on delete restrict
)ENGINE = InnoDB;

CREATE TABLE PAGAMENTOFUNCIONARIO (
    codPagamentoFuncionario INT(3) AUTO_INCREMENT NOT NULL,
    valorTotal DECIMAL(7, 2) NOT NULL,
    dataPagamento DATE NOT NULL,
    cpfFuncionario BIGINT(11) NOT NULL,

    CONSTRAINT PAGAMENTOFUNCIONARIO_PK PRIMARY KEY(codPagamentoFuncionario),
    CONSTRAINT PAGAMENTOFUNCIONARIO_FUNCIONARIO_FK FOREIGN KEY (cpfFuncionario)
        REFERENCES FUNCIONARIO (cpfFuncionario)
            on update cascade
            on delete restrict
)ENGINE = InnoDB AUTO_INCREMENT=1;

CREATE TABLE CLIENTE (
    whatsappCliente BIGINT(11) NOT NULL,
    nomeCliente VARCHAR(30) NOT NULL,

    CONSTRAINT CLIENTE_PK PRIMARY KEY(whatsappCliente)
)ENGINE = InnoDB;


CREATE TABLE PEDIDOFORNECEDOR (
    idPedidoFornecedor INT(3) AUTO_INCREMENT NOT NULL,
    dataPedido DATE NOT NULL,
    qtdProduto INT(6) NOT NULL,
    dataEntrega DATE NOT NULL,
    preco DECIMAL(7, 2) NOT NULL,    
    cnpjFornecedor BIGINT(14) NOT NULL,
    codProduto INT(3) NOT NULL,
    codLoja INT(3) NOT NULL,

    CONSTRAINT PEDIDOFORNECEDOR_PK PRIMARY KEY(idPedidoFornecedor),
    CONSTRAINT PEDIDOFORNECEDOR_FORNECEDOR_FK FOREIGN KEY(cnpjFornecedor)
        REFERENCES FORNECEDOR (cnpjFornecedor)
            on update cascade
            on delete restrict,
    CONSTRAINT PEDIDOFORNECEDOR_ESTOQUE_FK FOREIGN KEY(codLoja, codProduto)
        REFERENCES ESTOQUE (codLoja, codProduto)
            on update cascade
            on delete restrict
)ENGINE = InnoDB AUTO_INCREMENT=1; 

CREATE TABLE ABASTECIMENTO (
    idAbastecimento INT(3) NOT NULL AUTO_INCREMENT,
    qtdProduto INT(6) NOT NULL,
    preco DECIMAL(7, 2) NOT NULL,
    dataAbastecimento DATE NOT NULL,
    codProduto INT(3) NOT NULL,
    codLoja INT(3) NOT NULL,

    CONSTRAINT ABASTECIMENTO_PK PRIMARY KEY(idAbastecimento),
    CONSTRAINT ABASTECIMENTO_ESTOQUE_FK FOREIGN KEY(codLoja, codProduto)
        REFERENCES ESTOQUE (codLoja, codProduto)
            on update cascade
            on delete restrict 
)ENGINE = InnoDB AUTO_INCREMENT=1;

CREATE TABLE TIPOMANUTENCAO (
    tipoManutencao VARCHAR(30) ,
    descricao VARCHAR(50),

    CONSTRAINT TIPOMANUTENCAO_PK PRIMARY KEY(tipoManutencao)
)ENGINE = InnoDB;

CREATE TABLE MANUTENCAO (
    codManutencao INT(3) NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    valor DECIMAL(5,2) NOT NULL,
    codLoja INT(3) NOT NULL,
    tipoManutencao VARCHAR(30) NOT NULL,

    CONSTRAINT MANUTENCAO_PK PRIMARY KEY(codManutencao),
    CONSTRAINT MANUTENCAO_LOJA_FK FOREIGN KEY(codLoja)
        REFERENCES LOJA (codLoja)
            on update cascade
            on delete restrict ,

    CONSTRAINT MANUTENCAO_TIPOMANUTENCAO_FK FOREIGN KEY(tipoManutencao)
        REFERENCES TIPOMANUTENCAO (tipoManutencao)
            on update cascade
            on delete restrict  
)ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE ferias (
    cpfFuncionario BIGINT(11) NOT NULL,
    dataInicio DATE NOT NULL,
    dataFim DATE NOT NULL,

    CONSTRAINT ferias_FUNCRIONARIO_FK FOREIGN KEY(cpfFuncionario)
        REFERENCES FUNCIONARIO(cpfFuncionario)
            on update cascade
            on delete restrict
)ENGINE = InnoDB;

CREATE TABLE telefone (
    cnpjFornecedor BIGINT(14) NOT NULL,
    ddd INT(2) NOT NULL,
    numero INT(9) NOT NULL,

    CONSTRAINT telefone_FORNECEDOR_FK FOREIGN KEY(cnpjFornecedor)
        REFERENCES FORNECEDOR(cnpjFornecedor)
            on update cascade
            on delete restrict
)ENGINE = InnoDB;


CREATE TABLE trabalha (
    cpfFuncionario BIGINT(11) NOT NULL,
    codLoja INT(3) NOT NULL,

    CONSTRAINT trabalha_FUNCIONARIO_FK FOREIGN KEY(cpfFuncionario)
        REFERENCES FUNCIONARIO(cpfFuncionario)
            on update cascade
            on delete restrict,
    CONSTRAINT trabalha_LOJA_FK FOREIGN KEY(codLoja)
        REFERENCES LOJA(codLoja)
            on update cascade
            on delete restrict
)ENGINE = InnoDB;


CREATE TABLE exerce (
    cbo INT(6) NOT NULL,
    cpfFuncionario BIGINT(11) NOT NULL,

    CONSTRAINT exerce_ATIVIDADE_FK FOREIGN KEY(cbo)
        REFERENCES ATIVIDADE(cbo)
            on update cascade
            on delete restrict,
    CONSTRAINT exerce_FUNCIONARIO_FK FOREIGN KEY(cpfFuncionario)    
        REFERENCES FUNCIONARIO(cpfFuncionario)
            on update cascade
            on delete restrict
)ENGINE = InnoDB;


CREATE TABLE contem (
    codOpcaoCardapio INT(3) NOT NULL,
    codVenda INT(3) NOT NULL,
    quantidade INT(3) NOT NULL,
    valorVenda DECIMAL(4,2) NOT NULL,

    CONSTRAINT contem_OPCAOCARDAPIO_FK FOREIGN KEY (codOpcaoCardapio)
        REFERENCES OPCAOCARDAPIO (codOpcaoCardapio)
            on update cascade
            on delete restrict,
    CONSTRAINT contem_VENDA_FK FOREIGN KEY (codVenda)
        REFERENCES VENDA (codVenda)
            on update cascade
            on delete restrict
)ENGINE = InnoDB;

CREATE TABLE fornece (
    codProduto INT(3) NOT NULL,
    cnpjFornecedor BIGINT(14) NOT NULL,

    CONSTRAINT fornece_PRODUTO_FK FOREIGN KEY(codProduto)
        REFERENCES PRODUTO(codProduto)
            on update cascade
            on delete restrict,
    CONSTRAINT fornece_FORNECEDOR_FK FOREIGN KEY(cnpjFornecedor)
        REFERENCES FORNECEDOR(cnpjFornecedor)
            on update cascade
            on delete restrict
)ENGINE = InnoDB;