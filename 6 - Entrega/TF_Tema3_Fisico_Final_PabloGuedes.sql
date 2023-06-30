--------  <<TF_Tema3_PabloGuedes >>  ----------
--
--                SCRIPT DE CRIACAO (DDL)
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

CREATE DATABASE IF NOT EXISTS TF_Tema3_PabloGuedes;

USE TF_Tema3_PabloGuedes;

CREATE TABLE
    TELEFONE (
        idTelefone INT NOT NULL AUTO_INCREMENT,
        ddd INT(2) NOT NULL,
        numeroTelefone INT(9) NOT NULL,

        CONSTRAINT TELEFONE_PK PRIMARY KEY (idTelefone)
    ) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE
    ENDERECO(
        idEndereco INT NOT NULL AUTO_INCREMENT,
        cep INT(8) NOT NULL,
        numero VARCHAR(5) NOT NULL,
        bairro VARCHAR(50) NOT NULL,
        estado VARCHAR(2) NOT NULL,
        cidade VARCHAR(30) NOT NULL,
        logradouro VARCHAR(50),
        complemento VARCHAR(50),

        CONSTRAINT ENDERECO_PK PRIMARY KEY (idEndereco)
    ) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE
    PRODUTO(
        idProduto INT NOT NULL AUTO_INCREMENT,
        nomeProduto VARCHAR(30) NOT NULL,
        descricaoProduto VARCHAR(60),
        valorUnitarioAtual DECIMAL(5, 2) NOT NULL,

        CONSTRAINT PRODUTO_PK PRIMARY KEY (idProduto),
        CONSTRAINT PRODUTO_CK CHECK (valorUnitarioAtual >= 0)
    ) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE
    LOJA (
        cnpjLoja BIGINT(14) NOT NULL,
        nomeLoja VARCHAR(40) NOT NULL,
        dataAbertura DATE NOT NULL,
        idEndereco INT NOT NULL,
        idTelefone INT NOT NULL,

        CONSTRAINT LOJA_PK PRIMARY KEY (cnpjLoja),
        CONSTRAINT LOJA_ENDERECO_FK FOREIGN KEY (idEndereco) REFERENCES ENDERECO (idEndereco)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT LOJA_TELEFONE_FK FOREIGN KEY (idTelefone) REFERENCES TELEFONE (idTelefone)
            ON DELETE RESTRICT ON UPDATE RESTRICT
    ) Engine = InnoDB;

CREATE TABLE
    FUNCIONARIO (
        cpfFuncionario BIGINT(11) NOT NULL,
        nomeCompleto VARCHAR(50) NOT NULL,
        dataContratacao DATE NOT NULL,
        status ENUM('ativo', 'inativo') NOT NULL,
        dataDemissao DATE,
        idEndereco INT NOT NULL,
        cnpjLoja BIGINT(14) NOT NULL,
        dataNascimento DATE NOT NULL,
        idTelefone INT NOT NULL,

        CONSTRAINT FUNCIONARIO_PK PRIMARY KEY (cpfFuncionario),
        CONSTRAINT FUNCIONARIO_LOJA_FK FOREIGN KEY (cnpjLoja) REFERENCES LOJA (cnpjLoja)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT FUNCIONARIO_ENDERECO_FK FOREIGN KEY (idEndereco) REFERENCES ENDERECO (idEndereco)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT FUNCIONARIO_TELEFONE_FK FOREIGN KEY (idTelefone) REFERENCES TELEFONE (idTelefone)
            ON DELETE RESTRICT ON UPDATE RESTRICT
    ) Engine = InnoDB;

CREATE TABLE
    VENDA (
        idVenda INT NOT NULL AUTO_INCREMENT,
        cpfNaNota BIGINT(11),
        horaVenda TIME NOT NULL,
        tipoVenda ENUM(
            'retirada',
            'delivery',
            'presencial'
        ) NOT NULL,
        dataVenda DATE NOT NULL,
        notaFiscal DECIMAL(44, 0) NOT NULL,
        formaPagamento ENUM(
            'dinheiro',
            'debito',
            'credito',
            'pix'
        ) NOT NULL,
        cpfFuncionario BIGINT(11) NOT NULL,
        cnpjLoja BIGINT(14) NOT NULL,
        desconto DECIMAL(6, 2),

        CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
        CONSTRAINT VENDA_LOJA_FK FOREIGN KEY (cnpjLoja) REFERENCES LOJA (cnpjLoja)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT VENDA_FUNCIONARIO_FK FOREIGN KEY (cpfFuncionario) REFERENCES FUNCIONARIO (cpfFuncionario)
            ON DELETE RESTRICT ON UPDATE RESTRICT
    ) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE
    FORNECEDOR (
        cnpjFornecedor BIGINT(14) NOT NULL,
        nomeFornecedor VARCHAR(30) NOT NULL,
        idEndereco INT NOT NULL,
        idTelefone INT NOT NULL,
        
        CONSTRAINT FORNECEDOR_PK PRIMARY KEY(cnpjFornecedor),
        CONSTRAINT FORNECEDOR_ENDERECO_FK FOREIGN KEY (idEndereco) REFERENCES ENDERECO (idEndereco)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT FORNECEDOR_TELEFONE_FK FOREIGN KEY (idTelefone) REFERENCES TELEFONE (idTelefone)
            ON DELETE RESTRICT ON UPDATE RESTRICT
    ) Engine = InnoDB;

CREATE TABLE
    PAGAMENTOFUNCIONARIO (
        codPagamentoFuncionario INT AUTO_INCREMENT,
        cpfFuncionario BIGINT(11) NOT NULL,
        valorTotal DECIMAL(6, 2) NOT NULL,
        dataPagamento DATE NOT NULL,

        CONSTRAINT PAGAMENTOFUNCIONARIO_PK PRIMARY KEY (codPagamentoFuncionario),
        CONSTRAINT PAGAMENTOFUNCIONARIO_FUNCIONARIO_FK FOREIGN KEY (cpfFuncionario) REFERENCES FUNCIONARIO (cpfFuncionario)
            ON DELETE RESTRICT ON UPDATE RESTRICT
    ) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE
    TIPOMANUTENCAO (
        idTipoManutencao INT NOT NULL AUTO_INCREMENT,
        tipoManutencao VARCHAR(100) NOT NULL,
        descricao VARCHAR(50),

        CONSTRAINT TIPOMANUTENCAO_PK PRIMARY KEY(idTipoManutencao)
    ) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE
    MANUTENCAO (
        codManutencao INT NOT NULL AUTO_INCREMENT,
        cnpjLoja BIGINT(14) NOT NULL,
        dataManutencao DATE NOT NULL,
        idTipoManutencao INT NOT NULL,
        valorManutencao DECIMAL(7, 2) NOT NULL,

        CONSTRAINT MANUTENCAO_PK PRIMARY KEY(codManutencao),
        CONSTRAINT MANUTENCAO_LOJA_FK FOREIGN KEY (cnpjLoja) REFERENCES LOJA (cnpjLoja)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT MANUTENCAO_TIPOMANUTENCAO_FK FOREIGN KEY (idTipoManutencao) REFERENCES TIPOMANUTENCAO (idTipoManutencao)
            ON DELETE RESTRICT ON UPDATE RESTRICT
    ) Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE
    CONTROLEFERIAS (
        idControle INT NOT NULL AUTO_INCREMENT,
        cpfFuncionario BIGINT(11) NOT NULL,
        dataInicio DATE,
        dataFim DATE,
        
        CONSTRAINT CONTROLEFERIAS_PK PRIMARY KEY (idControle),
        CONSTRAINT CONTROLEFERIAS_FUNCIONARIO_FK FOREIGN KEY (cpfFuncionario) REFERENCES FUNCIONARIO (cpfFuncionario)
            ON DELETE RESTRICT ON UPDATE RESTRICT
    ) Engine = InnoDB AUTO_INCREMENT=1;

CREATE TABLE
    FOLHAPONTO (
        idFolha INT NOT NULL AUTO_INCREMENT,
        cpfFuncionario BIGINT(11) NOT NULL,
        dataFolha DATE NOT NULL,
        horaEntrada TIME NOT NULL,
        horaSaida TIME,

        CONSTRAINT FOLHAPONTO_PK PRIMARY KEY (idFolha),
        CONSTRAINT FOLHAPONTO_FUNCIONARIO_FK FOREIGN KEY (cpfFuncionario) REFERENCES FUNCIONARIO (cpfFuncionario)
            ON DELETE RESTRICT ON UPDATE RESTRICT
    ) Engine = InnoDB;


CREATE TABLE 
    gerencia (
        cnpjLoja BIGINT(14) NOT NULL,
        cpfFuncionario BIGINT(11) NOT NULL,

        CONSTRAINT GERENCIA_LOJA_FK FOREIGN KEY (cnpjLoja) REFERENCES LOJA(cnpjLoja)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT GERENCIA_FUNCIONARIO_FK FOREIGN KEY (cpfFuncionario) REFERENCES FUNCIONARIO(cpfFuncionario)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT GERENCIA_UK UNIQUE KEY (cpfFuncionario)
    )Engine = InnoDB;

CREATE TABLE
    possui (
        idProduto INT NOT NULL,
        idVenda INT NOT NULL,
        quantidade INT(5) NOT NULL,
        valorUnitarioVenda DECIMAL (6,2) NOT NULL,

        CONSTRAINT POSSUI_PRODUTO_FK FOREIGN KEY (idProduto) REFERENCES PRODUTO (idProduto)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT POSSUI_VENDA_FK FOREIGN KEY (idVenda) REFERENCES VENDA (idVenda)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT POSSUI_VALORUNITARIOVENDA_CK CHECK (valorUnitarioVenda > 0),
        CONSTRAINT POSSUI_QUANTIDADE_CK CHECK (quantidade > 0)
    )Engine = InnoDB;

CREATE TABLE 
    INSUMO(
        idInsumo INT NOT NULL AUTO_INCREMENT,
        nomeInsumo VARCHAR(30),

        CONSTRAINT INSUMO_PK PRIMARY KEY (idInsumo)
    )Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE
    ESTOQUE(
        idInsumo INT NOT NULL,
        cnpjLoja BIGINT(14) NOT NULL,
        unidadeMedida VARCHAR(30) NOT NULL,
        quantidadeAtual INT NOT NULL,

        CONSTRAINT ESTOQUE_PK PRIMARY KEY (idInsumo,cnpjLoja),
        CONSTRAINT ESTOQUE_INSUMO_FK FOREIGN KEY (idInsumo) REFERENCES INSUMO (idInsumo)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT ESTOQUE_LOJA_FK FOREIGN KEY (cnpjLoja) REFERENCES LOJA (cnpjLoja)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT ESTOQUE_QUANTIDADEATUAL_CK CHECK (quantidadeAtual >= 0)
    )Engine = InnoDB;

CREATE TABLE
    ABASTECIMENTO(
        idAbastecimento INT NOT NULL AUTO_INCREMENT,
        idInsumo INT NOT NULL,
        cnpjLoja BIGINT(14) NOT NULL,
        qtdInsumo INT NOT NULL,
        precoUnitario DECIMAL(5,2),
        dataAbastecimento DATE NOT NULL,

        CONSTRAINT ABASTECIMENTO_PK PRIMARY KEY (idAbastecimento),
        CONSTRAINT ABASTECIMENTO_ESTOQUE_FK FOREIGN KEY (idInsumo,cnpjLoja) REFERENCES ESTOQUE (idInsumo,cnpjLoja)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT ABASTECIMENTO_QTDINSUMO CHECK (qtdInsumo > 0)

    )ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE 
    PEDIDOFORNECEDOR (
        idPedidoFornecedor INT NOT NULL AUTO_INCREMENT,
        dataPedido DATE NOT NULL,
        qtdInsumo INT(6) NOT NULL,
        dataEntrega DATE,
        precoUnitario DECIMAL(5, 2) NOT NULL,
        cnpjFornecedor BIGINT(14) NOT NULL,
        idInsumo INT NOT NULL,
        cnpjLoja BIGINT(14) NOT NULL,
        
        CONSTRAINT PEDIDOFORNECEDOR_PK PRIMARY KEY(idPedidoFornecedor),
        CONSTRAINT PEDIDOFORNECEDOR_FORNECEDOR_FK FOREIGN KEY(cnpjFornecedor)
            REFERENCES FORNECEDOR (cnpjFornecedor)
                on update restrict
                on delete restrict,
        CONSTRAINT PEDIDOFORNECEDOR_ESTOQUE_FK FOREIGN KEY(cnpjLoja, idInsumo)
            REFERENCES ESTOQUE (cnpjLoja, idInsumo)
                on update restrict
                on delete restrict
) Engine = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE 
    fornece(
        idInsumo INT NOT NULL,
        cnpjFornecedor BIGINT(14) NOT NULL,

        CONSTRAINT FORNECE_INSUMO_FK FOREIGN KEY (idInsumo) REFERENCES INSUMO (idInsumo)
            ON DELETE RESTRICT ON UPDATE RESTRICT,
        CONSTRAINT FORNECE_FORNECEDOR_FK FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor)
            ON DELETE RESTRICT ON UPDATE RESTRICT
    )ENGINE = InnoDB;

