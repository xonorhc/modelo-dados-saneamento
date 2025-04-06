CREATE TABLE sistema_esgoto.lancamentos (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_lancamento tipo_ponto_lancamento,
    lancamento_medio tipo_sim_nao,
    pico_lancamento varchar(20),
    diametro integer,
    papel_auxiliar tipo_papael_auxiliar,
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
    BEFORE INSERT ON sistema_esgoto.lancamentos
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

