CREATE DATABASE plataforma_de_consumo;

USE plataforma_de_consumo;

CREATE TABLE Usuario(
    matricula CHAR(12) PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    email VARCHAR(128) NOT NULL,
    hash_senha VARCHAR(128) NOT NULL,
    perfil CHAR(3) CHECK(perfil IN ('ADM', 'TEC')),
    data_cadastro DATE NOT NULL DEFAULT(CURRENT_DATE)
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
    id_dispositivo INTEGER PRIMARY KEY,
    status VARCHAR(13) CHECK(status IN ('funcional', 'em manutencao', 'defeituoso')), 
    marca VARCHAR(64),
    nr_serie VARCHAR(128) NOT NULL,
    modelo VARCHAR(256) NOT NULL,
    capacidade_btu DECIMAL(16, 2),
    tensao_v DECIMAL(16, 6) NOT NULL,
    potencia_w DECIMAL(16, 6) NOT NULL,
    tipo_dispositivo VARCHAR(16) CHECK(tipo_dispositivo IN ('ar-condicionado', 'tomada', 'televisao', 'lampada', 'outro'))
);

CREATE TABLE Manutencao(
    id_manutencao INTEGER PRIMARY KEY,
    descricao_servico VARCHAR(512) NOT NULL,
    tipo VARCHAR(10) CHECK(tipo IN ('preventiva', 'corretiva')),
    data_manutencao DATE,
    custo_reais DECIMAL(16, 2),
    proxima_manutencao BOOLEAN NOT NULL DEFAULT(FALSE),
    matricula_requisitante CHAR(12) NOT NULL,
    id_dispositivo INTEGER NOT NULL,
    FOREIGN KEY (matricula_requisitante) REFERENCES UsuarioTecnico(matricula_usuario),
    FOREIGN KEY (id_dispositivo) REFERENCES Dispositivo(id_dispositivo)
);

CREATE TABLE Sala(
    cod_sala INTEGER PRIMARY KEY,
    area_m2 DECIMAL(16, 3) NOT NULL,
    bloco VARCHAR(64) NOT NULL,
    andar INTEGER NOT NULL CHECK(andar >= 0),
    tipo_ambiente VARCHAR(7) CHECK(tipo_ambiente IN ('aberto', 'fechado')),
    capacidade_pessoas INTEGER
);

CREATE TABLE Alocacao(
    id_dispositivo INTEGER,
    cod_sala INTEGER,
    data_instalacao DATE NOT NULL,
    data_remocao DATE,
    status_alocacao VARCHAR(64),
    FOREIGN KEY (id_dispositivo) REFERENCES Dispositivo(id_dispositivo),
    FOREIGN KEY (cod_sala) REFERENCES Sala(cod_sala),
    PRIMARY KEY (id_dispositivo, cod_sala)
);
