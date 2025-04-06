CREATE TABLE sistema_agua.hidrometros (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    id_conta varchar(20),
    id_localizacao varchar(50),
    data_instalacao date,
    tipo_medidor tipo_medidor,
    servico_medido tipo_sim_nao,
    tipo_servico tipo_ponto_servico,
    cliente_critico boolean,
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
    BEFORE INSERT ON sistema_agua.hidrometros
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

