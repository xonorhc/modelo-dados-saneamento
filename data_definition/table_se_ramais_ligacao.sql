CREATE TABLE sistema_esgoto.ramais_ligacao (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_ramal tipo_ramal,
    tipo_linha tipo_metodo_revestimento,
    material tipo_material,
    diametro integer,
    distancia real GENERATED ALWAYS AS (st_length (geom)) STORED,
    tipo_agua tipo_agua,
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
    BEFORE INSERT ON sistema_esgoto.ramais_ligacao
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

