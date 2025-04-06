CREATE TABLE sistema_esgoto.revestimentos (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    diametro integer,
    material tipo_material,
    comprimento_gravado real,
    tipo_revestimento tipo_metodo_revestimento,
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
    BEFORE INSERT ON sistema_esgoto.revestimentos
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

