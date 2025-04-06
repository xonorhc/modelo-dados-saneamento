CREATE TABLE sistema_esgoto.estruturas (
    geom geometry(polygon, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    data_operacao date,
    nome varchar(20),
    tipo_estrutura tipo_estrutura,
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
    BEFORE INSERT ON sistema_esgoto.estruturas
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

