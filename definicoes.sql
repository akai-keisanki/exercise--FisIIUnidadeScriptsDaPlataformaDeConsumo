CREATE DATABASE plataforma_de_consumo;

USE plataforma_de_consumo;

CREATE TABLE Usuario(
    matricula CHAR(12) PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    email VARCHAR(128) NOT NULL,
    hash_senha VARCHAR(128) NOT NULL,
    perfil CHAR(3) CHECK(perfil IN ('ADM', 'TEC')),
    data_cadastro DATE NOT NULL DEFAULT(CURRENT_DATE),
);

CREATE TABLE UsuarioTecnico(
    matricula_usuario CHAR(12) PRIMARY KEY,
    FOREIGN KEY (matricula_usuario) REFERENCES Usuario(matricula)
);

CREATE TABLE UsuarioAdmin(
    matricula_usuario CHAR(12) PRIMARY KEY,
    FOREIGN KEY (matricula_usuario) REFERENCES Usuario(matricula)
);

CREATE TABLE Dispositivo(
    id_dispositivo INT PRIMARY KEY,
    status VARCHAR(13) CHECK(status IN ('funcional', 'em manutencao', 'defeituoso')), 
    marca VARCHAR(64),
    nr_serie INT NOT NULL,
    modelo VARCHAR(256) NOT NULL,
    capacidade_btu INT,
    tensao_v FLOAT(2) NOT NULL,
    potencia_w FLOAT(2) NOT NULL,
    tipo_dispositivo VARCHAR(16) CHECK(tipo_dispositivo IN ('ar-condicionado', 'tomada', 'televisao', 'lampada', 'outro'))
);

CREATE TABLE Manutencao(
    id_manutencao INT PRIMARY KEY,
    descricao_servico VARCHAR(512) NOT NULL,
    tipo VARCHAR(10) CHECK(tipo IN ('preventiva', 'corretiva'))
    data_manutencao DATE,
    custo_centavos INT,
    proxima_manutencao BOOLEAN NOT NULL DEFAULT(FALSE),
    matricula_requisitante CHAR(12) NOT NULL,
    id_dispositivo INT NOT NULL,
    FOREIGN KEY (matricula_requisitante) REFERENCES UsuarioTecnico(matricula_usuario),
    FOREIGN KEY (id_dispositivo) REFERENCES Dispositivo(id_dispositivo)
);

CREATE TABLE Sala(
    cod_sala INT PRIMARY KEY,
    area_m2 FLOAT(2) NOT NULL,
    bloco VARCHAR(64) NOT NULL,
    andar INT NOT NULL CHECK(andar >= 0),
    tipo_ambiente VARCHAR(7) CHECK(tipo_ambiente IN ('aberto', 'fechado')),
    capacidade_pessoas INT
);

CREATE TABLE Alocacao(
    id_dispositivo INT,
    cod_sala INT,
    data_instalacao DATE NOT NULL,
    data_remocao DATE,
    status_alocacao VARCHAR(64),
    FOREIGN KEY (id_dispositivo) REFERENCES Dispositivo(id_dispotivo),
    FOREIGN KEY (cod_sala) REFERENCES Sala(cod_sala),
    PRIMARY KEY (id_dispositivo, cod_sala)
);
