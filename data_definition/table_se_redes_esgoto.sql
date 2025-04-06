CREATE TABLE sistema_esgoto.redes_esgoto (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    tipo_agua tipo_agua,
    tipo_rede_esgoto tipo_rede_esgoto,
    material tipo_material,
    diametro integer,
    escoamento_total real,
    formaprincipal tipo_forma_tubo,
    tipo_linha tipo_metodo_revestimento,
    ano_revestimento date,
    tipo_montante tipo_montante,
    peca_montante varchar(20),
    cota_montante real,
    profundidade_montante real,
    tipo_jusante tipo_jusante,
    peca_jusante varchar(20),
    cota_jusante real,
    profundidade_jusante real,
    extensao_real real,
    extensao_digital real GENERATED ALWAYS AS (st_length (geom)) STORED,
    largura real,
    altura real,
    declive real,
    localizacao_rede tipo_localizacao_rede,
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
    BEFORE INSERT ON sistema_esgoto.redes_esgoto
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

