CREATE TABLE sistema_agua.emendas (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_emenda tipo_emenda,
    material tipo_material,
    diametro_entrada integer,
    diametro_saida integer,
    profundidade real,
    rotacao real,
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
    BEFORE INSERT ON sistema_agua.emendas
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

