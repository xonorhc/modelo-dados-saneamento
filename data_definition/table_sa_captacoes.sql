CREATE TABLE sistema_agua.captacoes (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    nome varchar(20),
    tipo_captacao tipo_captacao,
    profundidade real,
    revestimento tipo_revestimento_poco,
    diametro integer,
    status_captacao tipo_status_captacao,
    instalacao_captacao tipo_instalacao_captacao,
    bomba boolean,
    marca_bomba varchar(50),
    modelo_bomba varchar(20),
    potencia_bomba integer,
    amperagem_bomba integer,
    profundidade_bomba real,
    alt_monometrica_bomba real,
    data_subst_bomba date,
    cavalete boolean,
    material_cavalete tipo_material,
    diametro_cavalete integer,
    medidor_vazao_cavalete boolean,
    medidor_nivel_cavalete boolean,
    eletroduto_inferior boolean,
    eletroduto_superior boolean,
    nivel_estatico real,
    nivel_dinamico real,
    vazao integer,
    rebaixamento real,
    vazao_especifica integer,
    cota_max_manacial real,
    cota_min_manancial real,
    cota_max_tomada real,
    cota_min_tomada real,
    data_execucao date,
    cota_poco real,
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
    BEFORE INSERT ON sistema_agua.captacoes
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

