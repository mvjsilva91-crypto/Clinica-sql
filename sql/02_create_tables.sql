CREATE TABLE Ambulatorio (
    nroa INT PRIMARY KEY,
    andar NUMERIC(3) NOT NULL,
    capacidade SMALLINT
);

CREATE TABLE Medico (
    codm INT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    idade SMALLINT NOT NULL,
    especialidade CHAR(20),
    CPF CHAR(11) UNIQUE,
    cidade VARCHAR(30),
    nroa INT,
    FOREIGN KEY (nroa) REFERENCES Ambulatorio(nroa)
);

CREATE TABLE Paciente (
    codp INT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    idade SMALLINT NOT NULL,
    cidade VARCHAR(30),
    CPF CHAR(11) UNIQUE,
    doenca VARCHAR(40) NOT NULL
);

CREATE TABLE Funcionario (
    codf INT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    idade SMALLINT,
    cidade VARCHAR(30),
    salario NUMERIC(10),
    CPF CHAR(11) UNIQUE
);

CREATE TABLE Consulta (
    codm INT,
    codp INT,
    data_cons DATE,
    hora TIME,
    PRIMARY KEY (codm, codp, data_cons, hora),
    FOREIGN KEY (codm) REFERENCES Medico(codm),
    FOREIGN KEY (codp) REFERENCES Paciente(codp)
);
