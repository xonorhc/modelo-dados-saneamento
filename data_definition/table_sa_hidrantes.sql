CREATE TABLE sistema_agua.hidrantes (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_hidrante tipo_hidrante,
    vazao integer,
    fabricante varchar(50),
    data_ultimo_servico date,
    rotacao real,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.hidrantes
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

