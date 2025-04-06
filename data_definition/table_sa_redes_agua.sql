CREATE TABLE sistema_agua.redes_agua (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_uso tipo_rede_agua,
    material tipo_material,
    diametro integer,
    tipo_agua tipo_agua,
    transmissao tipo_sim_nao,
    extensao_digital real GENERATED ALWAYS AS (st_length (geom)) STORED,
    extensao_real real,
    profundidade real,
    localizacao_rede tipo_localizacao_rede,
    tipo_pavimento tipo_pavimento,
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
    BEFORE INSERT ON sistema_agua.redes_agua
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

