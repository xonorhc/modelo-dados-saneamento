CREATE TABLE sistema_agua.bombas (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    nome varchar(20),
    tipo_bomba tipo_bomba,
    diametro_entrada integer,
    diametro_saida integer,
    vazao_nominal real,
    pressao_nominal integer,
    saida_op_maxima real,
    vazao_projetada real,
    elevacao real,
    papel_auxiliar tipo_papael_auxiliar,
    rotacao real,
    ativado boolean,
    funcao_auxiliar tipo_funcao_auxiliar,
    proprietario varchar(50),
    gerenciado varchar(50),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.bombas
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

