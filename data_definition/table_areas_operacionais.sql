CREATE TABLE sistema_agua.areas_operacionais (
    geom geometry(polygon, 4326),
    id_area serial PRIMARY KEY,
    nome_area varchar(50),
    tipo_area tipo_area_operacional,
    contato varchar(50),
    descricao varchar(254),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(50),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.areas_operacionais
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

