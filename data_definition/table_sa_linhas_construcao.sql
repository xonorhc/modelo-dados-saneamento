CREATE TABLE sistema_agua.linhas_construcao (
    geom geometry(linestring, 4326),
    observacoes varchar(254),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.linhas_construcao
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

