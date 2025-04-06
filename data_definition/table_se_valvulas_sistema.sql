CREATE TABLE sistema_esgoto.valvulas_sistema (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_valvula_sistema tipo_sistema_valvula,
    diametro integer,
    valvula_desvio boolean,
    fecha_sentido_horario boolean,
    abre_normalmente boolean,
    qtd_voltas_fechar integer,
    posicao_atual tipo_posicao_atual,
    operavel boolean,
    rotacao real,
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
    BEFORE INSERT ON sistema_esgoto.valvulas_sistema
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

