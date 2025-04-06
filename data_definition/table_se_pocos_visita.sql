CREATE TABLE sistema_esgoto.pocos_visita (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_poco tipo_poco,
    material_parede tipo_material,
    lancamento_galeria tipo_sim_nao,
    condicao_operacao tipo_condicao_operacao,
    cota_nivel real,
    cota_fundo real,
    profundidade_interior real,
    precisao_cota tipo_precisao_cota,
    forma_poco tipo_forma,
    forma_tampao tipo_forma,
    material_tampao tipo_material,
    alinhamento_tampa tipo_alinhamento_tampa,
    cota_tampao real,
    localizacao varchar(254),
    tipo_acesso tipo_acesso,
    condicao_acesso tipo_condicao_operacao,
    diametro_acesso integer,
    tipo_pavimento tipo_pavimento,
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
    BEFORE INSERT ON sistema_esgoto.pocos_visita
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

