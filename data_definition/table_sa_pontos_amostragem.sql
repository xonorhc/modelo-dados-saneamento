CREATE TABLE sistema_agua.pontos_amostragem (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    nome varchar(20),
    elevacao real,
    endereco varchar(254),
    data_amostra date,
    valor_amostra real,
    limiar real,
    regra_desinfeccao varchar(50),
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
    BEFORE INSERT ON sistema_agua.pontos_amostragem
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

