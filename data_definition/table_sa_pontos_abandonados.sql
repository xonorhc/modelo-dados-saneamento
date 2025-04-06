CREATE TABLE sistema_agua.pontos_abandonados (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    tipo_ponto varchar(20),
    data_instalacao date,
    data_abandono date,
    material tipo_material,
    diametro integer,
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.pontos_abandonados
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

