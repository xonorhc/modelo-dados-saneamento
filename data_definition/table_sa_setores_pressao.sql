CREATE TABLE sistema_agua.setores_pressao (
    geom geometry(polygon, 4326),
    id_setor serial PRIMARY KEY,
    nome_setor varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.setores_pressao
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

