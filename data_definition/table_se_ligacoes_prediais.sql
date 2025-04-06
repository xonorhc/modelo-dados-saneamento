CREATE TABLE sistema_esgoto.ligacoes_prediais (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    id_conta varchar(20),
    id_local varchar(50),
    data_instalacao date,
    nome_instalacao varchar(20),
    medidor boolean,
    cliente_critico boolean,
    escoamento_total varchar(20),
    rotacao real,
    ativado boolean,
    funcao_auxiliar tipo_funcao_auxiliar,
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
    BEFORE INSERT ON sistema_esgoto.ligacoes_prediais
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

