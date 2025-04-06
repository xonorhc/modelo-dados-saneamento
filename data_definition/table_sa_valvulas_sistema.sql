CREATE TABLE sistema_agua.valvulas_sistema (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_valvula tipo_sistema_valvula,
    funcao_valvula tipo_funcao_valvula,
    valvula_desvio boolean,
    valvula_hidrante boolean,
    valvula_sistema varchar(20),
    diametro integer,
    acionamento tipo_acionamento,
    status_valvula tipo_status_valvula,
    condicao_operacao tipo_condicao_operacao,
    abre_normalmente boolean,
    fecha_sentido_horario boolean,
    qtd_voltas_fechar real,
    posicao_atual tipo_posicao_atual,
    profundidade real,
    alinhamento_tampa tipo_alinhamento_tampa,
    descarga tipo_descarga_valvula,
    acesso_valvula tipo_acesso_valvula,
    condicao_acesso tipo_condicao_operacao,
    operavel boolean,
    rotacao real,
    tipo_pavimento tipo_pavimento,
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
    BEFORE INSERT ON sistema_agua.valvulas_sistema
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

