CREATE TABLE sistema_agua.boosters (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    nome varchar(20),
    diametro_entrada integer,
    diametro_saida integer,
    vazao_nominal real,
    pressao_nominal integer,
    saida_op_maxima real,
    vazao_projetada integer,
    elevacao real,
    papel_auxiliar tipo_papael_auxiliar,
    rotacao real,
    ativado boolean,
    funcao_auxiliar tipo_funcao_auxiliar,
    proprietario varchar(20),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.boosters
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

